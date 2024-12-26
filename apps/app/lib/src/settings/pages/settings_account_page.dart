import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:cores_designsystem/common_assets.dart';
import 'package:cores_designsystem/widgets.dart';
import 'package:cores_domain/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../components/src/themed_settings_list.dart';

class SettingsAccountPage extends HookConsumerWidget with PresentationMixin {
  const SettingsAccountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final authStatus = ref.watch(authStatusProvider);

    return authStatus.when(
      data: (data) => Scaffold(
        appBar: AppBar(
          title: Text(i18n.settings.accountPage.title),
        ),
        body: ThemedSettingsList(
          sections: [
            SettingsSection(
              title: Text(i18n.settings.accountPage.link.head),
              tiles: [
                SettingsTile.switchTile(
                  leading:
                      CommonAssets.images.google.svg(width: 24, height: 24),
                  title: Text(i18n.settings.accountPage.link.google),
                  initialValue: data?.linkedGoogle,
                  onToggle: (value) => _onToggleGoogle(context, ref, value),
                ),
                SettingsTile.switchTile(
                  leading: Icon(
                    MdiIcons.apple,
                    color: colorScheme.onSurface,
                  ),
                  title: Text(i18n.settings.accountPage.link.apple),
                  initialValue: data?.linkedApple,
                  onToggle: (value) => _onToggleApple(context, ref, value),
                ),
              ],
            ),
            SettingsSection(
              title: Text(i18n.settings.accountPage.other.head),
              tiles: [
                // 連携していないユーザーはログアウトしても復帰できないので退会オンリー
                if (data?.isAnonymous != true)
                  SettingsTile.navigation(
                    leading: const Icon(Icons.logout),
                    title: Text(i18n.settings.accountPage.other.logout),
                    onPressed: (context) => _onLogout(context, ref),
                  ),
                SettingsTile.navigation(
                  leading: Icon(Icons.delete, color: colorScheme.error),
                  title: Text(i18n.settings.accountPage.other.leave),
                  onPressed: (context) => _onDeleteAccount(context, ref),
                ),
              ],
            ),
          ],
        ),
      ),
      error: ErrorView.new,
      loading: CircularProgressIndicator.new,
    );
  }

  Future<void> _onToggleGoogle(
    BuildContext context,
    WidgetRef ref,
    bool value,
  ) async =>
      execute(
        action: () {
          final usecase = ref.read(userUsecaseProvider);

          // トグルの状態に合わせてユースケースを変更する
          return value
              ? usecase.signInWithGoogle()
              : usecase.unlinkWithGoogle();
        },
      );

  Future<void> _onToggleApple(
    BuildContext context,
    WidgetRef ref,
    bool value,
  ) =>
      execute(
        action: () {
          final usecase = ref.read(userUsecaseProvider);

          // トグルの状態に合わせてユースケースを変更する
          return value ? usecase.signInWithApple() : usecase.unlinkWithApple();
        },
      );

  Future<void> _onLogout(BuildContext context, WidgetRef ref) => execute(
        action: () => ref.read(userUsecaseProvider).signOut(),
      );

  Future<void> _onDeleteAccount(BuildContext context, WidgetRef ref) async {
    // 削除確認
    final result = await showOkCancelAlertDialog(
      context: context,
      title: i18n.settings.accountPage.leaveConfirmDialog.title,
      message: i18n.settings.accountPage.leaveConfirmDialog.body,
    );
    if (result != OkCancelResult.ok) {
      return;
    }

    // 削除処理
    if (context.mounted) {
      return execute(
        action: () => ref.read(userUsecaseProvider).leave(),
      );
    }
  }
}

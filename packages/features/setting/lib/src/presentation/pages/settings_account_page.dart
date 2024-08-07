import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:cores_core/presentation.dart';
import 'package:cores_designsystem/presentation.dart';
import 'package:features_setting/i18n/strings.g.dart';
import 'package:features_user/application.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:settings_ui/settings_ui.dart';

import '../components/themed_settings_list.dart';

class SettingsAccountPage extends HookConsumerWidget with PresentationMixin {
  const SettingsAccountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final trailing = Theme.of(context).isCupertinoPlatform
        ? const Icon(Icons.arrow_forward_ios_rounded)
        : null;

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
                  leading: Icon(MdiIcons.google),
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
                    trailing: trailing,
                    title: Text(i18n.settings.accountPage.other.logout),
                    onPressed: (context) => _onLogout(context, ref),
                  ),
                SettingsTile.navigation(
                  leading: Icon(Icons.delete, color: colorScheme.error),
                  trailing: trailing,
                  title: Text(i18n.settings.accountPage.other.leave),
                  onPressed: (context) => _onDeleteAccount(context, ref),
                ),
              ],
            ),
          ],
        ),
      ),
      // TODO(yakitama5): Errorパッケージを作成してから
      error: (_, __) => Container(),
      // error: ErrorView.new,
      loading: CircularProgressIndicator.new,
    );
  }

  Future<void> _onToggleGoogle(
    BuildContext context,
    WidgetRef ref,
    bool value,
  ) async {
    // TODO(yakitama5): 未作成
    // return execute(
    //   context,
    //   action: () {
    //     final usecase = ref.read(userUsecaseProvider);
    //     return value ? usecase.signInWithGoogle() : usecase.unlinkWithGoogle();
    //   },
    // );
  }

  Future<void> _onToggleApple(
    BuildContext context,
    WidgetRef ref,
    bool value,
  ) async {
    // TODO(yakitama5): 未作成
    // execute(
    //   context,
    //   action: () {
    //     final usecase = ref.read(userUsecaseProvider);
    //     return value ? usecase.signInWithApple() : usecase.unlinkWithApple();
    //   },
    // );
  }

  Future<void> _onLogout(BuildContext context, WidgetRef ref) => execute(
        context,
        action: () async {},
        // action: () => ref.read(userUsecaseProvider).signOut(),
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
    // TODO(yakitama5): 未作成
    // if (context.mounted) {
    //   return execute(
    //     context,
    //     action: () => ref.read(userUsecaseProvider).delete(),
    //   );
    // }
  }
}

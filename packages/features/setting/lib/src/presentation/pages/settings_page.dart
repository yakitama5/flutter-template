import 'package:cores_designsystem/application.dart';
import 'package:cores_designsystem/strings.dart';
import 'package:features_setting/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:settings_ui/settings_ui.dart';

import '../components/themed_settings_list.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 現在の設定値を取得
    final uiStyle = ref.watch(uiStyleProvider);

    // プラットフォームに応じたアイコンの出し訳
    final trailing = Theme.of(context).platform == TargetPlatform.iOS
        ? const Icon(Icons.arrow_forward_ios_rounded)
        : null;

    // TODO(yakitama5): 各種テーマの状況を取得して表示すること
    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.settings.settingsPage.title),
      ),
      body: ThemedSettingsList(
        sections: [
          SettingsSection(
            title: Text(i18n.settings.settingsPage.account.head),
            tiles: [
              SettingsTile.navigation(
                leading: const Icon(Icons.link),
                trailing: trailing,
                title: Text(i18n.settings.settingsPage.account.account),
                onPressed: _onAccount,
              ),
            ],
          ),
          SettingsSection(
            title: Text(i18n.settings.settingsPage.layout.haed),
            tiles: [
              SettingsTile.navigation(
                leading: const Icon(Icons.style),
                trailing: trailing,
                title: Text(i18n.settings.settingsPage.layout.uiStyle),
                description: Text(
                  i18nDesignsystem.designsystem.uiStyle(context: uiStyle),
                ),
                onPressed: _onUIStyle,
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.light_mode),
                trailing: trailing,
                title: Text(i18n.settings.settingsPage.layout.themeMode),
                description: const Text('システム設定'),
                onPressed: _onThemeMode,
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.color_lens),
                trailing: trailing,
                title: Text(i18n.settings.settingsPage.layout.colorTheme),
                description: const Text('システムテーマ'),
                onPressed: _onColorStyle,
              ),
            ],
          ),
          SettingsSection(
            title: Text(i18n.settings.settingsPage.help.head),
            tiles: [
              SettingsTile.navigation(
                leading: const Icon(Icons.abc),
                trailing: trailing,
                title: Text(i18n.settings.settingsPage.help.howToUse),
                onPressed: _onHowToUse,
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.help),
                trailing: trailing,
                title: Text(i18n.settings.settingsPage.help.contactUs),
                onPressed: _onContactUs,
              ),
              SettingsTile.navigation(
                leading: Icon(MdiIcons.twitter),
                trailing: trailing,
                title: Text(i18n.settings.settingsPage.help.developperTwitter),
                onPressed: _onDevelopperTwitter,
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.lock),
                trailing: trailing,
                title: Text(i18n.settings.settingsPage.help.privacyPollicy),
                onPressed: _onPrivacyPolicy,
              ),
              SettingsTile.navigation(
                trailing: trailing,
                title: Text(i18n.settings.settingsPage.help.licencse),
                onPressed: _onLicense,
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _onAccount(BuildContext context) {}

  void _onUIStyle(BuildContext context) {}

  void _onThemeMode(BuildContext context) {}

  void _onColorStyle(BuildContext context) {}

  void _onHowToUse(BuildContext context) {}

  void _onContactUs(BuildContext context) {}

  Future<void> _onDevelopperTwitter(BuildContext context) async {}

  Future<void> _onPrivacyPolicy(BuildContext context) async {}

  void _onLicense(BuildContext context) {}
}

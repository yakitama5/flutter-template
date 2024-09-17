import 'package:cores_designsystem/application.dart';
import 'package:cores_designsystem/i18n.dart';
import 'package:features_setting/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../components/src/themed_settings_list.dart';
import '../router/navigator/navigator_provider.dart';

abstract interface class SettingsPageNavigator {
  void goAccountPage(BuildContext context);
  void goUiStylePage(BuildContext context);
  void goColorStylePage(BuildContext context);
  void goThemeModePage(BuildContext context);
  void goLicensePage(BuildContext context);
}

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 現在の設定値を取得
    final uiStyle = ref.watch(uiStyleProvider);
    final colorStyle = ref.watch(colorStyleProvider);
    final themeMode = ref.watch(themeModeProvider);

    final navigator = ref.watch(settingsPageNavigatorProvider);

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
                title: Text(i18n.settings.settingsPage.account.account),
                onPressed: navigator.goAccountPage,
              ),
            ],
          ),
          SettingsSection(
            title: Text(i18n.settings.settingsPage.layout.haed),
            tiles: [
              SettingsTile.navigation(
                leading: const Icon(Icons.style),
                title: Text(i18n.settings.settingsPage.layout.uiStyle),
                value: Text(
                  designsystemI18n.designsystem.uiStyle(context: uiStyle),
                ),
                onPressed: navigator.goUiStylePage,
              ),
              SettingsTile.navigation(
                leading: Icon(
                  switch (themeMode) {
                    ThemeMode.system => Icons.settings,
                    ThemeMode.light => Icons.light_mode,
                    ThemeMode.dark => Icons.dark_mode,
                  },
                ),
                title: Text(i18n.settings.settingsPage.layout.themeMode),
                value: Text(
                  designsystemI18n.designsystem.themeMode(context: themeMode),
                ),
                onPressed: navigator.goThemeModePage,
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.color_lens),
                title: Text(i18n.settings.settingsPage.layout.colorTheme),
                value: Text(
                  designsystemI18n.designsystem.colorStyle(context: colorStyle),
                ),
                onPressed: navigator.goColorStylePage,
              ),
            ],
          ),
          SettingsSection(
            title: Text(i18n.settings.settingsPage.help.head),
            tiles: [
              SettingsTile.navigation(
                leading: const Icon(Icons.abc),
                title: Text(i18n.settings.settingsPage.help.howToUse),
                onPressed: _onHowToUse,
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.help),
                title: Text(i18n.settings.settingsPage.help.contactUs),
                onPressed: _onContactUs,
              ),
              SettingsTile.navigation(
                leading: Icon(MdiIcons.twitter),
                title: Text(i18n.settings.settingsPage.help.developperTwitter),
                onPressed: _onDevelopperTwitter,
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.lock),
                title: Text(i18n.settings.settingsPage.help.privacyPollicy),
                onPressed: _onPrivacyPolicy,
              ),
              SettingsTile.navigation(
                title: Text(i18n.settings.settingsPage.help.licencse),
                onPressed: navigator.goLicensePage,
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _onHowToUse(BuildContext context) {}

  void _onContactUs(BuildContext context) {}

  Future<void> _onDevelopperTwitter(BuildContext context) async {}

  Future<void> _onPrivacyPolicy(BuildContext context) async {}
}

import 'package:cores_designsystem/i18n.dart';
import 'package:cores_designsystem/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_app/src/router/routes/base_shell_route.dart';
import 'package:flutter_app/src/router/routes/branches/setting_shell_branch.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../components/src/themed_settings_list.dart';

abstract interface class SettingsPageNavigator {
  void goAccountPage(BuildContext context);
  void goUiStylePage(BuildContext context);
  void goThemeColorPage(BuildContext context);
  void goThemeModePage(BuildContext context);
  void goLicensePage(BuildContext context);
}

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 現在の設定値を取得
    final uiStyle = ref.watch(uiStyleProvider);
    final themeColor = ref.watch(themeColorNotifierProvider);
    final themeMode = ref.watch(themeModeProvider);

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
                onPressed: const SettingsAccountPageRoute().go,
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
                onPressed: const SettingsUiStylePageRoute().go,
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
                onPressed: const SettingsThemeModePageRoute().go,
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.color_lens),
                title: Text(i18n.settings.settingsPage.layout.colorTheme),
                value: Text(
                  designsystemI18n.designsystem.themeColor(context: themeColor),
                ),
                onPressed: const SettingsThemeColorPageRoute().go,
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
                onPressed: const LicensePageRoute().go,
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _onHowToUse(BuildContext context) {
    // TODO(yakitama5): Webページに遷移
  }

  void _onContactUs(BuildContext context) {
    // TODO(yakitama5): Webページに遷移
  }

  Future<void> _onDevelopperTwitter(BuildContext context) async {
    // TODO(yakitama5): Webページに遷移
  }

  Future<void> _onPrivacyPolicy(BuildContext context) async {
    // TODO(yakitama5): Webページに遷移
  }
}

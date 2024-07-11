import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:settings_ui/settings_ui.dart';

import '../components/themed_settings_list.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // プラットフォームに応じたアイコンの出し訳
    final trailing = Theme.of(context).platform == TargetPlatform.iOS
        ? const Icon(Icons.arrow_forward_ios_rounded)
        : null;

    return Scaffold(
      appBar: AppBar(
        title: const Text('設定'),
      ),
      body: ThemedSettingsList(
        sections: [
          SettingsSection(
            title: const Text('アカウント'),
            tiles: [
              SettingsTile.navigation(
                leading: const Icon(Icons.link),
                trailing: trailing,
                title: const Text('アカウント'),
                onPressed: _onAccount,
              ),
            ],
          ),
          SettingsSection(
            title: const Text('レイアウト'),
            tiles: [
              SettingsTile.navigation(
                leading: const Icon(Icons.style),
                trailing: trailing,
                title: const Text('UIスタイル'),
                description: const Text('システム設定'),
                onPressed: _onUIStyle,
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.light_mode),
                trailing: trailing,
                title: const Text('テーマモード'),
                description: const Text('システム設定'),
                onPressed: _onThemeMode,
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.color_lens),
                trailing: trailing,
                title: const Text('カラーテーマ'),
                description: const Text('システムテーマ'),
                onPressed: _onColorStyle,
              ),
            ],
          ),
          SettingsSection(
            title: const Text('ヘルプ'),
            tiles: [
              SettingsTile.navigation(
                leading: const Icon(Icons.abc),
                trailing: trailing,
                title: const Text('使い方'),
                onPressed: _onHowToUse,
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.help),
                trailing: trailing,
                title: const Text('お問い合わせ'),
                onPressed: _onContactUs,
              ),
              SettingsTile.navigation(
                leading: Icon(MdiIcons.twitter),
                trailing: trailing,
                title: const Text('開発者X (旧Twitter)'),
                onPressed: _onDevelopperTwitter,
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.lock),
                trailing: trailing,
                title: const Text('プライバシーマニフェスト'),
                onPressed: _onPrivacyPolicy,
              ),
              SettingsTile.navigation(
                trailing: trailing,
                title: const Text('ライセンス'),
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

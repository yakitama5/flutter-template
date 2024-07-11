// ignore_for_file: type=lint

import 'l10n.dart';

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get settingAppBar => '設定';

  @override
  String get settingThemeSetting => 'テーマ設定';

  @override
  String get settingAbout => 'FlutterMobileTemplate について';

  @override
  String get settingOpenSourceLicenses => 'オープンソースライセンス';

  @override
  String get settingLibrariesWeUse => '使用しているライブラリ';

  @override
  String get settingVersion => 'バージョン';
}

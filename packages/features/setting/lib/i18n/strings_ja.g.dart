///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsJa extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsJa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsJa _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsSettingsJa settings = _TranslationsSettingsJa._(_root);
}

// Path: settings
class _TranslationsSettingsJa extends TranslationsSettingsEn {
	_TranslationsSettingsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSettingsSettingsPageJa settingsPage = _TranslationsSettingsSettingsPageJa._(_root);
	@override late final _TranslationsSettingsAccountPageJa accountPage = _TranslationsSettingsAccountPageJa._(_root);
}

// Path: settings.settingsPage
class _TranslationsSettingsSettingsPageJa extends TranslationsSettingsSettingsPageEn {
	_TranslationsSettingsSettingsPageJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '設定';
	@override late final _TranslationsSettingsSettingsPageAccountJa account = _TranslationsSettingsSettingsPageAccountJa._(_root);
	@override late final _TranslationsSettingsSettingsPageLayoutJa layout = _TranslationsSettingsSettingsPageLayoutJa._(_root);
	@override late final _TranslationsSettingsSettingsPageHelpJa help = _TranslationsSettingsSettingsPageHelpJa._(_root);
}

// Path: settings.accountPage
class _TranslationsSettingsAccountPageJa extends TranslationsSettingsAccountPageEn {
	_TranslationsSettingsAccountPageJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'アカウント';
	@override late final _TranslationsSettingsAccountPageLinkJa link = _TranslationsSettingsAccountPageLinkJa._(_root);
	@override late final _TranslationsSettingsAccountPageOtherJa other = _TranslationsSettingsAccountPageOtherJa._(_root);
	@override late final _TranslationsSettingsAccountPageLeaveConfirmDialogJa leaveConfirmDialog = _TranslationsSettingsAccountPageLeaveConfirmDialogJa._(_root);
}

// Path: settings.settingsPage.account
class _TranslationsSettingsSettingsPageAccountJa extends TranslationsSettingsSettingsPageAccountEn {
	_TranslationsSettingsSettingsPageAccountJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get head => 'アカウント';
	@override String get account => 'アカウント';
}

// Path: settings.settingsPage.layout
class _TranslationsSettingsSettingsPageLayoutJa extends TranslationsSettingsSettingsPageLayoutEn {
	_TranslationsSettingsSettingsPageLayoutJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get haed => 'レイアウト';
	@override String get uiStyle => 'UIスタイル';
	@override String get themeMode => 'テーマモード';
	@override String get colorTheme => 'カラー';
}

// Path: settings.settingsPage.help
class _TranslationsSettingsSettingsPageHelpJa extends TranslationsSettingsSettingsPageHelpEn {
	_TranslationsSettingsSettingsPageHelpJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get head => 'ヘルプ';
	@override String get howToUse => 'つかい方';
	@override String get contactUs => 'お問い合わせ';
	@override String get developperTwitter => '開発者情報';
	@override String get privacyPollicy => 'プライバシーポリシー';
	@override String get licencse => 'ライセンス';
}

// Path: settings.accountPage.link
class _TranslationsSettingsAccountPageLinkJa extends TranslationsSettingsAccountPageLinkEn {
	_TranslationsSettingsAccountPageLinkJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get head => 'アカウント連携';
	@override String get google => 'Google';
	@override String get apple => 'Apple';
}

// Path: settings.accountPage.other
class _TranslationsSettingsAccountPageOtherJa extends TranslationsSettingsAccountPageOtherEn {
	_TranslationsSettingsAccountPageOtherJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get head => 'その他';
	@override String get logout => 'ログアウト';
	@override String get leave => '退会';
}

// Path: settings.accountPage.leaveConfirmDialog
class _TranslationsSettingsAccountPageLeaveConfirmDialogJa extends TranslationsSettingsAccountPageLeaveConfirmDialogEn {
	_TranslationsSettingsAccountPageLeaveConfirmDialogJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '退会しますか？';
	@override String get body => '本当に退会してもよろしいですか？\nこの操作は元に戻すことができません。';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'settings.settingsPage.title': return '設定';
			case 'settings.settingsPage.account.head': return 'アカウント';
			case 'settings.settingsPage.account.account': return 'アカウント';
			case 'settings.settingsPage.layout.haed': return 'レイアウト';
			case 'settings.settingsPage.layout.uiStyle': return 'UIスタイル';
			case 'settings.settingsPage.layout.themeMode': return 'テーマモード';
			case 'settings.settingsPage.layout.colorTheme': return 'カラー';
			case 'settings.settingsPage.help.head': return 'ヘルプ';
			case 'settings.settingsPage.help.howToUse': return 'つかい方';
			case 'settings.settingsPage.help.contactUs': return 'お問い合わせ';
			case 'settings.settingsPage.help.developperTwitter': return '開発者情報';
			case 'settings.settingsPage.help.privacyPollicy': return 'プライバシーポリシー';
			case 'settings.settingsPage.help.licencse': return 'ライセンス';
			case 'settings.accountPage.title': return 'アカウント';
			case 'settings.accountPage.link.head': return 'アカウント連携';
			case 'settings.accountPage.link.google': return 'Google';
			case 'settings.accountPage.link.apple': return 'Apple';
			case 'settings.accountPage.other.head': return 'その他';
			case 'settings.accountPage.other.logout': return 'ログアウト';
			case 'settings.accountPage.other.leave': return '退会';
			case 'settings.accountPage.leaveConfirmDialog.title': return '退会しますか？';
			case 'settings.accountPage.leaveConfirmDialog.body': return '本当に退会してもよろしいですか？\nこの操作は元に戻すことができません。';
			default: return null;
		}
	}
}


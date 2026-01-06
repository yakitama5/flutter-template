///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:domain/goods.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsJa extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsJa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
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

	@override 
	TranslationsJa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsJa(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAppJa app = _TranslationsAppJa._(_root);
	@override late final _TranslationsErrorJa error = _TranslationsErrorJa._(_root);
	@override late final _TranslationsGoodsJa goods = _TranslationsGoodsJa._(_root);
	@override late final _TranslationsSettingsJa settings = _TranslationsSettingsJa._(_root);
	@override late final _TranslationsUserJa user = _TranslationsUserJa._(_root);
}

// Path: app
class _TranslationsAppJa extends TranslationsAppEn {
	_TranslationsAppJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAppBottomNavBarJa bottomNavBar = _TranslationsAppBottomNavBarJa._(_root);
	@override late final _TranslationsAppHomePageJa homePage = _TranslationsAppHomePageJa._(_root);
}

// Path: error
class _TranslationsErrorJa extends TranslationsErrorEn {
	_TranslationsErrorJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsErrorErrorPageJa errorPage = _TranslationsErrorErrorPageJa._(_root);
	@override late final _TranslationsErrorMessageJa message = _TranslationsErrorMessageJa._(_root);
}

// Path: goods
class _TranslationsGoodsJa extends TranslationsGoodsEn {
	_TranslationsGoodsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsGoodsGoodsPageJa goodsPage = _TranslationsGoodsGoodsPageJa._(_root);
	@override String goodsSortKey({required GoodsSortKey context}) {
		switch (context) {
			case GoodsSortKey.createdAt:
				return '作成日時';
			case GoodsSortKey.name:
				return '商品名';
			case GoodsSortKey.price:
				return '価格';
		}
	}
}

// Path: settings
class _TranslationsSettingsJa extends TranslationsSettingsEn {
	_TranslationsSettingsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSettingsSettingsPageJa settingsPage = _TranslationsSettingsSettingsPageJa._(_root);
	@override late final _TranslationsSettingsAccountPageJa accountPage = _TranslationsSettingsAccountPageJa._(_root);
}

// Path: user
class _TranslationsUserJa extends TranslationsUserEn {
	_TranslationsUserJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsUserUserPageJa userPage = _TranslationsUserUserPageJa._(_root);
	@override late final _TranslationsUserOnboardPageJa onboardPage = _TranslationsUserOnboardPageJa._(_root);
}

// Path: app.bottomNavBar
class _TranslationsAppBottomNavBarJa extends TranslationsAppBottomNavBarEn {
	_TranslationsAppBottomNavBarJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get home => 'ホーム';
	@override String get search => '探す';
	@override String get settings => '設定';
}

// Path: app.homePage
class _TranslationsAppHomePageJa extends TranslationsAppHomePageEn {
	_TranslationsAppHomePageJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ホーム';
}

// Path: error.errorPage
class _TranslationsErrorErrorPageJa extends TranslationsErrorErrorPageEn {
	_TranslationsErrorErrorPageJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'エラー';
}

// Path: error.message
class _TranslationsErrorMessageJa extends TranslationsErrorMessageEn {
	_TranslationsErrorMessageJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsErrorMessageImpossibleOperationJa impossibleOperation = _TranslationsErrorMessageImpossibleOperationJa._(_root);
}

// Path: goods.goodsPage
class _TranslationsGoodsGoodsPageJa extends TranslationsGoodsGoodsPageEn {
	_TranslationsGoodsGoodsPageJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '商品一覧';
	@override String get layout => '表示形式';
	@override String price({required num price}) => '${NumberFormat.simpleCurrency(locale: 'ja').format(price)}';
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

// Path: user.userPage
class _TranslationsUserUserPageJa extends TranslationsUserUserPageEn {
	_TranslationsUserUserPageJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'タイトル';
}

// Path: user.onboardPage
class _TranslationsUserOnboardPageJa extends TranslationsUserOnboardPageEn {
	_TranslationsUserOnboardPageJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get start => 'はじめる';
	@override String get startCaption => 'はじめての方はこちら';
	@override String get signInWithGoogle => 'Googleアカウントでログイン';
	@override String get signInWithApple => 'Appleアカウントでログイン';
}

// Path: error.message.impossibleOperation
class _TranslationsErrorMessageImpossibleOperationJa extends TranslationsErrorMessageImpossibleOperationEn {
	_TranslationsErrorMessageImpossibleOperationJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get notAuth => '認証済でないため操作が許可されていません';
	@override String get notLinked => 'アカウントが連携されていないため解除出来ません';
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

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'app.bottomNavBar.home' => 'ホーム',
			'app.bottomNavBar.search' => '探す',
			'app.bottomNavBar.settings' => '設定',
			'app.homePage.title' => 'ホーム',
			'error.errorPage.title' => 'エラー',
			'error.message.impossibleOperation.notAuth' => '認証済でないため操作が許可されていません',
			'error.message.impossibleOperation.notLinked' => 'アカウントが連携されていないため解除出来ません',
			'goods.goodsPage.title' => '商品一覧',
			'goods.goodsPage.layout' => '表示形式',
			'goods.goodsPage.price' => ({required num price}) => '${NumberFormat.simpleCurrency(locale: 'ja').format(price)}',
			'goods.goodsSortKey' => ({required GoodsSortKey context}) { switch (context) { case GoodsSortKey.createdAt: return '作成日時'; case GoodsSortKey.name: return '商品名'; case GoodsSortKey.price: return '価格'; } }, 
			'settings.settingsPage.title' => '設定',
			'settings.settingsPage.account.head' => 'アカウント',
			'settings.settingsPage.account.account' => 'アカウント',
			'settings.settingsPage.layout.haed' => 'レイアウト',
			'settings.settingsPage.layout.uiStyle' => 'UIスタイル',
			'settings.settingsPage.layout.themeMode' => 'テーマモード',
			'settings.settingsPage.layout.colorTheme' => 'カラー',
			'settings.settingsPage.help.head' => 'ヘルプ',
			'settings.settingsPage.help.howToUse' => 'つかい方',
			'settings.settingsPage.help.contactUs' => 'お問い合わせ',
			'settings.settingsPage.help.developperTwitter' => '開発者情報',
			'settings.settingsPage.help.privacyPollicy' => 'プライバシーポリシー',
			'settings.settingsPage.help.licencse' => 'ライセンス',
			'settings.accountPage.title' => 'アカウント',
			'settings.accountPage.link.head' => 'アカウント連携',
			'settings.accountPage.link.google' => 'Google',
			'settings.accountPage.link.apple' => 'Apple',
			'settings.accountPage.other.head' => 'その他',
			'settings.accountPage.other.logout' => 'ログアウト',
			'settings.accountPage.other.leave' => '退会',
			'settings.accountPage.leaveConfirmDialog.title' => '退会しますか？',
			'settings.accountPage.leaveConfirmDialog.body' => '本当に退会してもよろしいですか？\nこの操作は元に戻すことができません。',
			'user.userPage.title' => 'タイトル',
			'user.onboardPage.start' => 'はじめる',
			'user.onboardPage.startCaption' => 'はじめての方はこちら',
			'user.onboardPage.signInWithGoogle' => 'Googleアカウントでログイン',
			'user.onboardPage.signInWithApple' => 'Appleアカウントでログイン',
			_ => null,
		};
	}
}

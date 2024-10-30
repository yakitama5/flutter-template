/// Generated file. Do not edit.
///
/// Original: assets/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 44 (22 per locale)
///
/// Built on 2024-10-30 at 07:52 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build),
	ja(languageCode: 'ja', build: _StringsJa.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of i18n).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = i18n.someKey.anotherKey;
/// String b = i18n['someKey.anotherKey']; // Only for edge cases!
Translations get i18n => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final i18n = Translations.of(context); // Get i18n variable.
/// String a = i18n.someKey.anotherKey; // Use i18n variable.
/// String b = i18n['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.i18n.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get i18n => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final i18n = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final _StringsSettingsEn settings = _StringsSettingsEn._(_root);
}

// Path: settings
class _StringsSettingsEn {
	_StringsSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsSettingsSettingsPageEn settingsPage = _StringsSettingsSettingsPageEn._(_root);
	late final _StringsSettingsAccountPageEn accountPage = _StringsSettingsAccountPageEn._(_root);
}

// Path: settings.settingsPage
class _StringsSettingsSettingsPageEn {
	_StringsSettingsSettingsPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Settings';
	late final _StringsSettingsSettingsPageAccountEn account = _StringsSettingsSettingsPageAccountEn._(_root);
	late final _StringsSettingsSettingsPageLayoutEn layout = _StringsSettingsSettingsPageLayoutEn._(_root);
	late final _StringsSettingsSettingsPageHelpEn help = _StringsSettingsSettingsPageHelpEn._(_root);
}

// Path: settings.accountPage
class _StringsSettingsAccountPageEn {
	_StringsSettingsAccountPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Account';
	late final _StringsSettingsAccountPageLinkEn link = _StringsSettingsAccountPageLinkEn._(_root);
	late final _StringsSettingsAccountPageOtherEn other = _StringsSettingsAccountPageOtherEn._(_root);
	late final _StringsSettingsAccountPageLeaveConfirmDialogEn leaveConfirmDialog = _StringsSettingsAccountPageLeaveConfirmDialogEn._(_root);
}

// Path: settings.settingsPage.account
class _StringsSettingsSettingsPageAccountEn {
	_StringsSettingsSettingsPageAccountEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get head => 'Account';
	String get account => 'Account';
}

// Path: settings.settingsPage.layout
class _StringsSettingsSettingsPageLayoutEn {
	_StringsSettingsSettingsPageLayoutEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get haed => 'Layout';
	String get uiStyle => 'UI Style';
	String get themeMode => 'ThemeMode';
	String get colorTheme => 'Colors';
}

// Path: settings.settingsPage.help
class _StringsSettingsSettingsPageHelpEn {
	_StringsSettingsSettingsPageHelpEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get head => 'Help';
	String get howToUse => 'HowToUse';
	String get contactUs => 'Contact us';
	String get developperTwitter => 'Developper';
	String get privacyPollicy => 'PrivacyPollicy';
	String get licencse => 'License';
}

// Path: settings.accountPage.link
class _StringsSettingsAccountPageLinkEn {
	_StringsSettingsAccountPageLinkEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get head => 'Account link';
	String get google => 'Google';
	String get apple => 'Apple';
}

// Path: settings.accountPage.other
class _StringsSettingsAccountPageOtherEn {
	_StringsSettingsAccountPageOtherEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get head => 'Other';
	String get logout => 'Logout';
	String get leave => 'Leave';
}

// Path: settings.accountPage.leaveConfirmDialog
class _StringsSettingsAccountPageLeaveConfirmDialogEn {
	_StringsSettingsAccountPageLeaveConfirmDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Leave?';
	String get body => 'Are you sure you want to cancel your membership? \\Ўn this operation cannot be undone.';
}

// Path: <root>
class _StringsJa extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsJa.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsJa _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsSettingsJa settings = _StringsSettingsJa._(_root);
}

// Path: settings
class _StringsSettingsJa extends _StringsSettingsEn {
	_StringsSettingsJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override late final _StringsSettingsSettingsPageJa settingsPage = _StringsSettingsSettingsPageJa._(_root);
	@override late final _StringsSettingsAccountPageJa accountPage = _StringsSettingsAccountPageJa._(_root);
}

// Path: settings.settingsPage
class _StringsSettingsSettingsPageJa extends _StringsSettingsSettingsPageEn {
	_StringsSettingsSettingsPageJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '設定';
	@override late final _StringsSettingsSettingsPageAccountJa account = _StringsSettingsSettingsPageAccountJa._(_root);
	@override late final _StringsSettingsSettingsPageLayoutJa layout = _StringsSettingsSettingsPageLayoutJa._(_root);
	@override late final _StringsSettingsSettingsPageHelpJa help = _StringsSettingsSettingsPageHelpJa._(_root);
}

// Path: settings.accountPage
class _StringsSettingsAccountPageJa extends _StringsSettingsAccountPageEn {
	_StringsSettingsAccountPageJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'アカウント';
	@override late final _StringsSettingsAccountPageLinkJa link = _StringsSettingsAccountPageLinkJa._(_root);
	@override late final _StringsSettingsAccountPageOtherJa other = _StringsSettingsAccountPageOtherJa._(_root);
	@override late final _StringsSettingsAccountPageLeaveConfirmDialogJa leaveConfirmDialog = _StringsSettingsAccountPageLeaveConfirmDialogJa._(_root);
}

// Path: settings.settingsPage.account
class _StringsSettingsSettingsPageAccountJa extends _StringsSettingsSettingsPageAccountEn {
	_StringsSettingsSettingsPageAccountJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get head => 'アカウント';
	@override String get account => 'アカウント';
}

// Path: settings.settingsPage.layout
class _StringsSettingsSettingsPageLayoutJa extends _StringsSettingsSettingsPageLayoutEn {
	_StringsSettingsSettingsPageLayoutJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get haed => 'レイアウト';
	@override String get uiStyle => 'UIスタイル';
	@override String get themeMode => 'テーマモード';
	@override String get colorTheme => 'カラー';
}

// Path: settings.settingsPage.help
class _StringsSettingsSettingsPageHelpJa extends _StringsSettingsSettingsPageHelpEn {
	_StringsSettingsSettingsPageHelpJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get head => 'ヘルプ';
	@override String get howToUse => 'つかい方';
	@override String get contactUs => 'お問い合わせ';
	@override String get developperTwitter => '開発者情報';
	@override String get privacyPollicy => 'プライバシーポリシー';
	@override String get licencse => 'ライセンス';
}

// Path: settings.accountPage.link
class _StringsSettingsAccountPageLinkJa extends _StringsSettingsAccountPageLinkEn {
	_StringsSettingsAccountPageLinkJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get head => 'アカウント連携';
	@override String get google => 'Google';
	@override String get apple => 'Apple';
}

// Path: settings.accountPage.other
class _StringsSettingsAccountPageOtherJa extends _StringsSettingsAccountPageOtherEn {
	_StringsSettingsAccountPageOtherJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get head => 'その他';
	@override String get logout => 'ログアウト';
	@override String get leave => '退会';
}

// Path: settings.accountPage.leaveConfirmDialog
class _StringsSettingsAccountPageLeaveConfirmDialogJa extends _StringsSettingsAccountPageLeaveConfirmDialogEn {
	_StringsSettingsAccountPageLeaveConfirmDialogJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '退会しますか？';
	@override String get body => '本当に退会してもよろしいですか？\nこの操作は元に戻すことができません。';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'settings.settingsPage.title': return 'Settings';
			case 'settings.settingsPage.account.head': return 'Account';
			case 'settings.settingsPage.account.account': return 'Account';
			case 'settings.settingsPage.layout.haed': return 'Layout';
			case 'settings.settingsPage.layout.uiStyle': return 'UI Style';
			case 'settings.settingsPage.layout.themeMode': return 'ThemeMode';
			case 'settings.settingsPage.layout.colorTheme': return 'Colors';
			case 'settings.settingsPage.help.head': return 'Help';
			case 'settings.settingsPage.help.howToUse': return 'HowToUse';
			case 'settings.settingsPage.help.contactUs': return 'Contact us';
			case 'settings.settingsPage.help.developperTwitter': return 'Developper';
			case 'settings.settingsPage.help.privacyPollicy': return 'PrivacyPollicy';
			case 'settings.settingsPage.help.licencse': return 'License';
			case 'settings.accountPage.title': return 'Account';
			case 'settings.accountPage.link.head': return 'Account link';
			case 'settings.accountPage.link.google': return 'Google';
			case 'settings.accountPage.link.apple': return 'Apple';
			case 'settings.accountPage.other.head': return 'Other';
			case 'settings.accountPage.other.logout': return 'Logout';
			case 'settings.accountPage.other.leave': return 'Leave';
			case 'settings.accountPage.leaveConfirmDialog.title': return 'Leave?';
			case 'settings.accountPage.leaveConfirmDialog.body': return 'Are you sure you want to cancel your membership? \\Ўn this operation cannot be undone.';
			default: return null;
		}
	}
}

extension on _StringsJa {
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

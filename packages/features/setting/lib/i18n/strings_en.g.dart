///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final i18n = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
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
	late final TranslationsSettingsEn settings = TranslationsSettingsEn.internal(_root);
}

// Path: settings
class TranslationsSettingsEn {
	TranslationsSettingsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsSettingsSettingsPageEn settingsPage = TranslationsSettingsSettingsPageEn.internal(_root);
	late final TranslationsSettingsAccountPageEn accountPage = TranslationsSettingsAccountPageEn.internal(_root);
}

// Path: settings.settingsPage
class TranslationsSettingsSettingsPageEn {
	TranslationsSettingsSettingsPageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Settings';
	late final TranslationsSettingsSettingsPageAccountEn account = TranslationsSettingsSettingsPageAccountEn.internal(_root);
	late final TranslationsSettingsSettingsPageLayoutEn layout = TranslationsSettingsSettingsPageLayoutEn.internal(_root);
	late final TranslationsSettingsSettingsPageHelpEn help = TranslationsSettingsSettingsPageHelpEn.internal(_root);
}

// Path: settings.accountPage
class TranslationsSettingsAccountPageEn {
	TranslationsSettingsAccountPageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Account';
	late final TranslationsSettingsAccountPageLinkEn link = TranslationsSettingsAccountPageLinkEn.internal(_root);
	late final TranslationsSettingsAccountPageOtherEn other = TranslationsSettingsAccountPageOtherEn.internal(_root);
	late final TranslationsSettingsAccountPageLeaveConfirmDialogEn leaveConfirmDialog = TranslationsSettingsAccountPageLeaveConfirmDialogEn.internal(_root);
}

// Path: settings.settingsPage.account
class TranslationsSettingsSettingsPageAccountEn {
	TranslationsSettingsSettingsPageAccountEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get head => 'Account';
	String get account => 'Account';
}

// Path: settings.settingsPage.layout
class TranslationsSettingsSettingsPageLayoutEn {
	TranslationsSettingsSettingsPageLayoutEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get haed => 'Layout';
	String get uiStyle => 'UI Style';
	String get themeMode => 'ThemeMode';
	String get colorTheme => 'Colors';
}

// Path: settings.settingsPage.help
class TranslationsSettingsSettingsPageHelpEn {
	TranslationsSettingsSettingsPageHelpEn.internal(this._root);

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
class TranslationsSettingsAccountPageLinkEn {
	TranslationsSettingsAccountPageLinkEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get head => 'Account link';
	String get google => 'Google';
	String get apple => 'Apple';
}

// Path: settings.accountPage.other
class TranslationsSettingsAccountPageOtherEn {
	TranslationsSettingsAccountPageOtherEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get head => 'Other';
	String get logout => 'Logout';
	String get leave => 'Leave';
}

// Path: settings.accountPage.leaveConfirmDialog
class TranslationsSettingsAccountPageLeaveConfirmDialogEn {
	TranslationsSettingsAccountPageLeaveConfirmDialogEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Leave?';
	String get body => 'Are you sure you want to cancel your membership? \\Ўn this operation cannot be undone.';
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


///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final i18n = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
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

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsAppEn app = TranslationsAppEn.internal(_root);
	late final TranslationsErrorEn error = TranslationsErrorEn.internal(_root);
	late final TranslationsGoodsEn goods = TranslationsGoodsEn.internal(_root);
	late final TranslationsSettingsEn settings = TranslationsSettingsEn.internal(_root);
	late final TranslationsUserEn user = TranslationsUserEn.internal(_root);
}

// Path: app
class TranslationsAppEn {
	TranslationsAppEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsAppBottomNavBarEn bottomNavBar = TranslationsAppBottomNavBarEn.internal(_root);
	late final TranslationsAppHomePageEn homePage = TranslationsAppHomePageEn.internal(_root);
}

// Path: error
class TranslationsErrorEn {
	TranslationsErrorEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsErrorErrorPageEn errorPage = TranslationsErrorErrorPageEn.internal(_root);
	late final TranslationsErrorMessageEn message = TranslationsErrorMessageEn.internal(_root);
}

// Path: goods
class TranslationsGoodsEn {
	TranslationsGoodsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsGoodsGoodsPageEn goodsPage = TranslationsGoodsGoodsPageEn.internal(_root);

	/// en: '(createdAt) {Created at} (name) {Name} (price) {Price}'
	String goodsSortKey({required GoodsSortKey context}) {
		switch (context) {
			case GoodsSortKey.createdAt:
				return 'Created at';
			case GoodsSortKey.name:
				return 'Name';
			case GoodsSortKey.price:
				return 'Price';
		}
	}
}

// Path: settings
class TranslationsSettingsEn {
	TranslationsSettingsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsSettingsSettingsPageEn settingsPage = TranslationsSettingsSettingsPageEn.internal(_root);
	late final TranslationsSettingsAccountPageEn accountPage = TranslationsSettingsAccountPageEn.internal(_root);
}

// Path: user
class TranslationsUserEn {
	TranslationsUserEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsUserUserPageEn userPage = TranslationsUserUserPageEn.internal(_root);
	late final TranslationsUserOnboardPageEn onboardPage = TranslationsUserOnboardPageEn.internal(_root);
}

// Path: app.bottomNavBar
class TranslationsAppBottomNavBarEn {
	TranslationsAppBottomNavBarEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Home'
	String get home => 'Home';

	/// en: 'Search'
	String get search => 'Search';

	/// en: 'Settings'
	String get settings => 'Settings';
}

// Path: app.homePage
class TranslationsAppHomePageEn {
	TranslationsAppHomePageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Home'
	String get title => 'Home';
}

// Path: error.errorPage
class TranslationsErrorErrorPageEn {
	TranslationsErrorErrorPageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Error'
	String get title => 'Error';
}

// Path: error.message
class TranslationsErrorMessageEn {
	TranslationsErrorMessageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsErrorMessageImpossibleOperationEn impossibleOperation = TranslationsErrorMessageImpossibleOperationEn.internal(_root);
}

// Path: goods.goodsPage
class TranslationsGoodsGoodsPageEn {
	TranslationsGoodsGoodsPageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Goods'
	String get title => 'Goods';

	/// en: 'Layout'
	String get layout => 'Layout';

	/// en: '${price: simpleCurrency}'
	String price({required num price}) => '${NumberFormat.simpleCurrency(locale: 'en').format(price)}';
}

// Path: settings.settingsPage
class TranslationsSettingsSettingsPageEn {
	TranslationsSettingsSettingsPageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Settings'
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

	/// en: 'Account'
	String get title => 'Account';

	late final TranslationsSettingsAccountPageLinkEn link = TranslationsSettingsAccountPageLinkEn.internal(_root);
	late final TranslationsSettingsAccountPageOtherEn other = TranslationsSettingsAccountPageOtherEn.internal(_root);
	late final TranslationsSettingsAccountPageLeaveConfirmDialogEn leaveConfirmDialog = TranslationsSettingsAccountPageLeaveConfirmDialogEn.internal(_root);
}

// Path: user.userPage
class TranslationsUserUserPageEn {
	TranslationsUserUserPageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Title'
	String get title => 'Title';
}

// Path: user.onboardPage
class TranslationsUserOnboardPageEn {
	TranslationsUserOnboardPageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Start'
	String get start => 'Start';

	/// en: 'For first-time users, click here'
	String get startCaption => 'For first-time users, click here';

	/// en: 'Sign in with Google'
	String get signInWithGoogle => 'Sign in with Google';

	/// en: 'Sign in with Apple'
	String get signInWithApple => 'Sign in with Apple';
}

// Path: error.message.impossibleOperation
class TranslationsErrorMessageImpossibleOperationEn {
	TranslationsErrorMessageImpossibleOperationEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Not auth'
	String get notAuth => 'Not auth';

	/// en: 'Not linked'
	String get notLinked => 'Not linked';
}

// Path: settings.settingsPage.account
class TranslationsSettingsSettingsPageAccountEn {
	TranslationsSettingsSettingsPageAccountEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Account'
	String get head => 'Account';

	/// en: 'Account'
	String get account => 'Account';
}

// Path: settings.settingsPage.layout
class TranslationsSettingsSettingsPageLayoutEn {
	TranslationsSettingsSettingsPageLayoutEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Layout'
	String get haed => 'Layout';

	/// en: 'UI Style'
	String get uiStyle => 'UI Style';

	/// en: 'ThemeMode'
	String get themeMode => 'ThemeMode';

	/// en: 'Colors'
	String get colorTheme => 'Colors';
}

// Path: settings.settingsPage.help
class TranslationsSettingsSettingsPageHelpEn {
	TranslationsSettingsSettingsPageHelpEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Help'
	String get head => 'Help';

	/// en: 'HowToUse'
	String get howToUse => 'HowToUse';

	/// en: 'Contact us'
	String get contactUs => 'Contact us';

	/// en: 'Developper'
	String get developperTwitter => 'Developper';

	/// en: 'PrivacyPollicy'
	String get privacyPollicy => 'PrivacyPollicy';

	/// en: 'License'
	String get licencse => 'License';
}

// Path: settings.accountPage.link
class TranslationsSettingsAccountPageLinkEn {
	TranslationsSettingsAccountPageLinkEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Account link'
	String get head => 'Account link';

	/// en: 'Google'
	String get google => 'Google';

	/// en: 'Apple'
	String get apple => 'Apple';
}

// Path: settings.accountPage.other
class TranslationsSettingsAccountPageOtherEn {
	TranslationsSettingsAccountPageOtherEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Other'
	String get head => 'Other';

	/// en: 'Logout'
	String get logout => 'Logout';

	/// en: 'Leave'
	String get leave => 'Leave';
}

// Path: settings.accountPage.leaveConfirmDialog
class TranslationsSettingsAccountPageLeaveConfirmDialogEn {
	TranslationsSettingsAccountPageLeaveConfirmDialogEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Leave?'
	String get title => 'Leave?';

	/// en: 'Are you sure you want to cancel your membership? \\Ўn this operation cannot be undone.'
	String get body => 'Are you sure you want to cancel your membership? \\Ўn this operation cannot be undone.';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'app.bottomNavBar.home' => 'Home',
			'app.bottomNavBar.search' => 'Search',
			'app.bottomNavBar.settings' => 'Settings',
			'app.homePage.title' => 'Home',
			'error.errorPage.title' => 'Error',
			'error.message.impossibleOperation.notAuth' => 'Not auth',
			'error.message.impossibleOperation.notLinked' => 'Not linked',
			'goods.goodsPage.title' => 'Goods',
			'goods.goodsPage.layout' => 'Layout',
			'goods.goodsPage.price' => ({required num price}) => '${NumberFormat.simpleCurrency(locale: 'en').format(price)}',
			'goods.goodsSortKey' => ({required GoodsSortKey context}) { switch (context) { case GoodsSortKey.createdAt: return 'Created at'; case GoodsSortKey.name: return 'Name'; case GoodsSortKey.price: return 'Price'; } }, 
			'settings.settingsPage.title' => 'Settings',
			'settings.settingsPage.account.head' => 'Account',
			'settings.settingsPage.account.account' => 'Account',
			'settings.settingsPage.layout.haed' => 'Layout',
			'settings.settingsPage.layout.uiStyle' => 'UI Style',
			'settings.settingsPage.layout.themeMode' => 'ThemeMode',
			'settings.settingsPage.layout.colorTheme' => 'Colors',
			'settings.settingsPage.help.head' => 'Help',
			'settings.settingsPage.help.howToUse' => 'HowToUse',
			'settings.settingsPage.help.contactUs' => 'Contact us',
			'settings.settingsPage.help.developperTwitter' => 'Developper',
			'settings.settingsPage.help.privacyPollicy' => 'PrivacyPollicy',
			'settings.settingsPage.help.licencse' => 'License',
			'settings.accountPage.title' => 'Account',
			'settings.accountPage.link.head' => 'Account link',
			'settings.accountPage.link.google' => 'Google',
			'settings.accountPage.link.apple' => 'Apple',
			'settings.accountPage.other.head' => 'Other',
			'settings.accountPage.other.logout' => 'Logout',
			'settings.accountPage.other.leave' => 'Leave',
			'settings.accountPage.leaveConfirmDialog.title' => 'Leave?',
			'settings.accountPage.leaveConfirmDialog.body' => 'Are you sure you want to cancel your membership? \\Ўn this operation cannot be undone.',
			'user.userPage.title' => 'Title',
			'user.onboardPage.start' => 'Start',
			'user.onboardPage.startCaption' => 'For first-time users, click here',
			'user.onboardPage.signInWithGoogle' => 'Sign in with Google',
			'user.onboardPage.signInWithApple' => 'Sign in with Apple',
			_ => null,
		};
	}
}

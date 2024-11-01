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
	late final TranslationsAppEn app = TranslationsAppEn.internal(_root);
}

// Path: app
class TranslationsAppEn {
	TranslationsAppEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsAppBottomNavBarEn bottomNavBar = TranslationsAppBottomNavBarEn.internal(_root);
	late final TranslationsAppHomePageEn homePage = TranslationsAppHomePageEn.internal(_root);
}

// Path: app.bottomNavBar
class TranslationsAppBottomNavBarEn {
	TranslationsAppBottomNavBarEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get home => 'Home';
	String get settings => 'Settings';
}

// Path: app.homePage
class TranslationsAppHomePageEn {
	TranslationsAppHomePageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Home';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'app.bottomNavBar.home': return 'Home';
			case 'app.bottomNavBar.settings': return 'Settings';
			case 'app.homePage.title': return 'Home';
			default: return null;
		}
	}
}


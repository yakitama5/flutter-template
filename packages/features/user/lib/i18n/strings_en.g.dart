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
	late final TranslationsUserEn user = TranslationsUserEn.internal(_root);
}

// Path: user
class TranslationsUserEn {
	TranslationsUserEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsUserUserPageEn userPage = TranslationsUserUserPageEn.internal(_root);
	late final TranslationsUserOnboardPageEn onboardPage = TranslationsUserOnboardPageEn.internal(_root);
}

// Path: user.userPage
class TranslationsUserUserPageEn {
	TranslationsUserUserPageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Title';
}

// Path: user.onboardPage
class TranslationsUserOnboardPageEn {
	TranslationsUserOnboardPageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get start => 'Start';
	String get startCaption => 'For first-time users, click here';
	String get signInWithGoogle => 'Sign in with Google';
	String get signInWithApple => 'Sign in with Apple';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'user.userPage.title': return 'Title';
			case 'user.onboardPage.start': return 'Start';
			case 'user.onboardPage.startCaption': return 'For first-time users, click here';
			case 'user.onboardPage.signInWithGoogle': return 'Sign in with Google';
			case 'user.onboardPage.signInWithApple': return 'Sign in with Apple';
			default: return null;
		}
	}
}


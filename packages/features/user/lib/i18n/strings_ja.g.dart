///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

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
	@override late final _TranslationsUserJa user = _TranslationsUserJa._(_root);
}

// Path: user
class _TranslationsUserJa extends TranslationsUserEn {
	_TranslationsUserJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsUserUserPageJa userPage = _TranslationsUserUserPageJa._(_root);
	@override late final _TranslationsUserOnboardPageJa onboardPage = _TranslationsUserOnboardPageJa._(_root);
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

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'user.userPage.title': return 'タイトル';
			case 'user.onboardPage.start': return 'はじめる';
			case 'user.onboardPage.startCaption': return 'はじめての方はこちら';
			case 'user.onboardPage.signInWithGoogle': return 'Googleアカウントでログイン';
			case 'user.onboardPage.signInWithApple': return 'Appleアカウントでログイン';
			default: return null;
		}
	}
}


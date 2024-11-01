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
	@override late final _TranslationsErrorJa error = _TranslationsErrorJa._(_root);
}

// Path: error
class _TranslationsErrorJa extends TranslationsErrorEn {
	_TranslationsErrorJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsErrorErrorPageJa errorPage = _TranslationsErrorErrorPageJa._(_root);
	@override late final _TranslationsErrorMessageJa message = _TranslationsErrorMessageJa._(_root);
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

// Path: error.message.impossibleOperation
class _TranslationsErrorMessageImpossibleOperationJa extends TranslationsErrorMessageImpossibleOperationEn {
	_TranslationsErrorMessageImpossibleOperationJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get notAuth => '認証済でないため操作が許可されていません';
	@override String get notLinked => 'アカウントが連携されていないため解除出来ません';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'error.errorPage.title': return 'エラー';
			case 'error.message.impossibleOperation.notAuth': return '認証済でないため操作が許可されていません';
			case 'error.message.impossibleOperation.notLinked': return 'アカウントが連携されていないため解除出来ません';
			default: return null;
		}
	}
}


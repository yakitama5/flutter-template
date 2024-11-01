///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:features_goods/src/domain/value_object/goods_sort_key.dart';
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
	@override late final _TranslationsGoodsJa goods = _TranslationsGoodsJa._(_root);
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

// Path: goods.goodsPage
class _TranslationsGoodsGoodsPageJa extends TranslationsGoodsGoodsPageEn {
	_TranslationsGoodsGoodsPageJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '商品一覧';
	@override String get layout => '表示形式';
	@override String price({required num price}) => '${NumberFormat.currency(locale: 'ja').format(price)}';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'goods.goodsPage.title': return '商品一覧';
			case 'goods.goodsPage.layout': return '表示形式';
			case 'goods.goodsPage.price': return ({required num price}) => '${NumberFormat.currency(locale: 'ja').format(price)}';
			case 'goods.goodsSortKey': return ({required GoodsSortKey context}) {
				switch (context) {
					case GoodsSortKey.createdAt:
						return '作成日時';
					case GoodsSortKey.name:
						return '商品名';
					case GoodsSortKey.price:
						return '価格';
				}
			};
			default: return null;
		}
	}
}


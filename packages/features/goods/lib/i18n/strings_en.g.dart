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
	late final TranslationsGoodsEn goods = TranslationsGoodsEn.internal(_root);
}

// Path: goods
class TranslationsGoodsEn {
	TranslationsGoodsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsGoodsGoodsPageEn goodsPage = TranslationsGoodsGoodsPageEn.internal(_root);
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

// Path: goods.goodsPage
class TranslationsGoodsGoodsPageEn {
	TranslationsGoodsGoodsPageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Goods';
	String get layout => 'Layout';
	String price({required num price}) => '${NumberFormat.currency(locale: 'en').format(price)}';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'goods.goodsPage.title': return 'Goods';
			case 'goods.goodsPage.layout': return 'Layout';
			case 'goods.goodsPage.price': return ({required num price}) => '${NumberFormat.currency(locale: 'en').format(price)}';
			case 'goods.goodsSortKey': return ({required GoodsSortKey context}) {
				switch (context) {
					case GoodsSortKey.createdAt:
						return 'Created at';
					case GoodsSortKey.name:
						return 'Name';
					case GoodsSortKey.price:
						return 'Price';
				}
			};
			default: return null;
		}
	}
}


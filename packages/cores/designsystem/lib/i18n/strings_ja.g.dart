///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:cores_designsystem/src/domain/value_object/color_style.dart';
import 'package:cores_designsystem/src/domain/value_object/ui_style.dart';
import 'package:cores_designsystem/src/domain/value_object/view_layout.dart';
import 'package:flutter/material.dart';
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
	@override late final _TranslationsDesignsystemJa designsystem = _TranslationsDesignsystemJa._(_root);
}

// Path: designsystem
class _TranslationsDesignsystemJa extends TranslationsDesignsystemEn {
	_TranslationsDesignsystemJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String uiStyle({required UIStyle context}) {
		switch (context) {
			case UIStyle.system:
				return 'システム設定';
			case UIStyle.android:
				return 'Android';
			case UIStyle.ios:
				return 'iOS';
		}
	}
	@override String colorStyle({required ColorStyle context}) {
		switch (context) {
			case ColorStyle.dynamicColor:
				return 'ダイナミックカラー';
			case ColorStyle.systemColor:
				return 'システムカラー';
			case ColorStyle.blue:
				return 'ブルー';
			case ColorStyle.purple:
				return 'パープル';
			case ColorStyle.green:
				return 'グリーン';
			case ColorStyle.red:
				return 'レッド';
			case ColorStyle.pink:
				return 'ピンク';
			case ColorStyle.yellow:
				return 'イエロー';
			case ColorStyle.orange:
				return 'オレンジ';
		}
	}
	@override String themeMode({required ThemeMode context}) {
		switch (context) {
			case ThemeMode.system:
				return 'システムテーマ';
			case ThemeMode.light:
				return 'ライトテーマ';
			case ThemeMode.dark:
				return 'ダークテーマ';
		}
	}
	@override late final _TranslationsDesignsystemViewLayoutJa viewLayout = _TranslationsDesignsystemViewLayoutJa._(_root);
}

// Path: designsystem.viewLayout
class _TranslationsDesignsystemViewLayoutJa extends TranslationsDesignsystemViewLayoutEn {
	_TranslationsDesignsystemViewLayoutJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '表示形式';
	@override String typeName({required ViewLayout context}) {
		switch (context) {
			case ViewLayout.grid:
				return 'グリッド表示';
			case ViewLayout.list:
				return 'リスト表示';
		}
	}
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'designsystem.uiStyle': return ({required UIStyle context}) {
				switch (context) {
					case UIStyle.system:
						return 'システム設定';
					case UIStyle.android:
						return 'Android';
					case UIStyle.ios:
						return 'iOS';
				}
			};
			case 'designsystem.colorStyle': return ({required ColorStyle context}) {
				switch (context) {
					case ColorStyle.dynamicColor:
						return 'ダイナミックカラー';
					case ColorStyle.systemColor:
						return 'システムカラー';
					case ColorStyle.blue:
						return 'ブルー';
					case ColorStyle.purple:
						return 'パープル';
					case ColorStyle.green:
						return 'グリーン';
					case ColorStyle.red:
						return 'レッド';
					case ColorStyle.pink:
						return 'ピンク';
					case ColorStyle.yellow:
						return 'イエロー';
					case ColorStyle.orange:
						return 'オレンジ';
				}
			};
			case 'designsystem.themeMode': return ({required ThemeMode context}) {
				switch (context) {
					case ThemeMode.system:
						return 'システムテーマ';
					case ThemeMode.light:
						return 'ライトテーマ';
					case ThemeMode.dark:
						return 'ダークテーマ';
				}
			};
			case 'designsystem.viewLayout.name': return '表示形式';
			case 'designsystem.viewLayout.typeName': return ({required ViewLayout context}) {
				switch (context) {
					case ViewLayout.grid:
						return 'グリッド表示';
					case ViewLayout.list:
						return 'リスト表示';
				}
			};
			default: return null;
		}
	}
}


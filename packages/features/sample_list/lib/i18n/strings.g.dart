/// Generated file. Do not edit.
///
/// Original: assets/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 14 (7 per locale)
///
/// Built on 2024-09-04 at 09:07 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:features_sample_list/src/domain/value_object/sample_list_sort_key.dart';
import 'package:features_sample_list/src/presentation/components/sample_list_view_chip.dart';
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
	late final _StringsSampleListEn sampleList = _StringsSampleListEn._(_root);
}

// Path: sampleList
class _StringsSampleListEn {
	_StringsSampleListEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsSampleListSampleListPageEn sampleListPage = _StringsSampleListSampleListPageEn._(_root);
	String sampleListSortKey({required SampleListSortKey context}) {
		switch (context) {
			case SampleListSortKey.createdAt:
				return 'Created at';
			case SampleListSortKey.name:
				return 'Name';
			case SampleListSortKey.price:
				return 'Price';
		}
	}
	String viewerLayoutType({required ViewerLayoutType context}) {
		switch (context) {
			case ViewerLayoutType.list:
				return 'List';
			case ViewerLayoutType.grid:
				return 'Grid';
		}
	}
}

// Path: sampleList.sampleListPage
class _StringsSampleListSampleListPageEn {
	_StringsSampleListSampleListPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Title';
	String get viewerLayoutType => 'Layout type';
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
	@override late final _StringsSampleListJa sampleList = _StringsSampleListJa._(_root);
}

// Path: sampleList
class _StringsSampleListJa extends _StringsSampleListEn {
	_StringsSampleListJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override late final _StringsSampleListSampleListPageJa sampleListPage = _StringsSampleListSampleListPageJa._(_root);
	@override String sampleListSortKey({required SampleListSortKey context}) {
		switch (context) {
			case SampleListSortKey.createdAt:
				return '作成日時';
			case SampleListSortKey.name:
				return '名前';
			case SampleListSortKey.price:
				return '価格';
		}
	}
	@override String viewerLayoutType({required ViewerLayoutType context}) {
		switch (context) {
			case ViewerLayoutType.list:
				return 'リスト表示';
			case ViewerLayoutType.grid:
				return 'グリッド表示';
		}
	}
}

// Path: sampleList.sampleListPage
class _StringsSampleListSampleListPageJa extends _StringsSampleListSampleListPageEn {
	_StringsSampleListSampleListPageJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'タイトル';
	@override String get viewerLayoutType => '表示形式';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'sampleList.sampleListPage.title': return 'Title';
			case 'sampleList.sampleListPage.viewerLayoutType': return 'Layout type';
			case 'sampleList.sampleListSortKey': return ({required SampleListSortKey context}) {
				switch (context) {
					case SampleListSortKey.createdAt:
						return 'Created at';
					case SampleListSortKey.name:
						return 'Name';
					case SampleListSortKey.price:
						return 'Price';
				}
			};
			case 'sampleList.viewerLayoutType': return ({required ViewerLayoutType context}) {
				switch (context) {
					case ViewerLayoutType.list:
						return 'List';
					case ViewerLayoutType.grid:
						return 'Grid';
				}
			};
			default: return null;
		}
	}
}

extension on _StringsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'sampleList.sampleListPage.title': return 'タイトル';
			case 'sampleList.sampleListPage.viewerLayoutType': return '表示形式';
			case 'sampleList.sampleListSortKey': return ({required SampleListSortKey context}) {
				switch (context) {
					case SampleListSortKey.createdAt:
						return '作成日時';
					case SampleListSortKey.name:
						return '名前';
					case SampleListSortKey.price:
						return '価格';
				}
			};
			case 'sampleList.viewerLayoutType': return ({required ViewerLayoutType context}) {
				switch (context) {
					case ViewerLayoutType.list:
						return 'リスト表示';
					case ViewerLayoutType.grid:
						return 'グリッド表示';
				}
			};
			default: return null;
		}
	}
}

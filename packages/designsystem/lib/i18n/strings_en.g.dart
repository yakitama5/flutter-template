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
	late final TranslationsDesignsystemEn designsystem = TranslationsDesignsystemEn.internal(_root);
}

// Path: designsystem
class TranslationsDesignsystemEn {
	TranslationsDesignsystemEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '(system) {System} (android) {Android} (ios) {iOS}'
	String uiStyle({required UIStyle context}) {
		switch (context) {
			case UIStyle.system:
				return 'System';
			case UIStyle.android:
				return 'Android';
			case UIStyle.ios:
				return 'iOS';
		}
	}

	/// en: '(dynamicColor) {DynamicColor} (appColor) {SystemColor} (blue) {Blue} (purple) {Purple} (green) {Green} (red) {Red} (pink) {Pink} (yellow) {Yellow} (orange) {Orange}'
	String themeColor({required ThemeColor context}) {
		switch (context) {
			case ThemeColor.dynamicColor:
				return 'DynamicColor';
			case ThemeColor.appColor:
				return 'SystemColor';
			case ThemeColor.blue:
				return 'Blue';
			case ThemeColor.purple:
				return 'Purple';
			case ThemeColor.green:
				return 'Green';
			case ThemeColor.red:
				return 'Red';
			case ThemeColor.pink:
				return 'Pink';
			case ThemeColor.yellow:
				return 'Yellow';
			case ThemeColor.orange:
				return 'Orange';
		}
	}

	/// en: '(system) {System} (light) {Light} (dark) {Dark}'
	String themeMode({required ThemeMode context}) {
		switch (context) {
			case ThemeMode.system:
				return 'System';
			case ThemeMode.light:
				return 'Light';
			case ThemeMode.dark:
				return 'Dark';
		}
	}

	late final TranslationsDesignsystemViewLayoutEn viewLayout = TranslationsDesignsystemViewLayoutEn.internal(_root);

	/// en: '(asc) {ASC} (desc) {DESC}'
	String sortOrder({required SortOrder context}) {
		switch (context) {
			case SortOrder.asc:
				return 'ASC';
			case SortOrder.desc:
				return 'DESC';
		}
	}

	late final TranslationsDesignsystemAppUpdateEn appUpdate = TranslationsDesignsystemAppUpdateEn.internal(_root);
}

// Path: designsystem.viewLayout
class TranslationsDesignsystemViewLayoutEn {
	TranslationsDesignsystemViewLayoutEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Layout'
	String get name => 'Layout';

	/// en: '(grid) {Grid} (list) {List}'
	String typeName({required ViewLayout context}) {
		switch (context) {
			case ViewLayout.grid:
				return 'Grid';
			case ViewLayout.list:
				return 'List';
		}
	}
}

// Path: designsystem.appUpdate
class TranslationsDesignsystemAppUpdateEn {
	TranslationsDesignsystemAppUpdateEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsDesignsystemAppUpdateUpdatePossibleEn updatePossible = TranslationsDesignsystemAppUpdateUpdatePossibleEn.internal(_root);
	late final TranslationsDesignsystemAppUpdateForceUpdateEn forceUpdate = TranslationsDesignsystemAppUpdateForceUpdateEn.internal(_root);

	/// en: 'Open Store'
	String get navigateStore => 'Open Store';
}

// Path: designsystem.appUpdate.updatePossible
class TranslationsDesignsystemAppUpdateUpdatePossibleEn {
	TranslationsDesignsystemAppUpdateUpdatePossibleEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'A new version has been released.\nBy updating, you can enjoy new features.\nWould you like to update?'
	String get message => 'A new version has been released.\nBy updating, you can enjoy new features.\nWould you like to update?';
}

// Path: designsystem.appUpdate.forceUpdate
class TranslationsDesignsystemAppUpdateForceUpdateEn {
	TranslationsDesignsystemAppUpdateForceUpdateEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'The version you are using is currently unavailable. \nPlease download a new version from the store.'
	String get message => 'The version you are using is currently unavailable. \nPlease download a new version from the store.';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'designsystem.uiStyle' => ({required UIStyle context}) { switch (context) { case UIStyle.system: return 'System'; case UIStyle.android: return 'Android'; case UIStyle.ios: return 'iOS'; } }, 
			'designsystem.themeColor' => ({required ThemeColor context}) { switch (context) { case ThemeColor.dynamicColor: return 'DynamicColor'; case ThemeColor.appColor: return 'SystemColor'; case ThemeColor.blue: return 'Blue'; case ThemeColor.purple: return 'Purple'; case ThemeColor.green: return 'Green'; case ThemeColor.red: return 'Red'; case ThemeColor.pink: return 'Pink'; case ThemeColor.yellow: return 'Yellow'; case ThemeColor.orange: return 'Orange'; } }, 
			'designsystem.themeMode' => ({required ThemeMode context}) { switch (context) { case ThemeMode.system: return 'System'; case ThemeMode.light: return 'Light'; case ThemeMode.dark: return 'Dark'; } }, 
			'designsystem.viewLayout.name' => 'Layout',
			'designsystem.viewLayout.typeName' => ({required ViewLayout context}) { switch (context) { case ViewLayout.grid: return 'Grid'; case ViewLayout.list: return 'List'; } }, 
			'designsystem.sortOrder' => ({required SortOrder context}) { switch (context) { case SortOrder.asc: return 'ASC'; case SortOrder.desc: return 'DESC'; } }, 
			'designsystem.appUpdate.updatePossible.message' => 'A new version has been released.\nBy updating, you can enjoy new features.\nWould you like to update?',
			'designsystem.appUpdate.forceUpdate.message' => 'The version you are using is currently unavailable. \nPlease download a new version from the store.',
			'designsystem.appUpdate.navigateStore' => 'Open Store',
			_ => null,
		};
	}
}

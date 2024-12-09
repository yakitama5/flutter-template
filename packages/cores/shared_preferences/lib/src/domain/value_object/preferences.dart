enum Preferences<T> {
  themeColor('COLOR_STYLE', 'dynamicColor'),
  uiStyle('UI_STYLE', 'system'),
  themeMode('THEME_MODE', 'system');

  const Preferences(this.key, this.defaultValue);

  final String key;
  final T defaultValue;
}

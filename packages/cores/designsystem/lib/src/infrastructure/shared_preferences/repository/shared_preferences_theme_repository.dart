import 'package:collection/collection.dart';
import 'package:cores_designsystem/src/domain/value_object/color_style.dart';
import 'package:cores_designsystem/src/domain/value_object/ui_style.dart';
import 'package:cores_shared_preferences/infrastructure.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/interface/theme_repository.dart';

class SharedPreferencesThemeRepository implements ThemeRepository {
  const SharedPreferencesThemeRepository(this.ref);

  final Ref ref;

  // TODO(yakitama5): 「ここからやる」Preferencesでまとめる
  static const _colorStyleKey = 'COLOR_STYLE';
  static const _uiStyleKey = 'UI_STYLE';
  static const _themeModeKey = 'THEME_MODE';

  @override
  ColorStyle? fetchColorStyle() {
    final value =
        ref.watch(sharedPreferencesProvider).getString(_colorStyleKey);
    return ColorStyle.values.firstWhereOrNull((e) => e.name == value);
  }

  @override
  UIStyle? fetchUIStyle() {
    final value = ref.watch(sharedPreferencesProvider).getString(_uiStyleKey);
    return UIStyle.values.firstWhereOrNull((e) => e.name == value);
  }

  @override
  ThemeMode? fetchThemeMode() {
    final value = ref.watch(sharedPreferencesProvider).getString(_themeModeKey);
    return ThemeMode.values.firstWhereOrNull((e) => e.name == value);
  }

  @override
  Future<void> updateColorStyle(ColorStyle colorStyle) => ref
      .read(sharedPreferencesProvider)
      .setString(_colorStyleKey, colorStyle.name);

  @override
  Future<void> updateUIStyle(UIStyle uiStyle) =>
      ref.watch(sharedPreferencesProvider).setString(_uiStyleKey, uiStyle.name);

  @override
  Future<void> updateThemeMode(ThemeMode themeMode) => ref
      .read(sharedPreferencesProvider)
      .setString(_themeModeKey, themeMode.name);
}

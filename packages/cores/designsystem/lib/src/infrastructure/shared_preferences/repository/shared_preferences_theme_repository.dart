import 'package:collection/collection.dart';
import 'package:cores_designsystem/src/domain/value_object/color_style.dart';
import 'package:cores_designsystem/src/domain/value_object/ui_style.dart';
import 'package:cores_shared_preferences/domain.dart';
import 'package:cores_shared_preferences/infrastructure.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/interface/theme_repository.dart';

class SharedPreferencesThemeRepository implements ThemeRepository {
  const SharedPreferencesThemeRepository(this.ref);

  final Ref ref;

  @override
  ColorStyle? fetchColorStyle() {
    final value = ref.watch(stringPreferenceProvider(Preferences.colorStyle));
    return ColorStyle.values.firstWhereOrNull((e) => e.name == value);
  }

  @override
  UIStyle? fetchUIStyle() {
    final value = ref.watch(stringPreferenceProvider(Preferences.uiStyle));
    return UIStyle.values.firstWhereOrNull((e) => e.name == value);
  }

  @override
  ThemeMode? fetchThemeMode() {
    final value = ref.watch(stringPreferenceProvider(Preferences.themeMode));
    return ThemeMode.values.firstWhereOrNull((e) => e.name == value);
  }

  @override
  Future<void> updateColorStyle(ColorStyle colorStyle) => ref
      .read(stringPreferenceProvider(Preferences.colorStyle).notifier)
      .update(colorStyle.name);

  @override
  Future<void> updateUIStyle(UIStyle uiStyle) => ref
      .read(stringPreferenceProvider(Preferences.uiStyle).notifier)
      .update(uiStyle.name);

  @override
  Future<void> updateThemeMode(ThemeMode themeMode) => ref
      .read(stringPreferenceProvider(Preferences.themeMode).notifier)
      .update(themeMode.name);
}

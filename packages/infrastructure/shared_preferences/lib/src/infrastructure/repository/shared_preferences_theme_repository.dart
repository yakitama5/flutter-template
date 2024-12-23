import 'package:collection/collection.dart';
import 'package:cores_designsystem/domain.dart';
import 'package:cores_shared_preferences/domain.dart';
import 'package:cores_shared_preferences/infrastructure.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SharedPreferencesThemeRepository implements ThemeRepository {
  const SharedPreferencesThemeRepository(this.ref);

  final Ref ref;

  @override
  ThemeColor? fetchThemeColor() {
    final value = ref.watch(stringPreferenceProvider(Preferences.themeColor));
    return ThemeColor.values.firstWhereOrNull((e) => e.name == value);
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
  Future<void> updateThemeColor(ThemeColor themeColor) => ref
      .read(stringPreferenceProvider(Preferences.themeColor).notifier)
      .update(themeColor.name);

  @override
  Future<void> updateUIStyle(UIStyle uiStyle) => ref
      .read(stringPreferenceProvider(Preferences.uiStyle).notifier)
      .update(uiStyle.name);

  @override
  Future<void> updateThemeMode(ThemeMode themeMode) => ref
      .read(stringPreferenceProvider(Preferences.themeMode).notifier)
      .update(themeMode.name);
}

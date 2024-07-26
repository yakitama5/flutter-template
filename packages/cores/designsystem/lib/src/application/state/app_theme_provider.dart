import 'package:cores_designsystem/src/application/state/color_style_provider.dart';
import 'package:cores_designsystem/src/domain/value_object/color_style.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_theme_provider.g.dart';

@riverpod
ThemeData appTheme(AppThemeRef ref, {required Brightness brightness}) {
  final colorStyle = ref.watch(colorStyleProvider);

  return switch (colorStyle) {
    // TODO(s-takehara): DynamicColor適用
    ColorStyle.dynamicColor => ThemeData.light(),
    ColorStyle.systemColor =>
      brightness == Brightness.light ? ThemeData.light() : ThemeData.dark(),
    ColorStyle.blue ||
    ColorStyle.purple ||
    ColorStyle.green ||
    ColorStyle.red ||
    ColorStyle.pink ||
    ColorStyle.yellow ||
    ColorStyle.orange =>
      ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: colorStyle.seedColor!,
          brightness: brightness,
        ),
      )
  };
}

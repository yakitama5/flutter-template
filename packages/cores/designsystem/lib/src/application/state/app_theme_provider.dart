import 'package:cores_designsystem/application.dart';
import 'package:cores_designsystem/src/domain/value_object/color_style.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_theme_provider.g.dart';

@riverpod
ThemeData appTheme(AppThemeRef ref, {required Brightness brightness}) {
  final colorStyle = ref.watch(colorStyleProvider);
  final corePalette = ref.watch(corePaletteProvider);

  return switch (colorStyle) {
    ColorStyle.dynamicColor => ThemeData.from(
        colorScheme: corePalette!.toColorScheme(brightness: brightness),
      ),
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

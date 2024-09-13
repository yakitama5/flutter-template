import 'package:cores_designsystem/application.dart';
import 'package:cores_designsystem/src/domain/value_object/color_style.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../presentaion/theme/theme_extensions/theme_extensions.dart';

part 'app_theme_provider.g.dart';

@riverpod
ThemeData appTheme(AppThemeRef ref, {required Brightness brightness}) {
  // ignore: avoid_manual_providers_as_generated_provider_dependency
  final colorStyle = ref.watch(colorStyleProvider);
  final corePalette = ref.watch(corePaletteProvider);

  final colorScheme = switch (colorStyle) {
    // パッケージ対応されるまで最新のColorSchemeに合わせて編集
    // Notes: https://github.com/material-foundation/flutter-packages/issues/582
    ColorStyle.dynamicColor => _generateDynamicColourSchemes(
        corePalette!.toColorScheme(brightness: brightness),
      ),
    ColorStyle.systemColor => brightness == Brightness.light
        ? ColorScheme.light(brightness: brightness)
        : ColorScheme.dark(brightness: brightness),
    ColorStyle.blue ||
    ColorStyle.purple ||
    ColorStyle.green ||
    ColorStyle.red ||
    ColorStyle.pink ||
    ColorStyle.yellow ||
    ColorStyle.orange =>
      ColorScheme.fromSeed(
        seedColor: colorStyle.seedColor!,
        brightness: brightness,
      )
  };

  return ThemeData(
    colorScheme: colorScheme,
    brightness: brightness,
    extensions: [
      AppColors.brightness(brightness: brightness),
    ],
  );
}

ColorScheme _generateDynamicColourSchemes(ColorScheme scheme) {
  final seed = ColorScheme.fromSeed(
    seedColor: scheme.primary,
    brightness: scheme.brightness,
  );
  final addtionalColours = _extractAdditionalColors(seed);
  final addedScheme = _insertAdditionalColors(seed, addtionalColours);

  return addedScheme;
}

List<Color> _extractAdditionalColors(ColorScheme scheme) => [
      scheme.surface,
      scheme.surfaceDim,
      scheme.surfaceBright,
      scheme.surfaceContainerLowest,
      scheme.surfaceContainerLow,
      scheme.surfaceContainer,
      scheme.surfaceContainerHigh,
      scheme.surfaceContainerHighest,
    ];

ColorScheme _insertAdditionalColors(
  ColorScheme scheme,
  List<Color> additionalColours,
) =>
    scheme.copyWith(
      surface: additionalColours[0],
      surfaceDim: additionalColours[1],
      surfaceBright: additionalColours[2],
      surfaceContainerLowest: additionalColours[3],
      surfaceContainerLow: additionalColours[4],
      surfaceContainer: additionalColours[5],
      surfaceContainerHigh: additionalColours[6],
      surfaceContainerHighest: additionalColours[7],
    );

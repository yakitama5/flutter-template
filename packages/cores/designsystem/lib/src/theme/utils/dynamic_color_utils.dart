import 'package:flutter/material.dart';

/// [暫定的な対応]
/// `dynamic_color`パッケージで生成された`ColorScheme`を基に
/// Flutter3.22.0で変更されたColorSchemeを生成する
/// https://github.com/material-foundation/flutter-packages/issues/582#issuecomment-2081174158
ColorScheme generateDynamicColourSchemes(ColorScheme scheme) {
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

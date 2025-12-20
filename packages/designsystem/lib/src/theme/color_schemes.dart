// ignore_for_file: low_readability_numeric_literals
import 'package:flutter/material.dart';

// Generated code from https://m3.material.io/theme-builder#/custom
//
// NOTE: 上記サイトで生成したコードを変更してColorSchemeを定義しています。
// 生成されたコードには非推奨なプロパティが含まれるため。（2024-05-28時点）

class MaterialTheme {
  const MaterialTheme(this.textTheme);
  final TextTheme textTheme;

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff5a5f65),
      surfaceTint: Color(0xff5a5f65),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffc1c5cc),
      onPrimaryContainer: Color(0xff31353b),
      secondary: Color(0xff5d5e61),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffe6e6e9),
      onSecondaryContainer: Color(0xff494a4d),
      tertiary: Color(0xff645c63),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffccc1c9),
      onTertiaryContainer: Color(0xff393239),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffcf8f8),
      onSurface: Color(0xff1c1b1c),
      onSurfaceVariant: Color(0xff44474b),
      outline: Color(0xff75777b),
      outlineVariant: Color(0xffc5c6cb),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313031),
      inversePrimary: Color(0xffc3c7ce),
      primaryFixed: Color(0xffdfe3ea),
      onPrimaryFixed: Color(0xff171c21),
      primaryFixedDim: Color(0xffc3c7ce),
      onPrimaryFixedVariant: Color(0xff43474d),
      secondaryFixed: Color(0xffe2e2e5),
      onSecondaryFixed: Color(0xff1a1c1e),
      secondaryFixedDim: Color(0xffc6c6c9),
      onSecondaryFixedVariant: Color(0xff454749),
      tertiaryFixed: Color(0xffebdfe7),
      onTertiaryFixed: Color(0xff201a20),
      tertiaryFixedDim: Color(0xffcfc3cb),
      onTertiaryFixedVariant: Color(0xff4c444b),
      surfaceDim: Color(0xffdcd9d9),
      surfaceBright: Color(0xfffcf8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6f3f3),
      surfaceContainer: Color(0xfff0eded),
      surfaceContainerHigh: Color(0xffebe7e7),
      surfaceContainerHighest: Color(0xffe5e2e2),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff3f4349),
      surfaceTint: Color(0xff5a5f65),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff70757b),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff414345),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff747477),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff484147),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff7b7279),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffcf8f8),
      onSurface: Color(0xff1c1b1c),
      onSurfaceVariant: Color(0xff414347),
      outline: Color(0xff5d5f63),
      outlineVariant: Color(0xff797b7f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313031),
      inversePrimary: Color(0xffc3c7ce),
      primaryFixed: Color(0xff70757b),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff585c62),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff747477),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff5b5c5e),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff7b7279),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff625960),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdcd9d9),
      surfaceBright: Color(0xfffcf8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6f3f3),
      surfaceContainer: Color(0xfff0eded),
      surfaceContainerHigh: Color(0xffebe7e7),
      surfaceContainerHighest: Color(0xffe5e2e2),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff1e2328),
      surfaceTint: Color(0xff5a5f65),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff3f4349),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff212225),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff414345),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff262026),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff484147),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffcf8f8),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff222427),
      outline: Color(0xff414347),
      outlineVariant: Color(0xff414347),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313031),
      inversePrimary: Color(0xffe8ecf3),
      primaryFixed: Color(0xff3f4349),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff282d33),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff414345),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff2b2d2f),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff484147),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff312b31),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdcd9d9),
      surfaceBright: Color(0xfffcf8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6f3f3),
      surfaceContainer: Color(0xfff0eded),
      surfaceContainerHigh: Color(0xffebe7e7),
      surfaceContainerHighest: Color(0xffe5e2e2),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffdce0e7),
      surfaceTint: Color(0xffc3c7ce),
      onPrimary: Color(0xff2c3136),
      primaryContainer: Color(0xffb2b6bd),
      onPrimaryContainer: Color(0xff262a30),
      secondary: Color(0xffc6c6c9),
      onSecondary: Color(0xff2f3033),
      secondaryContainer: Color(0xff3c3d40),
      onSecondaryContainer: Color(0xffd0d0d3),
      tertiary: Color(0xffe8dce5),
      onTertiary: Color(0xff352e35),
      tertiaryContainer: Color(0xffbeb3bb),
      onTertiaryContainer: Color(0xff2f282e),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff131314),
      onSurface: Color(0xffe5e2e2),
      onSurfaceVariant: Color(0xffc5c6cb),
      outline: Color(0xff8f9195),
      outlineVariant: Color(0xff44474b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2e2),
      inversePrimary: Color(0xff5a5f65),
      primaryFixed: Color(0xffdfe3ea),
      onPrimaryFixed: Color(0xff171c21),
      primaryFixedDim: Color(0xffc3c7ce),
      onPrimaryFixedVariant: Color(0xff43474d),
      secondaryFixed: Color(0xffe2e2e5),
      onSecondaryFixed: Color(0xff1a1c1e),
      secondaryFixedDim: Color(0xffc6c6c9),
      onSecondaryFixedVariant: Color(0xff454749),
      tertiaryFixed: Color(0xffebdfe7),
      onTertiaryFixed: Color(0xff201a20),
      tertiaryFixedDim: Color(0xffcfc3cb),
      onTertiaryFixedVariant: Color(0xff4c444b),
      surfaceDim: Color(0xff131314),
      surfaceBright: Color(0xff3a3939),
      surfaceContainerLowest: Color(0xff0e0e0e),
      surfaceContainerLow: Color(0xff1c1b1c),
      surfaceContainer: Color(0xff201f20),
      surfaceContainerHigh: Color(0xff2a2a2a),
      surfaceContainerHighest: Color(0xff353535),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffdce0e7),
      surfaceTint: Color(0xffc3c7ce),
      onPrimary: Color(0xff24282e),
      primaryContainer: Color(0xffb2b6bd),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffcacacd),
      onSecondary: Color(0xff151619),
      secondaryContainer: Color(0xff909093),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffe8dce5),
      onTertiary: Color(0xff2d262c),
      tertiaryContainer: Color(0xffbeb3bb),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff131314),
      onSurface: Color(0xfffdfafa),
      onSurfaceVariant: Color(0xffc9cbcf),
      outline: Color(0xffa1a3a7),
      outlineVariant: Color(0xff818387),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2e2),
      inversePrimary: Color(0xff44484e),
      primaryFixed: Color(0xffdfe3ea),
      onPrimaryFixed: Color(0xff0d1217),
      primaryFixedDim: Color(0xffc3c7ce),
      onPrimaryFixedVariant: Color(0xff32373c),
      secondaryFixed: Color(0xffe2e2e5),
      onSecondaryFixed: Color(0xff101113),
      secondaryFixedDim: Color(0xffc6c6c9),
      onSecondaryFixedVariant: Color(0xff353639),
      tertiaryFixed: Color(0xffebdfe7),
      onTertiaryFixed: Color(0xff150f15),
      tertiaryFixedDim: Color(0xffcfc3cb),
      onTertiaryFixedVariant: Color(0xff3b343a),
      surfaceDim: Color(0xff131314),
      surfaceBright: Color(0xff3a3939),
      surfaceContainerLowest: Color(0xff0e0e0e),
      surfaceContainerLow: Color(0xff1c1b1c),
      surfaceContainer: Color(0xff201f20),
      surfaceContainerHigh: Color(0xff2a2a2a),
      surfaceContainerHighest: Color(0xff353535),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffafaff),
      surfaceTint: Color(0xffc3c7ce),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffc7cbd2),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffbfafd),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffcacacd),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9fa),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffd3c7d0),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff131314),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffafaff),
      outline: Color(0xffc9cbcf),
      outlineVariant: Color(0xffc9cbcf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2e2),
      inversePrimary: Color(0xff262a30),
      primaryFixed: Color(0xffe3e7ee),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffc7cbd2),
      onPrimaryFixedVariant: Color(0xff12171c),
      secondaryFixed: Color(0xffe7e6e9),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffcacacd),
      onSecondaryFixedVariant: Color(0xff151619),
      tertiaryFixed: Color(0xfff0e3ec),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffd3c7d0),
      onTertiaryFixedVariant: Color(0xff1a141a),
      surfaceDim: Color(0xff131314),
      surfaceBright: Color(0xff3a3939),
      surfaceContainerLowest: Color(0xff0e0e0e),
      surfaceContainerLow: Color(0xff1c1b1c),
      surfaceContainer: Color(0xff201f20),
      surfaceContainerHigh: Color(0xff2a2a2a),
      surfaceContainerHighest: Color(0xff353535),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
  final Color seed;
  final Color value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../theme_extensions/src/app_colors.dart';
import 'app_color_scheme_provider.dart';

part 'app_theme_provider.g.dart';

/// アプリ内のテーマを管理
@riverpod
ThemeData appTheme(Ref ref, {required Brightness brightness}) {
  final colorScheme = ref.watch(appColorSchemeProvider(brightness: brightness));

  return ThemeData(
    colorScheme: colorScheme,
    brightness: brightness,
    extensions: [
      AppColors.brightness(brightness: brightness),
    ],
  );
}

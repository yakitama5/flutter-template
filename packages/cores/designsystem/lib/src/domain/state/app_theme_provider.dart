import 'package:cores_designsystem/src/domain/state/app_color_scheme_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../presentaion/theme/theme_extensions/theme_extensions.dart';

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

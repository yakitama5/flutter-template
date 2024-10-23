import 'package:cores_designsystem/src/domain/value_object/color_style.dart';
import 'package:cores_designsystem/src/domain/value_object/ui_style.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_repository.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@Riverpod(keepAlive: true)
ThemeRepository themeRepository(Ref ref) => throw UnimplementedError();

abstract class ThemeRepository {
  UIStyle? fetchUIStyle();
  Future<void> updateUIStyle(UIStyle uiStyle);

  ColorStyle? fetchColorStyle();
  Future<void> updateColorStyle(ColorStyle colorStyle);

  ThemeMode? fetchThemeMode();
  Future<void> updateThemeMode(ThemeMode themeMode);
}

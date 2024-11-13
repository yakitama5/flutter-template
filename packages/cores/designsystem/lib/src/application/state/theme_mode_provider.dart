import 'dart:async';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/interface/theme_repository.dart';

part 'theme_mode_provider.g.dart';

// 名称重複を避けるために別名指定で外部に公開する
// ignore: invalid_use_of_internal_member, library_private_types_in_public_api
AutoDisposeNotifierProviderImpl<_ThemeMode, ThemeMode> get themeModeProvider =>
    _themeModeProvider;

/// テーマを管理するProvider
/// SharedPreferencesの同期を待たずにUIに反映するため、Notifierを利用している
@riverpod
class _ThemeMode extends _$ThemeMode {
  ThemeRepository get _repository => ref.watch(themeRepositoryProvider);

  @override
  ThemeMode build() => _repository.fetchThemeMode() ?? ThemeMode.system;

  Future<void> update(ThemeMode themeMode) async {
    // 設定反映を待たずに設定する
    unawaited(_repository.updateThemeMode(themeMode));
    state = themeMode;
  }
}

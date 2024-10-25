import 'package:cores_designsystem/application.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/interface/theme_repository.dart';
import '../infrastructure/shared_preferences/repository/shared_preferences_theme_repository.dart';

Future<List<Override>> initializeDesignsystemProviders() async {
  // DynamicColorのパッケージがFlutter3.22に追いついていない
  final corePalette = kIsWeb ? null : await DynamicColorPlugin.getCorePalette();

  return <Override>[
    corePaletteProvider.overrideWithValue(corePalette),
    themeRepositoryProvider.overrideWith(SharedPreferencesThemeRepository.new),
  ];
}

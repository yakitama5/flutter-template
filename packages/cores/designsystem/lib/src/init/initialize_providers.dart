import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/interface/theme_repository.dart';
import '../infrastructure/shared_preferences/repository/shared_preferences_theme_repository.dart';

Future<List<Override>> initializeDesignsystemProviders() async {
  return <Override>[
    themeRepositoryProvider.overrideWith(SharedPreferencesThemeRepository.new),
  ];
}

import 'package:cores_designsystem/domain.dart';
import 'package:cores_designsystem/infrastructure.dart';
import 'package:cores_shared_preferences/infrastructure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Returns list of [Override] that should be applied to root [ProviderScope].
Future<List<Override>> initializeProviders() async {
  final overrides = <Override>[];

  final preferences = await SharedPreferences.getInstance();
  overrides.addAll(
    [
      sharedPreferencesProvider.overrideWithValue(preferences),
      themeRepositoryProvider
          .overrideWith(SharedPreferencesThemeRepository.new),
    ],
  );
  return overrides;
}

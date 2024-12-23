import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../infrastructure/state/shared_preferences_provider.dart';

/// Returns list of [Override] that should be applied to root [ProviderScope].
Future<List<Override>> initializeSharedPreferencesProviders() async {
  final preferences = await SharedPreferences.getInstance();

  return <Override>[
    sharedPreferencesProvider.overrideWithValue(preferences),
  ];
}

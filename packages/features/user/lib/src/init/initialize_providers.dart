import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../domain/interface/user_repository.dart';
import '../infrastructure/firebase/repository/firebase_user_repository.dart';

/// Returns list of [Override] that should be applied to root [ProviderScope].
Future<List<Override>> initializeUserProviders() async {
  return <Override>[
    userRepositoryProvider.overrideWith(FirebaseUserRepository.new),
  ];
}

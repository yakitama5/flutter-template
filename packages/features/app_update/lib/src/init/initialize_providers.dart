import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../domain/interface/app_version_repository.dart';
import '../infrastructure/firebase/repository/remote_config_app_version_repository.dart';

/// Returns list of [Override] that should be applied to root [ProviderScope].
Future<List<Override>> initializeAppUpdateProviders() async {
  return <Override>[
    appVersionRepositoryProvider
        .overrideWith(RemoteConfigAppVersionRepository.new),
  ];
}

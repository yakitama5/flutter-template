import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../domain/interface/app_maintenance_repository.dart';
import '../infrastructure/firebase/repository/remote_config_app_maintenance_repository.dart';

/// Returns list of [Override] that should be applied to root [ProviderScope].
Future<List<Override>> initializeMaintenanceProviders() async {
  return <Override>[
    appMaintenanceRepositoryProvider
        .overrideWith(RemoteConfigAppMaintenanceRepository.new),
  ];
}

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/interface/app_maintenance_repository.dart';
import '../model/app_maintenance_status.dart';

part 'app_maintenance_status_provider.g.dart';

@Riverpod(keepAlive: true)
Stream<AppMaintenanceStatus> appMaintenanceStatus(
  Ref ref,
) {
  final repository = ref.watch(appMaintenanceRepositoryProvider);
  return repository.fetchMaintenanceMode().map(
        (isMaintenance) => isMaintenance
            ? AppMaintenanceStatus.maintenance
            : AppMaintenanceStatus.none,
      );
}

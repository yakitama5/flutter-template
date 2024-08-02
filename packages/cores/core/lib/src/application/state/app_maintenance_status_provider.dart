import 'package:cores_core/src/application/model/app_maintenance_status.dart';
import 'package:cores_core/src/domain/interface/app_maintenance_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_maintenance_status_provider.g.dart';

@Riverpod(keepAlive: true)
Stream<AppMaintenanceStatus> appMaintenanceStatus(
  AppMaintenanceStatusRef ref,
) {
  final repository = ref.watch(appMaintenanceRepositoryProvider);
  return repository.fetchMaintenanceMode().map(
        (isMaintenance) => isMaintenance
            ? AppMaintenanceStatus.maintenance
            : AppMaintenanceStatus.none,
      );
}

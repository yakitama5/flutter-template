import 'package:cores_core/src/application/model/app_maintenance_status.dart';
import 'package:cores_core/src/domain/interface/app_maintenance_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_maintenance_status_provider.g.dart';

@riverpod
Future<AppMaintenanceStatus> appMaintenanceStatus(
  AppMaintenanceStatusRef ref,
) async {
  final repository = ref.watch(appMaintenanceRepositoryProvider);
  final isMaintenance = await repository.isMaintenanceMode();

  return isMaintenance
      ? AppMaintenanceStatus.maintenance
      : AppMaintenanceStatus.none;
}

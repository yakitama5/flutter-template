import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_maintenance_repository.g.dart';

@riverpod
AppMaintenanceRepository appMaintenanceRepository(
  AppMaintenanceRepositoryRef ref,
) =>
    throw UnimplementedError();

abstract class AppMaintenanceRepository {
  const AppMaintenanceRepository();
  Future<bool> isMaintenanceMode();
}

import 'package:cores_core/src/domain/interface/app_maintenance_repository.dart';
import 'package:cores_firebase/infrastructure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const String _maintenanceKey = 'app_maintenance_mode';

class RemoteConfigAppMaintenanceRepository extends AppMaintenanceRepository {
  const RemoteConfigAppMaintenanceRepository(this.ref);

  final Ref ref;

  /// 文字列型を取得する
  Future<bool> _fetchBool(String key) async {
    final remoteConfig = await ref.watch(remoteConfigProvider.future);
    return remoteConfig.getBool(key);
  }

  @override
  Stream<bool> fetchMaintenanceMode() async* {
    final remoteConfig = await ref.watch(remoteConfigProvider.future);

    // 初回は単純に取得
    yield remoteConfig.getBool(_maintenanceKey);

    // キーが更新された際に最新の値を取得する
    yield* remoteConfig.onConfigUpdated
        .where((snapshot) => snapshot.updatedKeys.contains(_maintenanceKey))
        .asyncMap((snapshot) async {
      await remoteConfig.activate();
      return remoteConfig.getBool(_maintenanceKey);
    });
  }

  @override
  Future<bool> isMaintenanceMode() => _fetchBool(_maintenanceKey);
}

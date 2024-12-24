import 'package:cores_domain/core.dart';
import 'package:infrastructure_firebase/src/common/enum/remote_configs.dart';
import 'package:infrastructure_firebase/src/common/state/remote_config_provider.dart';
import 'package:riverpod/riverpod.dart';

class RemoteConfigAppMaintenanceRepository extends AppMaintenanceRepository {
  const RemoteConfigAppMaintenanceRepository(this.ref);

  final Ref ref;

  @override
  Future<bool> fetchMaintenanceMode() async {
    final remoteConfig = await ref.watch(remoteConfigProvider.future);
    return remoteConfig.getBool(RemoteConfigs.maintenance.key);
  }

  @override
  Stream<bool> listenMaintenanceMode() async* {
    final remoteConfig = await ref.watch(remoteConfigProvider.future);

    // 初回は単純に取得
    final key = RemoteConfigs.maintenance.key;
    yield remoteConfig.getBool(key);

    // キーが更新された際に最新の値を取得する
    yield* remoteConfig.onConfigUpdated
        .where(
      (snapshot) => snapshot.updatedKeys.contains(key),
    )
        .asyncMap((snapshot) async {
      await remoteConfig.activate();
      return remoteConfig.getBool(key);
    });
  }
}

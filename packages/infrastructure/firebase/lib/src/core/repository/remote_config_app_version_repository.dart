import 'package:cores_domain/core.dart';
import 'package:infrastructure_firebase/src/common/enum/remote_configs.dart';
import 'package:infrastructure_firebase/src/common/state/remote_config_provider.dart';
import 'package:riverpod/riverpod.dart';
import 'package:version/version.dart';

class RemoteConfigAppVersionRepository extends AppVersionRepository {
  const RemoteConfigAppVersionRepository(this.ref);

  final Ref ref;

  @override
  Future<Version> fetchForceUpdateAppVersion() =>
      _fetchVersion(RemoteConfigs.forceUpdateAppVersion);

  @override
  Future<Version> fetchLatestAppVersion() =>
      _fetchVersion(RemoteConfigs.latestAppVersion);

  /// バージョンを取得する
  Future<Version> _fetchVersion(RemoteConfigs<String> config) async {
    final str = await ref.watch(stringConfigProvider(config: config).future);
    if (str.isEmpty) {
      return Version.parse(config.defaultValue);
    }

    return Version.parse(str);
  }
}

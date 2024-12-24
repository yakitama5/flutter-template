import 'package:cores_domain/core.dart';
import 'package:riverpod/riverpod.dart';
import 'package:version/version.dart';

const String _forceUpdateAppVersionKey = 'force_update_app_version';
const String _latestAppVersionKey = 'latest_app_version';

class RemoteConfigAppVersionRepository extends AppVersionRepository {
  const RemoteConfigAppVersionRepository(this.ref);

  final Ref ref;

  @override
  Future<Version?> fetchForceUpdateAppVersion() =>
      _fetchVersion(_forceUpdateAppVersionKey);

  @override
  Future<Version?> fetchLatestAppVersion() =>
      _fetchVersion(_latestAppVersionKey);

  /// バージョンを取得する
  Future<Version?> _fetchVersion(String key) async {
    final str = await _fetchString(key);
    if (str.isEmpty) {
      return null;
    }

    return Version.parse(str);
  }

  /// 文字列型を取得する
  Future<String> _fetchString(String key) async {
    final remoteConfig = await ref.watch(remoteConfigProvider.future);
    return remoteConfig.getString(key);
  }
}

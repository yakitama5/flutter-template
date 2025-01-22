import 'package:cores_domain/src/core/interface/app_version_repository.dart';
import 'package:cores_domain/src/core/state/app_build_config_provider.dart';
import 'package:cores_domain/src/core/value_object/app_update_status.dart';
import 'package:cores_domain/src/util/logger.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_update_status_provider.g.dart';

@riverpod
Future<AppUpdateStatus> appUpdateStatus(Ref ref) async {
  // 現在のアプリ情報を取得
  final appVersion = ref.watch(appBuildConfigProvider.select((e) => e.version));

  // バージョン情報を取得
  final repository = ref.watch(appVersionRepositoryProvider);
  final forceUpdateAppVersion = await repository.fetchForceUpdateAppVersion();
  final latestAppVersion = await repository.fetchLatestAppVersion();

  // 比較してステータスを返却
  if (appVersion < forceUpdateAppVersion) {
    logger.d('Update Required');
    return AppUpdateStatus.updateRequired;
  } else if (appVersion < latestAppVersion) {
    logger.d('Update Possible');
    return AppUpdateStatus.updatePossible;
  }

  logger.d('Using Latest');
  return AppUpdateStatus.usingLatest;
}

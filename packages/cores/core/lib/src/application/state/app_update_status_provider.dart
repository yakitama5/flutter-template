import 'package:cores_core/application.dart';
import 'package:cores_core/src/application/model/app_update_status.dart';
import 'package:cores_core/src/domain/interface/app_version_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_update_status_provider.g.dart';

@riverpod
Future<AppUpdateStatus> appUpdateStatus(AppUpdateStatusRef ref) async {
  // 現在のアプリ情報を取得
  final appVersion = ref.watch(appBuildConfigProvider.select((e) => e.version));

  // バージョン情報を取得
  final repository = ref.watch(appVersionRepositoryProvider);
  final forceUpdateAppVersion = await repository.fetchForceUpdateAppVersion();
  final latestAppVersion = await repository.fetchLatestAppVersion();

  // 比較してステータスを返却
  if (appVersion < forceUpdateAppVersion) {
    return AppUpdateStatus.updateRequired;
  } else if (appVersion < latestAppVersion) {
    return AppUpdateStatus.updatePossible;
  }
  return AppUpdateStatus.usingLatest;
}

import 'package:cores_core/domain.dart';
import 'package:features_app_update/domain.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:version/version.dart';

void main() {
  group('アプリ更新ステータスチェック', () {
    // リポジトリのDI
    final groupOverride = [
      appVersionRepositoryProvider.overrideWithValue(_MockRepository()),
    ];
    // デフォルトのAppConfig
    final defaultConfig = AppBuildConfig(
      flavor: Flavor.dev,
      appName: 'appName',
      packageName: 'packageName',
      version: Version(0, 0, 0),
      buildNumber: 'buildNumber',
      buildSignature: 'buildSignature',
    );

    test('ステータス：最新', () async {
      final container = ProviderContainer(
        overrides: [
          ...groupOverride,
          appBuildConfigProvider.overrideWithValue(
            defaultConfig.copyWith(version: Version(2, 0, 0)),
          ),
        ],
      );

      final actual = await container.read(appUpdateStatusProvider.future);
      expect(actual, AppUpdateStatus.usingLatest);
    });

    test('ステータス：更新可能', () async {
      final container = ProviderContainer(
        overrides: [
          ...groupOverride,
          appBuildConfigProvider.overrideWithValue(
            defaultConfig.copyWith(version: Version(1, 5, 0)),
          ),
        ],
      );

      final actual = await container.read(appUpdateStatusProvider.future);
      expect(actual, AppUpdateStatus.updatePossible);
    });

    test('ステータス：更新必須', () async {
      final container = ProviderContainer(
        overrides: [
          ...groupOverride,
          appBuildConfigProvider.overrideWithValue(
            defaultConfig.copyWith(version: Version(0, 9, 0)),
          ),
        ],
      );

      final actual = await container.read(appUpdateStatusProvider.future);
      expect(actual, AppUpdateStatus.updateRequired);
    });
  });
}

class _MockRepository extends AppVersionRepository {
  @override
  Future<Version?> fetchForceUpdateAppVersion() {
    return Future.value(Version(1, 0, 0));
  }

  @override
  Future<Version?> fetchLatestAppVersion() {
    return Future.value(Version(2, 0, 0));
  }
}

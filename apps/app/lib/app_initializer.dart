import 'dart:async';

import 'package:cores_core/application.dart';
import 'package:cores_core/util.dart';
import 'package:package_info_plus/package_info_plus.dart';

typedef InitializedValues = ({
  AppBuildConfig buildConfig,
});

final class AppInitializer {
  AppInitializer._();

  static Future<InitializedValues> initialize() async {
    final buildConfig = await _initializeBuildConfig();

    logger.info(buildConfig);
    return (buildConfig: buildConfig);
  }

  static Future<AppBuildConfig> _initializeBuildConfig() async {
    final packageInfo = await PackageInfo.fromPlatform();

    return AppBuildConfig(
      flavor: Flavor.values.byName(const String.fromEnvironment('flavor')),
      appName: packageInfo.appName,
      packageName: packageInfo.packageName,
      version: packageInfo.version,
      buildNumber: packageInfo.buildNumber,
      buildSignature: packageInfo.buildSignature,
      installerStore: packageInfo.installerStore,
    );
  }
}

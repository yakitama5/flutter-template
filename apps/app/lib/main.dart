import 'package:cores_core/application.dart';
import 'package:cores_designsystem/i18n.dart';
import 'package:cores_designsystem/init.dart';
import 'package:cores_error/i18n.dart';
import 'package:cores_firebase/init.dart';
import 'package:cores_shared_preferences/init.dart';
import 'package:device_preview/device_preview.dart';
import 'package:features_app_update/i18n.dart';
import 'package:features_app_update/init.dart';
import 'package:features_goods/i18n.dart';
import 'package:features_goods/init.dart';
import 'package:features_maintenance/i18n.dart';
import 'package:features_maintenance/init.dart';
import 'package:features_setting/i18n.dart';
import 'package:features_user/i18n.dart';
import 'package:features_user/init.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';

import 'app_initializer.dart';
import 'i18n/strings.g.dart';
import 'src/application/state/initial_location_provider.dart';
import 'src/presentation/app.dart';
import 'src/presentation/router/state/router_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initializer
  final (buildConfig: buildConfig) = await AppInitializer.initialize();
  await FirebaseInitializer.initialize(buildConfig.flavor);

  // Slang
  LocaleSettings.useDeviceLocale();

  runApp(
    ProviderScope(
      overrides: [
        // 各パッケージのDI
        ...await initializeSharedPreferencesProviders(),
        ...await initializeDesignsystemProviders(),
        ...await initializeAppUpdateProviders(),
        ...await initializeMaintenanceProviders(),
        ...await initializeUserProviders(),
        ...await initializeGoodsProviders(),

        // アプリ特有の設定
        appBuildConfigProvider.overrideWithValue(buildConfig),
        initialLocationProvider.overrideWithValue(RootRoute.path),
      ],
      child: Nested(
        children: const [
          // Slangの伝播
          _AppTranslationProvider(),
          GoodsTranslationProvider(),
          AppUpdateTranslationProvider(),
          MaintenanceTranslationProvider(),
          UserTranslationProvider(),
          ErrorTranslationProvider(),
          SettingsTranslationProvider(),
          DesignsystemTranslationProvider(),
        ],
        child: DevicePreview(
          enabled: const bool.fromEnvironment('devicePreview'),
          builder: (context) => const MainApp(),
        ),
      ),
    ),
  );
}

class _AppTranslationProvider extends SingleChildStatelessWidget {
  const _AppTranslationProvider();

  @override
  Widget buildWithChild(BuildContext context, Widget? child) =>
      TranslationProvider(
        child: child ?? const SizedBox.shrink(),
      );
}

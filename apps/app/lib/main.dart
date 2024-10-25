import 'package:cores_core/application.dart';
import 'package:cores_core/presentation.dart';
import 'package:cores_designsystem/application.dart';
import 'package:cores_designsystem/i18n.dart';
import 'package:cores_designsystem/init.dart';
import 'package:cores_designsystem/presentation.dart';
import 'package:cores_error/application.dart';
import 'package:cores_error/i18n.dart';
import 'package:cores_firebase/init.dart';
import 'package:cores_shared_preferences/init.dart';
import 'package:device_preview/device_preview.dart';
import 'package:features_app_update/i18n.dart';
import 'package:features_app_update/init.dart';
import 'package:features_app_update/presentation.dart';
import 'package:features_goods/i18n.dart';
import 'package:features_goods/init.dart';
import 'package:features_maintenance/i18n.dart';
import 'package:features_maintenance/init.dart';
import 'package:features_setting/i18n.dart';
import 'package:features_user/i18n.dart';
import 'package:features_user/init.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app_initializer.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_app/src/application/state/initial_location_provider.dart';
import 'package:flutter_app/src/presentation/router/state/router_provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';

import 'src/presentation/components/device_preview_wrapper.dart';

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
          enabled: kIsWeb && !kReleaseMode,
          builder: (context) => const MainApp(),
        ),
      ),
    ),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // テーマ設定
    final themeMode = ref.watch(themeModeProvider);
    final uiStyle = ref.watch(uiStyleProvider);
    final lightTheme =
        ref.watch(appThemeProvider(brightness: Brightness.light));
    final darkTheme = ref.watch(appThemeProvider(brightness: Brightness.dark));

    ref
        // エラー検知
        // TODO(yakitama5): アプリ全体の例外管理に応じて変更検討(mixinかriverpod)
        .listen<AppException?>(
      appExceptionNotifierProvider,
      (_, appException) {
        if (appException != null) {
          SnackBarManager.showErrorSnackBar(
            'An error occurred: ${appException.message}',
          );
          ref.read(appExceptionNotifierProvider.notifier).consume();
        }
      },
    );

    return MaterialApp.router(
      builder: (_, child) => Nested(
        children: const [
          // レスポンシブデザイン
          ResponsiveAutoScaleBox(),
          // 共通のローディング表示
          LoaderOverlay(),
          // アプリアップデートチェック
          AppUpdateListner(),

          // デバッグ用
          DevicePreviewSingleChildContainer(),
        ],
        child: child,
      ),

      // Slang
      locale: DevicePreview.locale(context) ??
          TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,

      scaffoldMessengerKey: SnackBarManager.rootScaffoldMessengerKey,
      routerConfig: ref.watch(routerProvider),
      theme: lightTheme.copyWith(platform: uiStyle.platform),
      darkTheme: darkTheme.copyWith(platform: uiStyle.platform),
      themeMode: themeMode,
    );
  }
}

class _AppTranslationProvider extends SingleChildStatelessWidget {
  const _AppTranslationProvider();

  @override
  Widget buildWithChild(BuildContext context, Widget? child) =>
      TranslationProvider(
        child: child ?? const SizedBox.shrink(),
      );
}

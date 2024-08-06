import 'package:features_app_update/i18n.dart';
import 'package:cores_core/application.dart';
import 'package:cores_core/domain.dart';
import 'package:cores_core/infrastructure.dart';
import 'package:cores_core/presentation.dart';
import 'package:cores_core/util.dart';
import 'package:cores_designsystem/application.dart';
import 'package:cores_designsystem/i18n.dart';
import 'package:cores_firebase/infrastructure.dart';
import 'package:cores_init/provider.dart';
import 'package:features_maintenance/domain.dart';
import 'package:features_maintenance/i18n.dart';
import 'package:features_maintenance/infrastructure.dart';
import 'package:features_setting/i18n.dart';
import 'package:features_user/i18n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app_initializer.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_app/src/application/state/initial_location_provider.dart';
import 'package:flutter_app/src/presentation/router/state/router_provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';

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
        ...await initializeProviders(),
        appBuildConfigProvider.overrideWithValue(buildConfig),

        // 初期ページの設定
        initialLocationProvider.overrideWithValue(HomePageRoute.path),

        // Firebase
        appMaintenanceRepositoryProvider
            .overrideWith(RemoteConfigAppMaintenanceRepository.new),
        appVersionRepositoryProvider
            .overrideWith(RemoteConfigAppVersionRepository.new),
      ],
      child: Nested(
        children: const [
          // Slangの伝播
          _AppTranslationProvider(),
          AppUpdateTranslationProvider(),

          MaintenanceTranslationProvider(),

          UserTranslationProvider(),
          SettingsTranslationProvider(),
          DesignsystemTranslationProvider(),
        ],
        child: const MainApp(),
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
      ..listen<AppException?>(
        appExceptionNotifierProvider,
        (_, appException) {
          if (appException != null) {
            SnackBarManager.showErrorSnackBar(
              'An error occurred: ${appException.message}',
            );
            ref.read(appExceptionNotifierProvider.notifier).consume();
          }
        },
      )
      // アップデート検知
      ..listen(appUpdateStatusProvider, (_, snapshot) {
        if (!snapshot.hasValue) {
          return;
        }

        final status = snapshot.value!;
        switch (status) {
          case AppUpdateStatus.updateRequired:
            logger.i('updateRequired');
          case AppUpdateStatus.updatePossible:
            logger.i('updatePossible');
          case AppUpdateStatus.usingLatest:
            logger.i('usingLatest');
        }
      });

    return MaterialApp.router(
      // Slang
      locale: TranslationProvider.of(context).flutterLocale,
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

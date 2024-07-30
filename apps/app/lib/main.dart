import 'package:cores_core/app_status.dart';
import 'package:cores_core/exception.dart';
import 'package:cores_core/provider.dart';
import 'package:cores_core/ui.dart';
import 'package:cores_designsystem/application.dart';
import 'package:cores_designsystem/i18n.dart';
import 'package:cores_firebase/infrastructure.dart';
import 'package:cores_init/provider.dart';
import 'package:features_auth/i18n.dart';
import 'package:features_setting/i18n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app_initializer.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_app/router/provider/router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initializer
  final (buildConfig: buildConfig) = await AppInitializer.initialize();
  await FirebaseInitializer.initialize(buildConfig.flavor);

  // Slang
  await LocaleSettings.useDeviceLocale();

  runApp(
    ProviderScope(
      overrides: [
        ...await initializeProviders(),
        buildConfigProvider.overrideWithValue(buildConfig),
      ],
      child: Nested(children: [
        // Slangの伝播
        _AppTranslationProvider(),
        AuthTranslationProvider(),

        SettingsTranslationProvider(),
        DesignsystemTranslationProvider()
      ], child: const MainApp()),
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

    ref.listen<AppException?>(
      appExceptionNotifierProvider,
      (_, appException) {
        if (appException != null) {
          SnackBarManager.showSnackBar(
            'An error occurred: ${appException.message}',
          );
          ref.read(appExceptionNotifierProvider.notifier).consume();
        }
      },
    );

    ref.listen<AppStatus>(appStatusProvider, (_, appStatus) {
      final forceUpdateEnabled = appStatus.forceUpdateStatus.enabled;
      if (forceUpdateEnabled) {
        SnackBarManager.showSnackBar(
          'Force Update is required.',
        );
        ref.read(forceUpdateProvider.notifier).disable();
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
        child: child ?? SizedBox.shrink(),
      );
}

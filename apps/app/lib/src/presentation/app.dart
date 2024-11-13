import 'package:cores_core/presentation.dart';
import 'package:cores_designsystem/application.dart';
import 'package:cores_designsystem/presentation.dart';
import 'package:device_preview/device_preview.dart';
import 'package:features_app_update/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';

import 'components/device_preview_wrapper.dart';
import 'router/state/router_provider.dart';

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

    return MaterialApp.router(
      builder: (_, child) => Nested(
        children: const [
          ResponsiveAutoScaleBox(),
          LoaderOverlay(),
          AppUpdateListner(),
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

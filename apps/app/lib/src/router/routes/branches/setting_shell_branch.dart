import 'package:cores_designsystem/common_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/settings/pages/settings_account_page.dart';
import 'package:flutter_app/src/settings/pages/settings_page.dart';
import 'package:flutter_app/src/settings/pages/settings_theme_color_page.dart';
import 'package:flutter_app/src/settings/pages/settings_theme_mode_page.dart';
import 'package:flutter_app/src/settings/pages/settings_ui_style_page.dart';
import 'package:go_router/go_router.dart';

final settingsNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'settings');

const settingShellBranch = TypedStatefulShellBranch<SettingShellBranch>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<SettingPageRoute>(
      path: SettingPageRoute.path,
      routes: [
        TypedGoRoute<SettingsAccountPageRoute>(
          path: SettingsAccountPageRoute.path,
        ),
        TypedGoRoute<SettingsUiStylePageRoute>(
          path: SettingsUiStylePageRoute.path,
        ),
        TypedGoRoute<SettingsThemeColorPageRoute>(
          path: SettingsThemeColorPageRoute.path,
        ),
        TypedGoRoute<SettingsThemeModePageRoute>(
          path: SettingsThemeModePageRoute.path,
        ),
        TypedGoRoute<LicensePageRoute>(
          path: LicensePageRoute.path,
        ),
      ],
    ),
  ],
);

class SettingShellBranch extends StatefulShellBranchData {
  const SettingShellBranch();
}

class SettingPageRoute extends GoRouteData {
  const SettingPageRoute();

  static final GlobalKey<NavigatorState> $navigatorKey = settingsNavigatorKey;
  static const path = '/setting';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsPage();
}

class LicensePageRoute extends GoRouteData {
  const LicensePageRoute();

  static const path = 'license';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return LicensePage(
      applicationIcon: CommonAssets.images.logo.image(height: 120, width: 120),
    );
  }
}

class SettingsAccountPageRoute extends GoRouteData {
  const SettingsAccountPageRoute();

  static const path = 'account';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsAccountPage();
}

class SettingsUiStylePageRoute extends GoRouteData {
  const SettingsUiStylePageRoute();

  static const path = 'ui_style';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsUiStylePage();
}

class SettingsThemeColorPageRoute extends GoRouteData {
  const SettingsThemeColorPageRoute();

  static const path = 'color_style';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsThemeColorPage();
}

class SettingsThemeModePageRoute extends GoRouteData {
  const SettingsThemeModePageRoute();

  static const path = 'theme_mode';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsThemeModePage();
}

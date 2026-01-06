import 'package:designsystem/common_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/router/routes/base_shell_route.dart';
import 'package:flutter_app/src/settings/pages/settings_account_page.dart';
import 'package:flutter_app/src/settings/pages/settings_page.dart';
import 'package:flutter_app/src/settings/pages/settings_theme_color_page.dart';
import 'package:flutter_app/src/settings/pages/settings_theme_mode_page.dart';
import 'package:flutter_app/src/settings/pages/settings_ui_style_page.dart';
import 'package:go_router/go_router.dart';

final settingsNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'settings');

const settingShellBranch = TypedStatefulShellBranch<SettingShellBranch>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<SettingPageRouteData>(
      path: SettingPageRouteData.path,
      routes: [
        TypedGoRoute<SettingsAccountPageRouteData>(
          path: SettingsAccountPageRouteData.path,
        ),
        TypedGoRoute<SettingsUiStylePageRouteData>(
          path: SettingsUiStylePageRouteData.path,
        ),
        TypedGoRoute<SettingsThemeColorPageRouteData>(
          path: SettingsThemeColorPageRouteData.path,
        ),
        TypedGoRoute<SettingsThemeModePageRouteData>(
          path: SettingsThemeModePageRouteData.path,
        ),
        TypedGoRoute<LicensePageRouteData>(path: LicensePageRouteData.path),
      ],
    ),
  ],
);

class SettingShellBranch extends StatefulShellBranchData {
  const SettingShellBranch();
}

class SettingPageRouteData extends GoRouteData with $SettingPageRouteData {
  const SettingPageRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = settingsNavigatorKey;
  static const path = '/setting';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsPage();
}

class LicensePageRouteData extends GoRouteData with $LicensePageRouteData {
  const LicensePageRouteData();

  static const path = 'license';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return LicensePage(
      applicationIcon: CommonAssets.images.logo.image(height: 120, width: 120),
    );
  }
}

class SettingsAccountPageRouteData extends GoRouteData
    with $SettingsAccountPageRouteData {
  const SettingsAccountPageRouteData();

  static const path = 'account';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsAccountPage();
}

class SettingsUiStylePageRouteData extends GoRouteData
    with $SettingsUiStylePageRouteData {
  const SettingsUiStylePageRouteData();

  static const path = 'ui_style';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsUiStylePage();
}

class SettingsThemeColorPageRouteData extends GoRouteData
    with $SettingsThemeColorPageRouteData {
  const SettingsThemeColorPageRouteData();

  static const path = 'color_style';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsThemeColorPage();
}

class SettingsThemeModePageRouteData extends GoRouteData
    with $SettingsThemeModePageRouteData {
  const SettingsThemeModePageRouteData();

  static const path = 'theme_mode';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsThemeModePage();
}

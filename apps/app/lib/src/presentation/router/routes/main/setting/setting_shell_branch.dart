part of 'package:flutter_app/src/presentation/router/state/router_provider.dart';

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
        TypedGoRoute<SettingsColorStylePageRoute>(
          path: SettingsColorStylePageRoute.path,
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

final class _SettingsPageNavigatorImpl implements SettingsPageNavigator {
  const _SettingsPageNavigatorImpl();

  @override
  void goLicensePage(BuildContext context) {
    const LicensePageRoute().go(context);
  }

  @override
  void goColorStylePage(BuildContext context) =>
      const SettingsColorStylePageRoute().go(context);

  @override
  void goThemeModePage(BuildContext context) =>
      const SettingsThemeModePageRoute().go(context);

  @override
  void goUiStylePage(BuildContext context) =>
      const SettingsUiStylePageRoute().go(context);

  @override
  void goAccountPage(BuildContext context) {
    const SettingsAccountPageRoute().go(context);
  }
}

class SettingPageRoute extends GoRouteData {
  const SettingPageRoute();

  static const path = '/setting';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ProviderScope(
      overrides: [
        settingsPageNavigatorProvider.overrideWithValue(
          const _SettingsPageNavigatorImpl(),
        ),
      ],
      child: const SettingsPage(),
    );
  }
}

class LicensePageRoute extends GoRouteData {
  const LicensePageRoute();

  static const path = 'license';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return LicensePage(
      applicationIcon: CommonAssets.yumemiLogo.image(height: 100, width: 100),
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

class SettingsColorStylePageRoute extends GoRouteData {
  const SettingsColorStylePageRoute();

  static const path = 'color_style';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsColorStylePage();
}

class SettingsThemeModePageRoute extends GoRouteData {
  const SettingsThemeModePageRoute();

  static const path = 'theme_mode';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsThemeModePage();
}

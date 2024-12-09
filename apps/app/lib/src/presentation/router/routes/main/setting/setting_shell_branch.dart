part of 'package:flutter_app/src/presentation/router/state/router_provider.dart';

final _settingsNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'settings');

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

final class _SettingsPageNavigatorImpl implements SettingsPageNavigator {
  const _SettingsPageNavigatorImpl();

  @override
  void goLicensePage(BuildContext context) {
    const LicensePageRoute().go(context);
  }

  @override
  void goThemeColorPage(BuildContext context) =>
      const SettingsThemeColorPageRoute().go(context);

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

  static final GlobalKey<NavigatorState> $navigatorKey = _settingsNavigatorKey;
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
      applicationIcon: CommonAssets.images.logo.image(height: 100, width: 100),
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

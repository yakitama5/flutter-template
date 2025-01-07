import 'package:cores_designsystem/keys.dart';
import 'package:cores_designsystem/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/home/pages/onboard_page.dart';
import 'package:flutter_app/src/router/routes/branches/home_shell_branch.dart';
import 'package:flutter_app/src/router/routes/branches/search_shell_branch.dart';
import 'package:flutter_app/src/router/routes/branches/setting_shell_branch.dart';
import 'package:flutter_app/src/router/routes/navigator_page.dart';
import 'package:go_router/go_router.dart';

part 'base_shell_route.g.dart';

final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

@TypedShellRoute<BaseShellSroute>(
  routes: [
    TypedGoRoute<RootRoute>(path: RootRoute.path),
    TypedGoRoute<OnboardRoute>(path: OnboardRoute.path),
    TypedGoRoute<MaintenancePageRoute>(path: MaintenancePageRoute.path),
    TypedStatefulShellRoute<NavigatorPageShellRoute>(
      branches: [
        homeShellBranch,
        searchShellBranch,
        settingShellBranch,
      ],
    ),
  ],
)
class BaseShellSroute extends ShellRouteData {
  static final GlobalKey<NavigatorState> $navigatorKey = rootNavigatorKey;

  // ルート設定のために定義だけ
  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) =>
      navigator;
}

class RootRoute extends GoRouteData {
  const RootRoute();

  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      // ぐるぐる回すだけ
      const Scaffold(
        body: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      );
}

class OnboardRoute extends GoRouteData {
  const OnboardRoute();

  static const path = '/onboard';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const OnboardPage();
}

class NavigatorPageShellRoute extends StatefulShellRouteData {
  const NavigatorPageShellRoute();

  static final GlobalKey<NavigatorState> $navigatorKey = _shellNavigatorKey;

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return NavigatorPage(navigationShell: navigationShell);
  }
}

class MaintenancePageRoute extends GoRouteData {
  const MaintenancePageRoute();

  static const path = '/maintenance';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage<Page<dynamic>>(
      child: MaintenancePage(),
    );
  }
}

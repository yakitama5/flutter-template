import 'package:designsystem/keys.dart';
import 'package:designsystem/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/home/pages/onboard_page.dart';
import 'package:flutter_app/src/router/routes/branches/home_shell_branch.dart';
import 'package:flutter_app/src/router/routes/branches/search_shell_branch.dart';
import 'package:flutter_app/src/router/routes/branches/setting_shell_branch.dart';
import 'package:flutter_app/src/router/routes/navigator_page.dart';
import 'package:go_router/go_router.dart';

part 'base_shell_route.g.dart';

final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'shell',
);

@TypedShellRoute<BaseShellRouteData>(
  routes: [
    TypedGoRoute<RootRouteData>(path: RootRouteData.path),
    TypedGoRoute<OnboardRouteData>(path: OnboardRouteData.path),
    TypedGoRoute<MaintenancePageRouteData>(path: MaintenancePageRouteData.path),
    TypedStatefulShellRoute<NavigatorPageShellRouteData>(
      branches: [homeShellBranch, searchShellBranch, settingShellBranch],
    ),
  ],
)
class BaseShellRouteData extends ShellRouteData {
  static final GlobalKey<NavigatorState> $navigatorKey = rootNavigatorKey;

  // ルート設定のために定義だけ
  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) =>
      navigator;
}

class RootRouteData extends GoRouteData with $RootRouteData {
  const RootRouteData();

  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      // ぐるぐる回すだけ
      const Scaffold(body: Center(child: CircularProgressIndicator.adaptive()));
}

class OnboardRouteData extends GoRouteData with $OnboardRouteData {
  const OnboardRouteData();

  static const path = '/onboard';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const OnboardPage();
}

class NavigatorPageShellRouteData extends StatefulShellRouteData {
  const NavigatorPageShellRouteData();

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

class MaintenancePageRouteData extends GoRouteData
    with $MaintenancePageRouteData {
  const MaintenancePageRouteData();

  static const path = '/maintenance';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage<Page<dynamic>>(child: MaintenancePage());
  }
}

part of 'package:flutter_app/src/presentation/router/state/router_provider.dart';

final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

@TypedShellRoute<BaseShellSroute>(
  routes: [
    TypedGoRoute<RootRoute>(path: RootRoute.path),
    TypedGoRoute<OnboardRoute>(path: OnboardRoute.path),
    TypedStatefulShellRoute<NavigatorPageShellRoute>(
      branches: [
        homeShellBranch,
        settingShellBranch,
      ],
    ),
  ],
)
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

  // TODO(yakitama5): Onboardページを作ってページを設定する
  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}

// ルート設定のために定義だけ
class BaseShellSroute extends ShellRouteData {
  static final GlobalKey<NavigatorState> $navigatorKey = _rootNavigatorKey;

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) =>
      navigator;
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

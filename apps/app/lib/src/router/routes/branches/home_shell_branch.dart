import 'package:flutter/material.dart';
import 'package:flutter_app/src/home/pages/home_page.dart';
import 'package:go_router/go_router.dart';

final homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');

const homeShellBranch = TypedStatefulShellBranch<HomeShellBranch>(
  routes: [
    TypedGoRoute<HomePageRoute>(
      path: HomePageRoute.path,
    ),
  ],
);

class HomeShellBranch extends StatefulShellBranchData {
  const HomeShellBranch();
}

class HomePageRoute extends GoRouteData {
  const HomePageRoute();

  static final GlobalKey<NavigatorState> $navigatorKey = homeNavigatorKey;
  static const path = '/home';

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}

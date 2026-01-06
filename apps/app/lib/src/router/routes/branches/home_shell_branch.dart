import 'package:flutter/material.dart';
import 'package:flutter_app/src/home/pages/home_page.dart';
import 'package:flutter_app/src/router/routes/base_shell_route.dart';
import 'package:go_router/go_router.dart';

final homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');

const homeShellBranch = TypedStatefulShellBranch<HomeShellBranch>(
  routes: [TypedGoRoute<HomePageRouteData>(path: HomePageRouteData.path)],
);

class HomeShellBranch extends StatefulShellBranchData {
  const HomeShellBranch();
}

class HomePageRouteData extends GoRouteData with $HomePageRouteData {
  const HomePageRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = homeNavigatorKey;
  static const path = '/home';

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}

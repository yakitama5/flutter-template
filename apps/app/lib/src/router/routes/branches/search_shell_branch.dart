import 'package:flutter/material.dart';
import 'package:flutter_app/src/goods/pages/goods_page.dart';
import 'package:go_router/go_router.dart';

final searchNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'search');

const searchShellBranch = TypedStatefulShellBranch<SearchShellBranch>(
  routes: [
    TypedGoRoute<GoodsPageRoute>(
      path: GoodsPageRoute.path,
    ),
  ],
);

class SearchShellBranch extends StatefulShellBranchData {
  const SearchShellBranch();
}

class GoodsPageRoute extends GoRouteData {
  const GoodsPageRoute();

  static const path = '/goods';

  @override
  Widget build(BuildContext context, GoRouterState state) => const GoodsPage();
}

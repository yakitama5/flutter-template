import 'package:flutter/material.dart';
import 'package:flutter_app/src/goods/pages/goods_page.dart';
import 'package:flutter_app/src/router/routes/base_shell_route.dart';
import 'package:go_router/go_router.dart';

final searchNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'search');

const searchShellBranch = TypedStatefulShellBranch<SearchShellBranch>(
  routes: [TypedGoRoute<GoodsPageRouteData>(path: GoodsPageRouteData.path)],
);

class SearchShellBranch extends StatefulShellBranchData {
  const SearchShellBranch();
}

class GoodsPageRouteData extends GoRouteData with $GoodsPageRouteData {
  const GoodsPageRouteData();

  static const path = '/goods';

  @override
  Widget build(BuildContext context, GoRouterState state) => const GoodsPage();
}

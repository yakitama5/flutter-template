part of 'package:flutter_app/src/presentation/router/state/router_provider.dart';

final _homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');

const homeShellBranch = TypedStatefulShellBranch<HomeShellBranch>(
  routes: [
    TypedGoRoute<HomePageRoute>(
      path: HomePageRoute.path,
      routes: [
        TypedGoRoute<WebPageRoute>(
          path: WebPageRoute.path,
        ),
        TypedGoRoute<SampleListPageRoute>(
          path: SampleListPageRoute.path,
        ),
      ],
    ),
  ],
);

class HomeShellBranch extends StatefulShellBranchData {
  const HomeShellBranch();
}

final class _HomePageNavigatorImpl implements HomePageNavigator {
  const _HomePageNavigatorImpl();

  @override
  void goSampleListPage(BuildContext context) {
    const SampleListPageRoute().go(context);
  }
}

class HomePageRoute extends GoRouteData {
  const HomePageRoute();

  static final GlobalKey<NavigatorState> $navigatorKey = _homeNavigatorKey;
  static const path = '/home';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return CustomAppLifecycleListener(
      onResume: () {
        // Example: Obtain the latest AppStatus and update if needed.
      },
      // By overriding the Provider in the Route build method, it is possible to
      // switch the implementation of Navigator based on the source of
      // navigation or the state.
      child: ProviderScope(
        overrides: [
          homePageNavigatorProvider
              .overrideWithValue(const _HomePageNavigatorImpl()),
        ],
        child: const HomePage(),
      ),
    );
  }
}

class SampleListPageRoute extends GoRouteData {
  const SampleListPageRoute();

  static const path = 'sample_list';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SampleListPage();
}

part of 'package:flutter_app/src/presentation/router/state/router_provider.dart';

final _homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');

const homeShellBranch = TypedStatefulShellBranch<HomeShellBranch>(
  routes: [
    TypedGoRoute<HomePageRoute>(
      path: HomePageRoute.path,
      routes: [
        TypedGoRoute<DebugPageRoute>(
          path: DebugPageRoute.path,
          routes: [
            TypedGoRoute<NavigationDebugPageRoute>(
              path: NavigationDebugPageRoute.path,
            ),
          ],
        ),
        TypedGoRoute<WebPageRoute>(
          path: WebPageRoute.path,
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
  void goDebugPage(BuildContext context) {
    const DebugPageRoute().go(context);
  }

  @override
  void goWebPage(BuildContext context) {
    const WebPageRoute().go(context);
  }
}

final class _GithubRepositoryListPageNavigatorImpl
    implements GitHubRepositoryListPageNavigator {
  const _GithubRepositoryListPageNavigatorImpl();

  @override
  void goGitHubRepositoryDetailPage(
    BuildContext context,
    String repositoryName,
    String? description,
  ) {
    GitHubRepositoryDetailPageRoute(repositoryName, description).go(context);
  }
}

class HomePageRoute extends GoRouteData {
  const HomePageRoute();

  static final GlobalKey<NavigatorState> $navigatorKey = _homeNavigatorKey;
  static const path = 'home';

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
          gitHubRepositoryListPageNavigatorProvider.overrideWithValue(
            const _GithubRepositoryListPageNavigatorImpl(),
          ),
        ],
        child: const HomePage(),
      ),
    );
  }
}

class GitHubRepositoryDetailPageRoute extends GoRouteData {
  const GitHubRepositoryDetailPageRoute(this.repositoryName, this.description);

  final String repositoryName;
  final String? description;

  static const path = 'github_repository_detail';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample'),
      ),
    );
  }
}

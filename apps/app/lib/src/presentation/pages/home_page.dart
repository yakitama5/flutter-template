import 'package:features_github_repository/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../router/navigator/navigator_provider.dart';

abstract interface class HomePageNavigator {
  void goDebugPage(BuildContext context);
  void goWebPage(BuildContext context);
}

class HomePage extends ConsumerWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigator = ref.watch(homePageNavigatorProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.app.homePage.title),
        actions: [
          IconButton(
            onPressed: () => navigator.goDebugPage(context),
            icon: const Icon(
              Icons.construction,
            ),
          ),
          IconButton(
            onPressed: () => navigator.goWebPage(context),
            icon: const Icon(
              Icons.web,
            ),
          ),
        ],
      ),
      body: const GitHubRepositoryListPage(),
    );
  }
}

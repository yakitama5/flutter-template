import 'package:cores_designsystem/theme_extensions.dart';
import 'package:features_github_repository/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ui/provider/navigator_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
        // TODO(yakitama5): Slang対応
        title: Text('タイトル'),
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
        iconTheme: IconTheme.of(context).copyWith(
          color: context.appColors.icon,
        ),
      ),
      body: const GitHubRepositoryListPage(),
    );
  }
}

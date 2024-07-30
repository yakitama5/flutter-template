import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// ignore: one_member_abstracts
abstract interface class GitHubRepositoryListPageNavigator {
  void goGitHubRepositoryDetailPage(
    BuildContext context,
    String repositoryName,
    String? description,
  );
}

class GitHubRepositoryListPage extends HookConsumerWidget {
  const GitHubRepositoryListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      key: const PageStorageKey('pageBasedView'),
      itemCount: 50,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Item$index'),
        );
      },
    );
  }
}

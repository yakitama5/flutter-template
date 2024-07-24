import 'package:features_github_repository/data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MainPage extends ConsumerWidget {
  const MainPage({
    required this.navigationShell,
    super.key,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        destinations: [
          NavigationDestination(
            // TODO(yakitama5): Slagn対応
            label: 'Home',
            icon: const Icon(Icons.home),
          ),
          NavigationDestination(
            // TODO(yakitama5): Slagn対応
            label: 'Settings',
            icon: const Icon(Icons.settings),
          ),
        ],
        onDestinationSelected: (index) async {
          final canPop = GoRouter.of(context).canPop();
          if (navigationShell.currentIndex == index && !canPop) {
            ref.read(scrollNotifierProvider.notifier).notifyScrollToTop();
          } else {
            navigationShell.goBranch(
              index,
              initialLocation: index == navigationShell.currentIndex,
            );
          }
        },
      ),
    );
  }
}

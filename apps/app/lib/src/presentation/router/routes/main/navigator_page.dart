import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NavigatorPage extends ConsumerWidget {
  const NavigatorPage({
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
            label: i18n.app.bottomNavBar.home,
            icon: const Icon(Icons.home),
          ),
          NavigationDestination(
            label: i18n.app.bottomNavBar.settings,
            icon: const Icon(Icons.settings),
          ),
        ],
        onDestinationSelected: (index) async {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
      ),
    );
  }
}

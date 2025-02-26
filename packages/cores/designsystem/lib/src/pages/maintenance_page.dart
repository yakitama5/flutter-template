import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MaintenancePage extends ConsumerWidget {
  const MaintenancePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maintenance mode'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Maintenance in progress.\n\n\n',
            ),
            ElevatedButton(
              onPressed: () {
                // ref
                //     .read(maintenanceModeProvider.notifier)
                //     .update(enabled: false);
              },
              child: const Text('Disable maintenance mode'),
            ),
          ],
        ),
      ),
    );
  }
}

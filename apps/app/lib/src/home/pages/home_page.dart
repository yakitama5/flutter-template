import 'package:cores_designsystem/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_app/src/router/routes/base_shell_route.dart';
import 'package:flutter_app/src/router/routes/branches/home_shell_branch.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.app.homePage.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WidthFillBox(
            child: FilledButton.icon(
              icon: const Icon(Icons.list),
              onPressed: () => const GoodsPageRoute().go(context),
              label: Text(i18n.goods.goodsPage.title),
            ),
          ),
        ],
      ),
    );
  }
}

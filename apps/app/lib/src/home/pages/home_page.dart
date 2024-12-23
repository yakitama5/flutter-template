import 'package:cores_designsystem/presentation.dart';
import 'package:features_goods/i18n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../router/navigator/navigator_provider.dart';

// ignore: one_member_abstracts
abstract interface class HomePageNavigator {
  void goSampleListPage(BuildContext context);
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
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WidthFillBox(
            child: FilledButton.icon(
              icon: const Icon(Icons.list),
              onPressed: () => navigator.goSampleListPage(context),
              label: Text(goodsI18n.goods.goodsPage.title),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 100,
            child: ColoredBox(color: Theme.of(context).appColors.favIcon),
          ),
        ],
      ),
    );
  }
}

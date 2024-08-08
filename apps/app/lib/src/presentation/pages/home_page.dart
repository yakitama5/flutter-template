import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../router/navigator/navigator_provider.dart';

abstract interface class HomePageNavigator {}

class HomePage extends ConsumerWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigator = ref.watch(homePageNavigatorProvider);
    // TODO(yakitama5): 機能を作って呼び出す
    final contents = <Widget>[];

    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.app.homePage.title),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => contents[index],
        separatorBuilder: (context, index) => const Gap(8),
        itemCount: contents.length,
      ),
    );
  }
}

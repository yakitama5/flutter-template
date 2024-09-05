import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../domain/value_object/view_layout.dart';

typedef SwitchLayoutItemBuilder = Widget? Function(
  BuildContext context,
  int index,
);

/// 表示形式をスイッチング可能なViewBuilder
class SliverSwitchLayoutViewBuilder<T> extends StatelessWidget {
  const SliverSwitchLayoutViewBuilder({
    super.key,
    required this.viewLayout,
    required this.itemBuilder,
    this.itemCount,
    this.gridDelegate,
  });

  final ViewLayout viewLayout;
  final SwitchLayoutItemBuilder itemBuilder;
  final int? itemCount;
  final SliverGridDelegate? gridDelegate;

  @override
  Widget build(BuildContext context) {
    return switch (viewLayout) {
      ViewLayout.list => SliverList.separated(
          itemBuilder: itemBuilder,
          itemCount: itemCount,
          separatorBuilder: (context, index) => const Gap(8),
        ),
      ViewLayout.grid => SliverGrid.builder(
          itemCount: itemCount,
          gridDelegate: gridDelegate ??
              SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150.0,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
                childAspectRatio: 0.75,
              ),
          itemBuilder: itemBuilder,
        )
    };
  }
}

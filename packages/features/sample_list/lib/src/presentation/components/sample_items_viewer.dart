import 'package:features_sample_list/src/presentation/components/sample_list_view_chip.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SampleItemsViewer<T> extends StatelessWidget {
  const SampleItemsViewer({
    super.key,
    required this.viewerLayoutType,
    required this.itemBuilder,
    this.itemCount,
  });

  final Widget? Function(
    BuildContext context,
    int index,
    ViewerLayoutType viewerLayoutType,
  ) itemBuilder;
  final int? itemCount;
  final ViewerLayoutType viewerLayoutType;

  @override
  Widget build(BuildContext context) {
    return switch (viewerLayoutType) {
      ViewerLayoutType.list => SliverList.separated(
          itemBuilder: (context, index) =>
              itemBuilder(context, index, viewerLayoutType),
          itemCount: itemCount,
          separatorBuilder: (context, index) => const Gap(8),
        ),
      ViewerLayoutType.grid => SliverGrid.builder(
          itemCount: itemCount,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150.0,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) =>
              itemBuilder(context, index, viewerLayoutType),
        )
    };
  }
}

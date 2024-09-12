import 'package:cores_designsystem/domain.dart';
import 'package:cores_designsystem/presentation.dart';
import 'package:features_goods/src/domain/entity/goods.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

/// 画像の高さ
double _imageHeight(ViewLayout viewLayout) => switch (viewLayout) {
      ViewLayout.grid => 96.0,
      ViewLayout.list => 160.0,
    };

class GoodsCard extends StatelessWidget {
  const GoodsCard({
    super.key,
    required this.item,
    required this.viewLayout,
    this.onTap,
  });

  final Goods item;
  final ViewLayout viewLayout;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;

    final imageHeight = _imageHeight(viewLayout);
    final headlineStyle = switch (viewLayout) {
      ViewLayout.grid => tt.titleLarge,
      ViewLayout.list => tt.headlineMedium,
    };
    final subheadStyle = switch (viewLayout) {
      ViewLayout.grid => tt.titleMedium,
      ViewLayout.list => tt.headlineSmall,
    };

    return OutlinedCard(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              item.imageUrl!,
              height: imageHeight,
              width: double.infinity,
              fit: BoxFit.fitWidth,
              semanticLabel: item.description,
              loadingBuilder: (context, child, loadingProgress) =>
                  loadingProgress == null
                      ? child
                      : ShimmerWidget.rectangular(
                          height: imageHeight,
                        ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 16,
                end: 16,
                top: 16,
                bottom: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: headlineStyle,
                  ),
                  const Gap(4),
                  Text(
                    '￥${item.price}',
                    style: subheadStyle,
                  ),
                  const Gap(8),
                  Text(
                    item.description,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

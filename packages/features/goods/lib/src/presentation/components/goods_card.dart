import 'package:cores_designsystem/presentation.dart';
import 'package:features_goods/src/domain/entity/goods.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GoodsCard extends StatelessWidget {
  const GoodsCard({
    super.key,
    required this.item,
    this.onTap,
  });

  static const _imageHeight = 96.0;

  final Goods item;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;

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
              height: _imageHeight,
              width: double.infinity,
              fit: BoxFit.fitWidth,
              semanticLabel: item.description,
              loadingBuilder: (context, child, loadingProgress) =>
                  loadingProgress == null
                      ? child
                      : const ShimmerWidget.rectangular(
                          height: _imageHeight,
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
                    style: tt.titleLarge,
                  ),
                  const Gap(4),
                  Text(
                    '￥${item.price}',
                    style: tt.titleMedium,
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

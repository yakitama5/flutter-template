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
            child: _Image(
              imageUrl: item.imageUrl,
              semanticLabel: item.description,
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
                    // HACK(yakitama5): 多言語化対応
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

class _Image extends StatelessWidget {
  const _Image({
    required this.imageUrl,
    required this.semanticLabel,
  });

  static const _imageHeight = 120.0;

  final String? imageUrl;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    // 画像指定無しの場合はダミー表示
    if (imageUrl?.isEmpty ?? true) {
      return SizedBox(
        height: _imageHeight,
        width: double.infinity,
        child:
            ColoredBox(color: Theme.of(context).colorScheme.primaryContainer),
      );
    }

    return Image.network(
      imageUrl!,
      height: _imageHeight,
      width: double.infinity,
      fit: BoxFit.fitWidth,
      semanticLabel: semanticLabel,
      loadingBuilder: (context, child, loadingProgress) =>
          loadingProgress == null
              ? child
              : const ShimmerWidget.rectangular(
                  height: _imageHeight,
                ),
    );
  }
}

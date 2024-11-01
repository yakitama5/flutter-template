import 'package:cores_designsystem/presentation.dart';
import 'package:features_goods/i18n/strings.g.dart';
import 'package:features_goods/src/domain/entity/goods.dart';
import 'package:flutter/material.dart';

class GoodsListTile extends StatelessWidget {
  const GoodsListTile({super.key, required this.item, this.onTap});

  final Goods item;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(item.name),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: item.imageUrl == null
            ? SizedBox(
                height: 64,
                width: 64,
                child: ColoredBox(
                  color: Theme.of(context).colorScheme.surfaceContainer,
                ),
              )
            : Image.network(
                item.imageUrl!,
                loadingBuilder: (context, child, loadingProgress) =>
                    loadingProgress == null
                        ? child
                        : const GoodsShimmerListTileLeading(),
              ),
      ),
      subtitle: Text(i18n.goods.goodsPage.price(price: item.price ?? 0)),
    );
  }
}

class GoodsShimmerListTileLeading extends StatelessWidget {
  const GoodsShimmerListTileLeading({super.key});

  @override
  Widget build(BuildContext context) {
    return const ShimmerWidget.rectangular(
      height: 64,
      width: 64,
    );
  }
}

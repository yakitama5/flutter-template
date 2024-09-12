import 'package:cores_designsystem/presentation.dart';
import 'package:features_goods/src/domain/entity/goods.dart';
import 'package:flutter/material.dart';

class GoodsDetailPage extends StatefulWidget {
  const GoodsDetailPage({super.key, required this.goods});

  final Goods goods;

  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<GoodsDetailPage> {
  static const imageHeight = 480.0;
  static const duplicateHeight = 16.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Body > AppBarの順で配置し、`LinkedScroll`で同期する
      body: LinkedScrollBuilder(
        builder: (context, controllerGroup, controllers) => Stack(
          children: [
            CustomScrollView(
              controller: controllers.one,
              slivers: [
                SliverAppBar(
                  pinned: true,
                  expandedHeight: imageHeight,
                  title: const Text('Linked Scroll Controller Group'),
                  flexibleSpace: FlexibleSpaceBar(
                    background: OverflowBox(
                      child: Image.network(
                        height: imageHeight,
                        fit: BoxFit.fitHeight,
                        widget.goods.imageUrl!,
                      ),
                    ),
                  ),
                ),
                const SliverFillRemaining(),
              ],
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: kToolbarHeight),
                child: CustomScrollView(
                  controller: controllers.two,
                  slivers: [
                    SliverPadding(
                      // AppBarとBodyに重なりを持たせて表示
                      padding: const EdgeInsets.only(
                        top: imageHeight - kToolbarHeight - duplicateHeight,
                      ),
                      sliver: SliverList.separated(
                        itemBuilder: (context, index) {
                          if (index <= 0) {
                            return const _FirstTile();
                          }
                          return ListTile(title: Text('Index $index'));
                        },
                        separatorBuilder: (_, __) => const Divider(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FirstTile extends StatelessWidget {
  const _FirstTile();

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: cs.primary,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      child: const SizedBox(
        height: 160,
        width: double.infinity,
      ),
    );
  }
}

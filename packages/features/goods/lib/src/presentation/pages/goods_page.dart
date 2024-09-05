import 'package:cores_core/domain.dart';
import 'package:cores_designsystem/domain.dart';
import 'package:cores_designsystem/presentation.dart';
import 'package:cores_error/presentation.dart';
import 'package:features_goods/i18n/strings.g.dart';
import 'package:features_goods/src/application/state/goods_list_provider.dart';
import 'package:features_goods/src/domain/constants/goods_constants.dart';
import 'package:features_goods/src/domain/value_object/goods_fetch_query.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../components/goods_card.dart';
import '../components/goods_sort_key_chip.dart';

class GoodsPage extends HookConsumerWidget {
  const GoodsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 初期状態はドメイン層に定義
    final query = useState(const GoodsFetchQuery());
    final viewLayout = useState(ViewLayout.list);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(goodsListProvider);

          // 最初のページが表示されるまでは待機
          try {
            await ref
                .read(goodsListProvider(page: 1, query: query.value).future);
          } on Exception catch (_) {
            // do nothing
          }
        },
        // HACK(yakitama5): SliverAppBar付きのこの構成を共通定義化する
        child: CustomScrollView(
          slivers: [
            PinnedHeaderSliver(
              child: Material(
                child: SafeArea(
                  top: true,
                  child: SizedBox.shrink(),
                ),
              ),
            ),
            SliverAppBar(
              primary: false,
              title: Text(i18n.goods.goodsPage.title),
            ),
            PinnedHeaderSliver(
              child: Material(
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
                  child: Row(
                    children: [
                      GoodsSortKeyChip(
                        onChanged: (sortKey) {
                          // 再選択の場合は順序を入れ替える
                          final isReselect = sortKey == query.value.sortKey;
                          query.value = isReselect
                              ? query.value.copyWith(
                                  sortOrder: query.value.sortOrder.reverse)
                              : GoodsFetchQuery(sortKey: sortKey);
                        },
                        sortKey: query.value.sortKey,
                        sortOrder: query.value.sortOrder,
                      ),
                      Gap(12),
                      ViewLayoutChip(
                        viewLayout: viewLayout.value,
                        onChanged: (v) => viewLayout.value = v,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            _SliverBody(
              query: query.value,
              viewLayout: viewLayout.value,
            ),
          ],
        ),
      ),
    );
  }
}

class _SliverBody extends HookConsumerWidget {
  const _SliverBody({required this.query, required this.viewLayout});

  final GoodsFetchQuery query;
  final ViewLayout viewLayout;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 先頭ページを固定で取得
    // エラーハンドリングはコンテンツ取得部分で行うため`valueOrNull`で無視する
    final result =
        ref.watch(goodsListProvider(page: 1, query: query)).valueOrNull;

    return SliverPadding(
      padding: const EdgeInsetsDirectional.only(
        bottom: 120,
      ),
      sliver: SliverSwitchLayoutViewBuilder(
        // 条件が変更されたらスクロール状態をリセットさせる
        // key: ValueKey(query),
        viewLayout: viewLayout,
        itemCount: result?.totalCount ?? goodsPageSize,
        itemBuilder: (context, index) {
          final page = index ~/ goodsPageSize + 1;
          final indexInPage = index % goodsPageSize;
          final response =
              ref.watch(goodsListProvider(page: page, query: query));

          return response.when(
            data: (data) => GoodsCard(
              key: ValueKey(data.goods[indexInPage]),
              item: data.goods[indexInPage],
              viewLayout: viewLayout,
            ),
            loading: () => _ShimmerTile(viewLayout: viewLayout),
            error: (error, __) => ErrorListTile(
              indexInPage: indexInPage,
              isLoading: response.isLoading,
              error: error.toString(),
              onRetry: () {
                ref.invalidate(goodsListProvider(page: page, query: query));
              },
            ),
          );
        },
      ),
    );
  }
}

class _ShimmerTile extends StatelessWidget {
  const _ShimmerTile({required this.viewLayout});
  final ViewLayout viewLayout;

  @override
  Widget build(BuildContext context) {
    return switch (viewLayout) {
      ViewLayout.list => _ShimmerListTile(),
      ViewLayout.grid => ShimmerWidget.rectangular(height: 60),
    };
  }
}

class _ShimmerListTile extends StatelessWidget {
  const _ShimmerListTile();

  @override
  Widget build(BuildContext context) {
    // プライベートWidgetのためマジックナンバーを許容
    return const ListTile(
      title: ShimmerWidget.rectangular(
        height: 24,
      ),
      subtitle: ShimmerWidget.rectangular(
        height: 16,
      ),
      leading: _ShimmerListTileLeading(),
    );
  }
}

class _ShimmerListTileLeading extends StatelessWidget {
  const _ShimmerListTileLeading();
  @override
  Widget build(BuildContext context) {
    return ShimmerWidget.rectangular(
      height: 64,
      width: 64,
    );
  }
}

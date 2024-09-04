import 'package:cores_core/domain.dart';
import 'package:cores_designsystem/presentation.dart';
import 'package:cores_error/presentation.dart';
import 'package:features_sample_list/src/domain/entity/sample_list_entity.dart';
import 'package:features_sample_list/src/domain/value_object/sample_list_query.dart';
import 'package:features_sample_list/src/presentation/components/sample_items_viewer.dart';
import 'package:features_sample_list/src/presentation/components/sample_list_sort_chip.dart';
import 'package:features_sample_list/src/presentation/components/sample_list_view_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/state/sample_list_provider.dart';
import '../../domain/constants/sample_list_constants.dart';

class SampleListPage extends HookConsumerWidget {
  const SampleListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 初期状態はドメイン層に定義
    final query = useState(const SampleListQuery());
    final viewerLayoutType = useState(ViewerLayoutType.list);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(sampleListProvider);

          // 最初のページが表示されるまでは待機
          try {
            await ref
                .read(sampleListProvider(page: 1, query: query.value).future);
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
              title: Text('タイトル'),
            ),
            PinnedHeaderSliver(
              child: Material(
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
                  child: Row(
                    children: [
                      SampleListSortChip(
                        onChanged: (sortKey) {
                          // 再選択の場合は順序を入れ替える
                          final isReselect = sortKey == query.value.sortKey;
                          query.value = isReselect
                              ? query.value.copyWith(
                                  sortOrder: query.value.sortOrder.reverse)
                              : SampleListQuery(sortKey: sortKey);
                        },
                        sortKey: query.value.sortKey,
                        sortOrder: query.value.sortOrder,
                      ),
                      Gap(12),
                      SampleListViewChip(
                        viewerLayoutType: viewerLayoutType.value,
                        onChanged: (v) => viewerLayoutType.value = v,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            _SliverBody(
              query: query.value,
              viewerLayoutType: viewerLayoutType.value,
            ),
          ],
        ),
      ),
    );
  }
}

class _SliverBody extends HookConsumerWidget {
  const _SliverBody({required this.query, required this.viewerLayoutType});

  final SampleListQuery query;
  final ViewerLayoutType viewerLayoutType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 先頭ページを固定で取得
    // エラーハンドリングはコンテンツ取得部分で行うため`valueOrNull`で無視する
    final result =
        ref.watch(sampleListProvider(page: 1, query: query)).valueOrNull;

    return SliverPadding(
      padding: const EdgeInsetsDirectional.only(
        bottom: 120,
      ),
      sliver: SampleItemsViewer(
        // 条件が変更されたらスクロール状態をリセットさせる
        // key: ValueKey(query),
        viewerLayoutType: viewerLayoutType,
        itemCount: result?.totalCount ?? sampleListPageSize,
        itemBuilder: (context, index, viewType) {
          final page = index ~/ sampleListPageSize + 1;
          final indexInPage = index % sampleListPageSize;
          final response =
              ref.watch(sampleListProvider(page: page, query: query));

          return response.when(
            data: (data) => _ItemTile(
              item: data.items[indexInPage],
              viewerLayoutType: viewType,
            ),
            loading: () => _ShimmerTile(viewerLayoutType: viewType),
            error: (error, __) => ErrorListTile(
              indexInPage: indexInPage,
              isLoading: response.isLoading,
              error: error.toString(),
              onRetry: () {
                ref.invalidate(sampleListProvider(page: page, query: query));
              },
            ),
          );
        },
      ),
    );
  }
}

class _ItemTile extends StatelessWidget {
  const _ItemTile({required this.item, required this.viewerLayoutType});

  final SampleListEntity item;
  final ViewerLayoutType viewerLayoutType;

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;

    return switch (viewerLayoutType) {
      ViewerLayoutType.list => ListTile(
          title: Text(item.name),
          leading: Image.network(
            item.imageUrl!,
            loadingBuilder: (context, child, loadingProgress) =>
                loadingProgress == null ? child : _ShimmerListTileLeading(),
          ),
          subtitle: Text('￥${item.price}'),
        ),
      ViewerLayoutType.grid => Card.outlined(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  item.imageUrl!,
                  height: 96,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                  loadingBuilder: (context, child, loadingProgress) =>
                      loadingProgress == null
                          ? child
                          : _ShimmerListTileLeading(),
                ),
              ),
              Gap(8),
              Flexible(
                child: Padding(
                  padding: EdgeInsetsDirectional.only(start: 16, end: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.name,
                        style: tt.titleMedium,
                      ),
                      Text('￥${item.price}'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
    };
  }
}

class _ShimmerTile extends StatelessWidget {
  const _ShimmerTile({required this.viewerLayoutType});
  final ViewerLayoutType viewerLayoutType;

  @override
  Widget build(BuildContext context) {
    return switch (viewerLayoutType) {
      ViewerLayoutType.list => _ShimmerListTile(),
      ViewerLayoutType.grid =>
        ShimmerWidget.rectangular(height: double.infinity),
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

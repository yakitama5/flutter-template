import 'package:cores_core/domain.dart';
import 'package:cores_designsystem/presentation.dart';
import 'package:cores_error/presentation.dart';
import 'package:features_sample_list/src/domain/value_object/sample_list_query.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/state/sample_list_provider.dart';
import '../../domain/value_object/sample_list_sort_key.dart';

class SampleListPage extends HookConsumerWidget {
  const SampleListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();

    // HACK(yakitama5): 初期値をDomain層に定義
    final query = useState(
      const SampleListQuery(
        sortKey: SampleListSortKey.createdAt,
        sortOrder: SortOrder.desc,
      ),
    );

    return SafeArea(
      top: false,
      child: Scaffold(
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
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              const SliverAppBar(
                title: Text('タイトル'),
              ),
              SliverPersistentHeader(
                delegate: SliverChipsDelegate(
                  chips: [
                    // TODO(yakitama5): Chipsを作成して状態管理する
                    BottomSheetSelectActionChip<SampleListSortKey>(
                      label: Text(query.value.sortKey.name),
                      actions: SampleListSortKey.values
                          .map((e) => BottomSheetAction(
                                title: Text(e.title),
                                icon: query.value.sortKey == e
                                    ? Icon(query.value.sortOrder.iconData)
                                    : null,
                                value: e,
                              ))
                          .toList(),
                      iconData: Icons.sort,
                      title: Text(query.value.sortKey.title),
                      initial: query.value.sortKey,
                      onChanged: (value) {
                        // TODO(yakitama5): 昇順降順判断
                        final isReselect = value == query.value;
                        // query.value = isReselect ? query.value.copyWith(sortOrder: query.value.sortOrder)  query.value.copyWith(sortKey: value);
                      },
                    ),
                  ],
                  safeAreaPadding: MediaQuery.paddingOf(context),
                ),
                pinned: true,
              ),
              _SliverBody(
                query: query.value,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverBody extends HookConsumerWidget {
  const _SliverBody({required this.query});

  final SampleListQuery query;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // HACK(yakitama5): ページサイズを共通定義
    const pageSize = 10;

    // 先頭ページを固定で取得
    // エラーハンドリングはコンテンツ取得部分で行うため`valueOrNull`で無視する
    final result =
        ref.watch(sampleListProvider(page: 1, query: query)).valueOrNull;

    return SliverPadding(
      padding: const EdgeInsets.only(bottom: 120),
      sliver: SliverList.separated(
        // 条件が変更されたらスクロール状態をリセットさせる
        key: ValueKey(query),
        itemCount: result?.totalCount ?? pageSize,
        itemBuilder: (context, index) {
          final page = index ~/ pageSize + 1;
          final indexInPage = index % pageSize;
          final response =
              ref.watch(sampleListProvider(page: page, query: query));

          return response.when(
            data: (responseData) {
              final item = responseData.items[indexInPage];
              return ListTile(
                title: Text(item.name),
                // HACK(yakitama5): 画像をキャッシュする
                leading: Image.network(item.imageUrl!),
                subtitle: Text('￥${item.price}'),
              );
            },
            error: (error, __) => ErrorListTile(
              indexInPage: indexInPage,
              isLoading: response.isLoading,
              error: error.toString(),
              onRetry: () {
                ref.invalidate(sampleListProvider(page: page, query: query));
              },
            ),
            loading: _ShimmerListTile.new,
          );
        },
        separatorBuilder: (context, index) => const Gap(8),
      ),
    );
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
      leading: ShimmerWidget.rectangular(
        height: 64,
        width: 64,
      ),
    );
  }
}

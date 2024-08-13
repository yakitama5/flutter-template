import 'package:cores_designsystem/presentation.dart';
import 'package:cores_error/presentation.dart';
import 'package:features_sample_list/src/application/state/sample_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/state/sample_item_fetch_result_provider.dart';

class SampleListPage extends HookConsumerWidget {
  const SampleListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();

    return SafeArea(
      top: false,
      child: Scaffold(
        body: CustomScrollView(
          controller: scrollController,
          slivers: [
            const SliverAppBar(
              title: Text('タイトル'),
            ),
            SliverPersistentHeader(
              delegate: SliverChipsDelegate(
                chips: [
                  // TODO(yakitama5): Chipsを作成して状態管理する
                  const LeadingIconInputChip(
                    label: Text('Order'),
                    iconData: Icons.sort,
                  ),
                ],
                safeAreaPadding: MediaQuery.paddingOf(context),
              ),
              pinned: true,
            ),
            const _SliverBody(),
          ],
        ),
      ),
    );
  }
}

class _SliverBody extends HookConsumerWidget {
  const _SliverBody();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // HACK(yakitama5): ページサイズを共通定義
    const pageSize = 10;

    // 先頭ページを固定で取得
    final result = ref.watch(sampleListFetchResultProvider(page: 1)).value;

    return SliverPadding(
      padding: const EdgeInsets.only(bottom: 120),
      sliver: SliverList.separated(
        itemCount: result?.totalCount ?? pageSize,
        itemBuilder: (context, index) {
          final page = index ~/ pageSize + 1;
          final indexInPage = index % pageSize;
          final items = ref.watch(sampleListProvider(page: page));

          return items.when(
            data: (itemsData) {
              final item = itemsData[indexInPage];
              return ListTile(
                title: Text(item.name),
                leading: Image.network(item.imageUrl!),
                subtitle: Text('￥${item.price}'),
              );
            },
            // TODO(yakitama5): ListTile用のErrorViewを共通定義
            error: (error, __) => ErrorListTile(
              indexInPage: indexInPage,
              isLoading: items.isLoading,
              error: error.toString(),
              onRetry: () {
                ref.invalidate(sampleListFetchResultProvider(page: page));
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

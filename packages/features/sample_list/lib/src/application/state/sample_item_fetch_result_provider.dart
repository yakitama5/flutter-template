import 'package:features_sample_list/src/application/state/sample_list_sort_key_notifier_provider.dart';
import 'package:features_sample_list/src/application/state/sample_list_sort_order_notifier_provider.dart';
import 'package:features_sample_list/src/domain/entity/sample_list_fetch_result.dart';
import 'package:features_sample_list/src/domain/interface/sample_list_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sample_item_fetch_result_provider.g.dart';

@riverpod
Stream<SampleListFetchResult> sampleListFetchResult(
  SampleListFetchResultRef ref, {
  required int page,
}) {
  // 並び替えの状態を取得
  final sortKey = ref.watch(sampleListSortKeyNotifierProvider);
  final sortOrder = ref.watch(sampleListSortOrderNotifierProvider);

  return ref.watch(sampleListRepositoryProvider).fetchList(
        page: page,
        sortKey: sortKey,
        sortOrder: sortOrder,
      );
}

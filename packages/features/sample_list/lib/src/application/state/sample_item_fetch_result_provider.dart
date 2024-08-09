import 'dart:async';

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

  // ページング利用のため一定時間の生存時間を与える
  keepAliveTimerForStream(ref);

  return ref.watch(sampleListRepositoryProvider).fetchList(
        page: page,
        sortKey: sortKey,
        sortOrder: sortOrder,
      );
}

const _duration = Duration(seconds: 30);

void keepAliveTimerForStream<T>(
  AutoDisposeStreamProviderRef<T> ref, {
  Duration? duration,
}) {
  final link = ref.keepAlive();
  Timer? timer;

  ref
    ..onCancel(() => timer = Timer(duration ?? _duration, link.close))
    ..onResume(() => timer?.cancel)
    ..onDispose(() => timer?.cancel);
}

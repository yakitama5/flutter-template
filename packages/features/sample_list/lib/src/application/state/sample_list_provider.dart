import 'dart:async';

import 'package:features_sample_list/src/domain/interface/sample_list_repository.dart';
import 'package:features_sample_list/src/domain/value_object/sample_list_query.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/value_object/sample_list_response.dart';

part 'sample_list_provider.g.dart';

@riverpod
Stream<SampleListResponse> sampleList(
  SampleListRef ref, {
  required int page,
  required SampleListQuery query,
}) {
  // ページング利用のため一定時間の生存時間を与える
  keepAliveTimerForStream(ref);

  return ref.watch(sampleListRepositoryProvider).fetchList(
        page: page,
        query: query,
      );
}

const _duration = Duration(seconds: 30);

// HACK(yakitama5): 共通定義したい
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

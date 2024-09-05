import 'dart:async';

import 'package:features_goods/src/domain/interface/goods_repository.dart';
import 'package:features_goods/src/domain/value_object/goods_fetch_query.dart';
import 'package:features_goods/src/domain/value_object/goods_fetch_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'goods_list_provider.g.dart';

@riverpod
Stream<GoodsFetchResponse> goodsList(
  GoodsListRef ref, {
  required int page,
  required GoodsFetchQuery query,
}) {
  // ページング利用のため一定時間の生存時間を与える
  keepAliveTimerForStream(ref);

  return ref.watch(goodsRepositoryProvider).fetchList(
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
    ..onResume(() => timer?.cancel())
    ..onDispose(() => timer?.cancel());
}

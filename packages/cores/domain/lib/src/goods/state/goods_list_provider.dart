import 'dart:async';

import 'package:cores_domain/core.dart';
import 'package:cores_domain/goods.dart';
import 'package:cores_domain/src/util/logger.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'goods_list_provider.g.dart';

@riverpod
Stream<PageInfo<Goods>> goodsList(
  Ref ref, {
  required int page,
  required GoodsFetchQuery query,
}) {
  // ページング利用のため、参照されなくなってから30秒間はキャッシュを保持する
  logger.d('GoodsListProvider: $page');
  ref.cacheFor(const Duration(seconds: 30));

  return ref.watch(goodsRepositoryProvider).listenGoodsList(
        page: page,
        query: query,
      );
}

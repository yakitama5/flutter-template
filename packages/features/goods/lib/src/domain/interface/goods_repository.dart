import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../constants/goods_constants.dart';
import '../entity/goods.dart';
import '../value_object/goods_fetch_query.dart';
import '../value_object/goods_fetch_response.dart';

part 'goods_repository.g.dart';

@Riverpod(keepAlive: true)
GoodsRepository goodsRepository(Ref ref) => throw UnimplementedError();

abstract class GoodsRepository {
  Stream<GoodsFetchResponse> fetchList({
    int page = 1,
    int pageSize = goodsPageSize,
    required GoodsFetchQuery query,
  });

  Stream<Goods?> fetch({required String id});
}

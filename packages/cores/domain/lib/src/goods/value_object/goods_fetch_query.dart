import 'package:cores_domain/src/core/value_object/sort_order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'goods_sort_key.dart';

part 'goods_fetch_query.freezed.dart';

@freezed
class GoodsFetchQuery with _$GoodsFetchQuery {
  const factory GoodsFetchQuery({
    @Default(GoodsSortKey.price) GoodsSortKey sortKey,
    @Default(SortOrder.asc) SortOrder sortOrder,
  }) = _GoodsFetchQuery;
}

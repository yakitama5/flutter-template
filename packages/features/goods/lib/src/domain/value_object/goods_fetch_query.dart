import 'package:cores_core/domain.dart';
import 'package:features_goods/src/domain/value_object/goods_sort_key.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'goods_fetch_query.freezed.dart';

@freezed
class GoodsFetchQuery with _$GoodsFetchQuery {
  const factory GoodsFetchQuery({
    @Default(GoodsSortKey.price) GoodsSortKey sortKey,
    @Default(SortOrder.asc) SortOrder sortOrder,
  }) = _GoodsFetchQuery;
}

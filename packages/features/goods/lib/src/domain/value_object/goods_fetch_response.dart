import 'package:features_goods/src/domain/entity/goods.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'goods_fetch_response.freezed.dart';

@freezed
class GoodsFetchResponse with _$GoodsFetchResponse {
  const factory GoodsFetchResponse({
    required List<Goods> goods,
    required int totalCount,
  }) = _GoodsFetchResponse;
}

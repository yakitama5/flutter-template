import 'package:freezed_annotation/freezed_annotation.dart';

import '../entity/goods.dart';

part 'goods_fetch_response.freezed.dart';

// TODO(yakitama5): ジェネリクスでページ番号などを管理する共通基盤を設定する
@freezed
class GoodsFetchResponse with _$GoodsFetchResponse {
  const factory GoodsFetchResponse({
    required List<Goods> goods,
    required int totalCount,
  }) = _GoodsFetchResponse;
}

import 'dart:async';

import 'package:cores_domain/goods.dart';
import 'package:cores_domain/src/designsystem/value_object/view_layout.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'goods_view_layout_notifier_provider.g.dart';

@riverpod
class GoodsViewLayoutNotifier extends _$GoodsViewLayoutNotifier {
  GoodsConfigRepository get _repository =>
      ref.watch(goodsConfigRepositoryProvider);

  @override
  ViewLayout build() {
    // 未設定の場合に備えて初期値を設定
    return _repository.fetchViewLayout() ?? ViewLayout.list;
  }

  Future<void> updateViewLayout({required ViewLayout viewLayout}) async {
    // 先に結果を返す
    state = viewLayout;

    // 非同期で処理を保存する
    unawaited(_repository.updateViewLayout(viewLayout: viewLayout));
  }
}

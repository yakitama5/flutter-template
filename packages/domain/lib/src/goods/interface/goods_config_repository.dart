import 'package:cores_domain/src/designsystem/value_object/view_layout.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'goods_config_repository.g.dart';

@Riverpod(keepAlive: true)
GoodsConfigRepository goodsConfigRepository(Ref ref) =>
    throw UnimplementedError();

abstract class GoodsConfigRepository {
  ViewLayout? fetchViewLayout();

  Future<void> updateViewLayout({required ViewLayout viewLayout});
}

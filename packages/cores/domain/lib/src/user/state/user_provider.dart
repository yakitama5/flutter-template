import 'package:cores_domain/src/user/entity/user.dart';
import 'package:cores_domain/src/user/interface/user_repository.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_provider.g.dart';

/// ユーザー
/// データの参照頻度を減らすため、`keepAlive`を指定
@Riverpod(keepAlive: true)
Stream<User?> user(Ref ref, {required String userId}) {
  return ref.watch(userRepositoryProvider).listen(userId: userId);
}

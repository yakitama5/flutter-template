import 'package:features_user/domain.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_provider.g.dart';

/// ユーザー
/// データの参照頻度を減らすため、`keepAlive`を指定
@Riverpod(keepAlive: true)
Stream<User?> user(Ref ref, {required String userId}) {
  return ref.watch(userRepositoryProvider).fetch(userId: userId);
}

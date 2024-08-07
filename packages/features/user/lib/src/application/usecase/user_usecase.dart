import 'dart:async';

import 'package:cores_core/application.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entity/user.dart';
import '../../domain/interface/user_repository.dart';
import '../state/auth_user_provider.dart';

part 'user_usecase.g.dart';

@Riverpod(keepAlive: true)
UserUsecase userUsecase(UserUsecaseRef ref) => UserUsecase(ref);

class UserUsecase with RunUsecaseMixin {
  const UserUsecase(this.ref);

  final Ref ref;

  UserRepository get _userRepository => ref.read(userRepositoryProvider);
  Future<User?> get _authUser => ref.read(authUserProvider.future);
  Future<String?> get _authUserId => _authUser.then((data) => data?.id);

  /// ユーザーの登録
  Future<void> signUp() => execute(
        ref,
        action: () => _userRepository.signUp(),
      );

  /// Apple認証
  Future<void> signInWithApple() => execute(
        ref,
        action: () => _userRepository.signInWithApple(),
      );

  /// Google認証
  Future<void> signInWithGoogle() => execute(
        ref,
        action: () => _userRepository.signInWithGoogle(),
      );

  /// サインアウト
  Future<void> signOut() => execute(
        ref,
        action: () => _userRepository.signOut(),
      );

  /// 退会
  /// ログイン中の自身の情報を削除
  Future<void> leave() => execute(
        ref,
        action: () async {
          // ユーザー情報 および アカウントの削除
          final userId = await _authUserId;
          if (userId == null) {
            // TODO(yakitama5): 正しいExceptionに変更
            throw const ServerNetworkException('message');
          }
          await _userRepository.delete(userId: userId);
        },
      );

  /// Googleアカウント連携を解除する
  Future<void> unlinkWithGoogle() => execute(
        ref,
        action: () => _userRepository.unlinkWithGoogle(),
      );

  /// Appleアカウント連携を解除する
  Future<void> unlinkWithApple() => execute(
        ref,
        action: () => _userRepository.unlinkWithApple(),
      );
}

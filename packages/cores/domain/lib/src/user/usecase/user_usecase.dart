import 'dart:async';

import 'package:cores_core/domain.dart';
import 'package:cores_error/domain.dart';
import 'package:cores_error/i18n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/user.dart';
import '../interface/user_repository.dart';
import '../state/auth_status_provider.dart';
import '../state/auth_user_provider.dart';

part 'user_usecase.g.dart';

@Riverpod(keepAlive: true)
UserUsecase userUsecase(Ref ref) => UserUsecase(ref);

class UserUsecase with RunUsecaseMixin {
  const UserUsecase(this.ref);

  final Ref ref;

  UserRepository get _userRepository => ref.watch(userRepositoryProvider);
  Future<User?> get _authUser => ref.watch(authUserProvider.future);
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
            throw ImpossibleOperationException(
              errorI18n.error.message.impossibleOperation.notAuth,
            );
          }
          await _userRepository.delete(userId: userId);
        },
      );

  /// Googleアカウント連携を解除する
  Future<void> unlinkWithGoogle() => execute(
        ref,
        action: () async {
          // アカウント連携済か否かのチェック
          // HACK(yakitama5): チェック関連はdomain層として業務ルール化したい
          final status = await ref.read(authStatusProvider.future);
          final linked = status?.linkedGoogle ?? false;
          if (!linked) {
            throw ImpossibleOperationException(
              errorI18n.error.message.impossibleOperation.notLinked,
            );
          }

          return _userRepository.unlinkWithGoogle();
        },
      );

  /// Appleアカウント連携を解除する
  Future<void> unlinkWithApple() => execute(
        ref,
        action: () async {
          // アカウント連携済か否かのチェック
          final status = await ref.read(authStatusProvider.future);
          final linked = status?.linkedApple ?? false;
          if (!linked) {
            throw ImpossibleOperationException(
              errorI18n.error.message.impossibleOperation.notLinked,
            );
          }

          return _userRepository.unlinkWithApple();
        },
      );
}

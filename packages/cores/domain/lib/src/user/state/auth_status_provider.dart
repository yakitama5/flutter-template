import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/auth_status.dart';
import '../interface/user_repository.dart';

part 'auth_status_provider.g.dart';

/// 認証状態
@Riverpod(keepAlive: true)
Stream<AuthStatus?> authStatus(Ref ref) =>
    ref.watch(userRepositoryProvider).listenAuthStatus();

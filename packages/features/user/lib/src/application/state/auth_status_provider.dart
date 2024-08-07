import 'package:features_user/src/domain/interface/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entity/auth_status.dart';

part 'auth_status_provider.g.dart';

/// 認証状態
@Riverpod(keepAlive: true)
Stream<AuthStatus?> authStatus(AuthStatusRef ref) =>
    ref.watch(userRepositoryProvider).fetchAuthStatus();

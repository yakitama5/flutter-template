// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ユーザー
/// データの参照頻度を減らすため、`keepAlive`を指定

@ProviderFor(user)
final userProvider = UserFamily._();

/// ユーザー
/// データの参照頻度を減らすため、`keepAlive`を指定

final class UserProvider
    extends $FunctionalProvider<AsyncValue<User?>, User?, Stream<User?>>
    with $FutureModifier<User?>, $StreamProvider<User?> {
  /// ユーザー
  /// データの参照頻度を減らすため、`keepAlive`を指定
  UserProvider._({
    required UserFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'userProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$userHash();

  @override
  String toString() {
    return r'userProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<User?> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<User?> create(Ref ref) {
    final argument = this.argument as String;
    return user(ref, userId: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is UserProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userHash() => r'e16e56a0f25f28a9d309dc2f381848517cbd77c8';

/// ユーザー
/// データの参照頻度を減らすため、`keepAlive`を指定

final class UserFamily extends $Family
    with $FunctionalFamilyOverride<Stream<User?>, String> {
  UserFamily._()
    : super(
        retry: null,
        name: r'userProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  /// ユーザー
  /// データの参照頻度を減らすため、`keepAlive`を指定

  UserProvider call({required String userId}) =>
      UserProvider._(argument: userId, from: this);

  @override
  String toString() => r'userProvider';
}

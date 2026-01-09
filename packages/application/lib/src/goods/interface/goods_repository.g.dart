// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'goods_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(goodsRepository)
final goodsRepositoryProvider = GoodsRepositoryProvider._();

final class GoodsRepositoryProvider
    extends
        $FunctionalProvider<GoodsRepository, GoodsRepository, GoodsRepository>
    with $Provider<GoodsRepository> {
  GoodsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'goodsRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$goodsRepositoryHash();

  @$internal
  @override
  $ProviderElement<GoodsRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GoodsRepository create(Ref ref) {
    return goodsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GoodsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GoodsRepository>(value),
    );
  }
}

String _$goodsRepositoryHash() => r'288ce9a7beb5c039e2627da868b61cd5466b150f';

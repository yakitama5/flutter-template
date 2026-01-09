// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'goods_config_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(goodsConfigRepository)
final goodsConfigRepositoryProvider = GoodsConfigRepositoryProvider._();

final class GoodsConfigRepositoryProvider
    extends
        $FunctionalProvider<
          GoodsConfigRepository,
          GoodsConfigRepository,
          GoodsConfigRepository
        >
    with $Provider<GoodsConfigRepository> {
  GoodsConfigRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'goodsConfigRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$goodsConfigRepositoryHash();

  @$internal
  @override
  $ProviderElement<GoodsConfigRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GoodsConfigRepository create(Ref ref) {
    return goodsConfigRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GoodsConfigRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GoodsConfigRepository>(value),
    );
  }
}

String _$goodsConfigRepositoryHash() =>
    r'3160e9a07d50db78464baf5bc8c6ff48e5ad77b0';

// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'goods_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(goodsUsecase)
final goodsUsecaseProvider = GoodsUsecaseProvider._();

final class GoodsUsecaseProvider
    extends $FunctionalProvider<GoodsUsecase, GoodsUsecase, GoodsUsecase>
    with $Provider<GoodsUsecase> {
  GoodsUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'goodsUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$goodsUsecaseHash();

  @$internal
  @override
  $ProviderElement<GoodsUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GoodsUsecase create(Ref ref) {
    return goodsUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GoodsUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GoodsUsecase>(value),
    );
  }
}

String _$goodsUsecaseHash() => r'c73982ffdab5fb24c64c2d258bca48d1e6068c53';

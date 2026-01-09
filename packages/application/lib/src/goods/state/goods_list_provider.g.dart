// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'goods_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(goodsList)
final goodsListProvider = GoodsListFamily._();

final class GoodsListProvider
    extends
        $FunctionalProvider<
          AsyncValue<PageInfo<Goods>>,
          PageInfo<Goods>,
          Stream<PageInfo<Goods>>
        >
    with $FutureModifier<PageInfo<Goods>>, $StreamProvider<PageInfo<Goods>> {
  GoodsListProvider._({
    required GoodsListFamily super.from,
    required ({int page, GoodsFetchQuery query}) super.argument,
  }) : super(
         retry: null,
         name: r'goodsListProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$goodsListHash();

  @override
  String toString() {
    return r'goodsListProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $StreamProviderElement<PageInfo<Goods>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<PageInfo<Goods>> create(Ref ref) {
    final argument = this.argument as ({int page, GoodsFetchQuery query});
    return goodsList(ref, page: argument.page, query: argument.query);
  }

  @override
  bool operator ==(Object other) {
    return other is GoodsListProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$goodsListHash() => r'84d54fd6aeefc95556a14c968ef266b46a4b044a';

final class GoodsListFamily extends $Family
    with
        $FunctionalFamilyOverride<
          Stream<PageInfo<Goods>>,
          ({int page, GoodsFetchQuery query})
        > {
  GoodsListFamily._()
    : super(
        retry: null,
        name: r'goodsListProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GoodsListProvider call({required int page, required GoodsFetchQuery query}) =>
      GoodsListProvider._(argument: (page: page, query: query), from: this);

  @override
  String toString() => r'goodsListProvider';
}

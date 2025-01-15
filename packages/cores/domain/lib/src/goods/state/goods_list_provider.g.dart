// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'goods_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$goodsListHash() => r'c7a59d09715e16cce1a1eeeba3a26b117a9efa5b';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [goodsList].
@ProviderFor(goodsList)
const goodsListProvider = GoodsListFamily();

/// See also [goodsList].
class GoodsListFamily extends Family<AsyncValue<PageInfo<Goods>>> {
  /// See also [goodsList].
  const GoodsListFamily();

  /// See also [goodsList].
  GoodsListProvider call({
    required int page,
    required GoodsFetchQuery query,
  }) {
    return GoodsListProvider(
      page: page,
      query: query,
    );
  }

  @override
  GoodsListProvider getProviderOverride(
    covariant GoodsListProvider provider,
  ) {
    return call(
      page: provider.page,
      query: provider.query,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'goodsListProvider';
}

/// See also [goodsList].
class GoodsListProvider extends AutoDisposeStreamProvider<PageInfo<Goods>> {
  /// See also [goodsList].
  GoodsListProvider({
    required int page,
    required GoodsFetchQuery query,
  }) : this._internal(
          (ref) => goodsList(
            ref as GoodsListRef,
            page: page,
            query: query,
          ),
          from: goodsListProvider,
          name: r'goodsListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$goodsListHash,
          dependencies: GoodsListFamily._dependencies,
          allTransitiveDependencies: GoodsListFamily._allTransitiveDependencies,
          page: page,
          query: query,
        );

  GoodsListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
    required this.query,
  }) : super.internal();

  final int page;
  final GoodsFetchQuery query;

  @override
  Override overrideWith(
    Stream<PageInfo<Goods>> Function(GoodsListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GoodsListProvider._internal(
        (ref) => create(ref as GoodsListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
        query: query,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<PageInfo<Goods>> createElement() {
    return _GoodsListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GoodsListProvider &&
        other.page == page &&
        other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GoodsListRef on AutoDisposeStreamProviderRef<PageInfo<Goods>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `query` of this provider.
  GoodsFetchQuery get query;
}

class _GoodsListProviderElement
    extends AutoDisposeStreamProviderElement<PageInfo<Goods>>
    with GoodsListRef {
  _GoodsListProviderElement(super.provider);

  @override
  int get page => (origin as GoodsListProvider).page;
  @override
  GoodsFetchQuery get query => (origin as GoodsListProvider).query;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

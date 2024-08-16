// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'sample_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sampleListHash() => r'16110053f6f196e2ee2f336077f93dfd4bcd757c';

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

/// See also [sampleList].
@ProviderFor(sampleList)
const sampleListProvider = SampleListFamily();

/// See also [sampleList].
class SampleListFamily extends Family<AsyncValue<SampleListResponse>> {
  /// See also [sampleList].
  const SampleListFamily();

  /// See also [sampleList].
  SampleListProvider call({
    required int page,
    required SampleListQuery query,
  }) {
    return SampleListProvider(
      page: page,
      query: query,
    );
  }

  @override
  SampleListProvider getProviderOverride(
    covariant SampleListProvider provider,
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
  String? get name => r'sampleListProvider';
}

/// See also [sampleList].
class SampleListProvider extends AutoDisposeStreamProvider<SampleListResponse> {
  /// See also [sampleList].
  SampleListProvider({
    required int page,
    required SampleListQuery query,
  }) : this._internal(
          (ref) => sampleList(
            ref as SampleListRef,
            page: page,
            query: query,
          ),
          from: sampleListProvider,
          name: r'sampleListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sampleListHash,
          dependencies: SampleListFamily._dependencies,
          allTransitiveDependencies:
              SampleListFamily._allTransitiveDependencies,
          page: page,
          query: query,
        );

  SampleListProvider._internal(
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
  final SampleListQuery query;

  @override
  Override overrideWith(
    Stream<SampleListResponse> Function(SampleListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SampleListProvider._internal(
        (ref) => create(ref as SampleListRef),
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
  AutoDisposeStreamProviderElement<SampleListResponse> createElement() {
    return _SampleListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SampleListProvider &&
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

mixin SampleListRef on AutoDisposeStreamProviderRef<SampleListResponse> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `query` of this provider.
  SampleListQuery get query;
}

class _SampleListProviderElement
    extends AutoDisposeStreamProviderElement<SampleListResponse>
    with SampleListRef {
  _SampleListProviderElement(super.provider);

  @override
  int get page => (origin as SampleListProvider).page;
  @override
  SampleListQuery get query => (origin as SampleListProvider).query;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'sample_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sampleListHash() => r'67db9374d0a40db2f71a1d552a2f27de60a15d35';

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
class SampleListFamily extends Family {
  /// See also [sampleList].
  const SampleListFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'sampleListProvider';

  /// See also [sampleList].
  SampleListProvider call({
    required int page,
  }) {
    return SampleListProvider(
      page: page,
    );
  }

  @visibleForOverriding
  @override
  SampleListProvider getProviderOverride(
    covariant SampleListProvider provider,
  ) {
    return call(
      page: provider.page,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      FutureOr<List<SampleListEntity>> Function(SampleListRef ref) create) {
    return _$SampleListFamilyOverride(this, create);
  }
}

class _$SampleListFamilyOverride implements FamilyOverride {
  _$SampleListFamilyOverride(this.overriddenFamily, this.create);

  final FutureOr<List<SampleListEntity>> Function(SampleListRef ref) create;

  @override
  final SampleListFamily overriddenFamily;

  @override
  SampleListProvider getProviderOverride(
    covariant SampleListProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [sampleList].
class SampleListProvider
    extends AutoDisposeFutureProvider<List<SampleListEntity>> {
  /// See also [sampleList].
  SampleListProvider({
    required int page,
  }) : this._internal(
          (ref) => sampleList(
            ref as SampleListRef,
            page: page,
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
        );

  SampleListProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  Override overrideWith(
    FutureOr<List<SampleListEntity>> Function(SampleListRef ref) create,
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
      ),
    );
  }

  @override
  ({
    int page,
  }) get argument {
    return (page: page,);
  }

  @override
  AutoDisposeFutureProviderElement<List<SampleListEntity>> createElement() {
    return _SampleListProviderElement(this);
  }

  SampleListProvider _copyWith(
    FutureOr<List<SampleListEntity>> Function(SampleListRef ref) create,
  ) {
    return SampleListProvider._internal(
      (ref) => create(ref as SampleListRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      page: page,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SampleListProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SampleListRef on AutoDisposeFutureProviderRef<List<SampleListEntity>> {
  /// The parameter `page` of this provider.
  int get page;
}

class _SampleListProviderElement
    extends AutoDisposeFutureProviderElement<List<SampleListEntity>>
    with SampleListRef {
  _SampleListProviderElement(super.provider);

  @override
  int get page => (origin as SampleListProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package

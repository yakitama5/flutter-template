// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'sample_item_fetch_result_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sampleListFetchResultHash() =>
    r'd592c7aa229c735d6fb8746849b85676cc04cf12';

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

/// See also [sampleListFetchResult].
@ProviderFor(sampleListFetchResult)
const sampleListFetchResultProvider = SampleListFetchResultFamily();

/// See also [sampleListFetchResult].
class SampleListFetchResultFamily extends Family {
  /// See also [sampleListFetchResult].
  const SampleListFetchResultFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'sampleListFetchResultProvider';

  /// See also [sampleListFetchResult].
  SampleListFetchResultProvider call({
    required int page,
  }) {
    return SampleListFetchResultProvider(
      page: page,
    );
  }

  @visibleForOverriding
  @override
  SampleListFetchResultProvider getProviderOverride(
    covariant SampleListFetchResultProvider provider,
  ) {
    return call(
      page: provider.page,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      Stream<SampleListFetchResult> Function(SampleListFetchResultRef ref)
          create) {
    return _$SampleListFetchResultFamilyOverride(this, create);
  }
}

class _$SampleListFetchResultFamilyOverride implements FamilyOverride {
  _$SampleListFetchResultFamilyOverride(this.overriddenFamily, this.create);

  final Stream<SampleListFetchResult> Function(SampleListFetchResultRef ref)
      create;

  @override
  final SampleListFetchResultFamily overriddenFamily;

  @override
  SampleListFetchResultProvider getProviderOverride(
    covariant SampleListFetchResultProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [sampleListFetchResult].
class SampleListFetchResultProvider
    extends AutoDisposeStreamProvider<SampleListFetchResult> {
  /// See also [sampleListFetchResult].
  SampleListFetchResultProvider({
    required int page,
  }) : this._internal(
          (ref) => sampleListFetchResult(
            ref as SampleListFetchResultRef,
            page: page,
          ),
          from: sampleListFetchResultProvider,
          name: r'sampleListFetchResultProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sampleListFetchResultHash,
          dependencies: SampleListFetchResultFamily._dependencies,
          allTransitiveDependencies:
              SampleListFetchResultFamily._allTransitiveDependencies,
          page: page,
        );

  SampleListFetchResultProvider._internal(
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
    Stream<SampleListFetchResult> Function(SampleListFetchResultRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SampleListFetchResultProvider._internal(
        (ref) => create(ref as SampleListFetchResultRef),
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
  AutoDisposeStreamProviderElement<SampleListFetchResult> createElement() {
    return _SampleListFetchResultProviderElement(this);
  }

  SampleListFetchResultProvider _copyWith(
    Stream<SampleListFetchResult> Function(SampleListFetchResultRef ref) create,
  ) {
    return SampleListFetchResultProvider._internal(
      (ref) => create(ref as SampleListFetchResultRef),
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
    return other is SampleListFetchResultProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SampleListFetchResultRef
    on AutoDisposeStreamProviderRef<SampleListFetchResult> {
  /// The parameter `page` of this provider.
  int get page;
}

class _SampleListFetchResultProviderElement
    extends AutoDisposeStreamProviderElement<SampleListFetchResult>
    with SampleListFetchResultRef {
  _SampleListFetchResultProviderElement(super.provider);

  @override
  int get page => (origin as SampleListFetchResultProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package

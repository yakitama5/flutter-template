// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'sample_item_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sampleItemHash() => r'6429e4c1824e588c1185efca060224bc2b99dd5b';

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

/// See also [sampleItem].
@ProviderFor(sampleItem)
const sampleItemProvider = SampleItemFamily();

/// See also [sampleItem].
class SampleItemFamily extends Family<AsyncValue<SampleListEntity?>> {
  /// See also [sampleItem].
  const SampleItemFamily();

  /// See also [sampleItem].
  SampleItemProvider call({
    required String id,
  }) {
    return SampleItemProvider(
      id: id,
    );
  }

  @override
  SampleItemProvider getProviderOverride(
    covariant SampleItemProvider provider,
  ) {
    return call(
      id: provider.id,
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
  String? get name => r'sampleItemProvider';
}

/// See also [sampleItem].
class SampleItemProvider extends AutoDisposeStreamProvider<SampleListEntity?> {
  /// See also [sampleItem].
  SampleItemProvider({
    required String id,
  }) : this._internal(
          (ref) => sampleItem(
            ref as SampleItemRef,
            id: id,
          ),
          from: sampleItemProvider,
          name: r'sampleItemProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sampleItemHash,
          dependencies: SampleItemFamily._dependencies,
          allTransitiveDependencies:
              SampleItemFamily._allTransitiveDependencies,
          id: id,
        );

  SampleItemProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    Stream<SampleListEntity?> Function(SampleItemRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SampleItemProvider._internal(
        (ref) => create(ref as SampleItemRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<SampleListEntity?> createElement() {
    return _SampleItemProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SampleItemProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SampleItemRef on AutoDisposeStreamProviderRef<SampleListEntity?> {
  /// The parameter `id` of this provider.
  String get id;
}

class _SampleItemProviderElement
    extends AutoDisposeStreamProviderElement<SampleListEntity?>
    with SampleItemRef {
  _SampleItemProviderElement(super.provider);

  @override
  String get id => (origin as SampleItemProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

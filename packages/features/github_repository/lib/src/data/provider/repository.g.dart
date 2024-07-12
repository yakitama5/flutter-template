// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listOrganizationRepositoriesHash() =>
    r'e66cef80657aac21284d89a4e6dd27d825aafa33';

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

/// See also [listOrganizationRepositories].
@ProviderFor(listOrganizationRepositories)
const listOrganizationRepositoriesProvider =
    ListOrganizationRepositoriesFamily();

/// See also [listOrganizationRepositories].
class ListOrganizationRepositoriesFamily extends Family {
  /// See also [listOrganizationRepositories].
  const ListOrganizationRepositoriesFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'listOrganizationRepositoriesProvider';

  /// See also [listOrganizationRepositories].
  ListOrganizationRepositoriesProvider call({
    int page = 1,
    int perPage = 30,
    String org = 'yumemi-inc',
  }) {
    return ListOrganizationRepositoriesProvider(
      page: page,
      perPage: perPage,
      org: org,
    );
  }

  @visibleForOverriding
  @override
  ListOrganizationRepositoriesProvider getProviderOverride(
    covariant ListOrganizationRepositoriesProvider provider,
  ) {
    return call(
      page: provider.page,
      perPage: provider.perPage,
      org: provider.org,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      FutureOr<GitHubRepositoryResult> Function(
              ListOrganizationRepositoriesRef ref)
          create) {
    return _$ListOrganizationRepositoriesFamilyOverride(this, create);
  }
}

class _$ListOrganizationRepositoriesFamilyOverride implements FamilyOverride {
  _$ListOrganizationRepositoriesFamilyOverride(
      this.overriddenFamily, this.create);

  final FutureOr<GitHubRepositoryResult> Function(
      ListOrganizationRepositoriesRef ref) create;

  @override
  final ListOrganizationRepositoriesFamily overriddenFamily;

  @override
  ListOrganizationRepositoriesProvider getProviderOverride(
    covariant ListOrganizationRepositoriesProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [listOrganizationRepositories].
class ListOrganizationRepositoriesProvider
    extends AutoDisposeFutureProvider<GitHubRepositoryResult> {
  /// See also [listOrganizationRepositories].
  ListOrganizationRepositoriesProvider({
    int page = 1,
    int perPage = 30,
    String org = 'yumemi-inc',
  }) : this._internal(
          (ref) => listOrganizationRepositories(
            ref as ListOrganizationRepositoriesRef,
            page: page,
            perPage: perPage,
            org: org,
          ),
          from: listOrganizationRepositoriesProvider,
          name: r'listOrganizationRepositoriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$listOrganizationRepositoriesHash,
          dependencies: ListOrganizationRepositoriesFamily._dependencies,
          allTransitiveDependencies:
              ListOrganizationRepositoriesFamily._allTransitiveDependencies,
          page: page,
          perPage: perPage,
          org: org,
        );

  ListOrganizationRepositoriesProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
    required this.perPage,
    required this.org,
  }) : super.internal();

  final int page;
  final int perPage;
  final String org;

  @override
  Override overrideWith(
    FutureOr<GitHubRepositoryResult> Function(
            ListOrganizationRepositoriesRef ref)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ListOrganizationRepositoriesProvider._internal(
        (ref) => create(ref as ListOrganizationRepositoriesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
        perPage: perPage,
        org: org,
      ),
    );
  }

  @override
  ({
    int page,
    int perPage,
    String org,
  }) get argument {
    return (
      page: page,
      perPage: perPage,
      org: org,
    );
  }

  @override
  AutoDisposeFutureProviderElement<GitHubRepositoryResult> createElement() {
    return _ListOrganizationRepositoriesProviderElement(this);
  }

  ListOrganizationRepositoriesProvider _copyWith(
    FutureOr<GitHubRepositoryResult> Function(
            ListOrganizationRepositoriesRef ref)
        create,
  ) {
    return ListOrganizationRepositoriesProvider._internal(
      (ref) => create(ref as ListOrganizationRepositoriesRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      page: page,
      perPage: perPage,
      org: org,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ListOrganizationRepositoriesProvider &&
        other.page == page &&
        other.perPage == perPage &&
        other.org == org;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, perPage.hashCode);
    hash = _SystemHash.combine(hash, org.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ListOrganizationRepositoriesRef
    on AutoDisposeFutureProviderRef<GitHubRepositoryResult> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `perPage` of this provider.
  int get perPage;

  /// The parameter `org` of this provider.
  String get org;
}

class _ListOrganizationRepositoriesProviderElement
    extends AutoDisposeFutureProviderElement<GitHubRepositoryResult>
    with ListOrganizationRepositoriesRef {
  _ListOrganizationRepositoriesProviderElement(super.provider);

  @override
  int get page => (origin as ListOrganizationRepositoriesProvider).page;
  @override
  int get perPage => (origin as ListOrganizationRepositoriesProvider).perPage;
  @override
  String get org => (origin as ListOrganizationRepositoriesProvider).org;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package

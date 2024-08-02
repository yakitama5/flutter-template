// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_theme_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appThemeHash() => r'20c285a449ed04d64603f8e5c2f0a0fe2d478f6b';

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

/// See also [appTheme].
@ProviderFor(appTheme)
const appThemeProvider = AppThemeFamily();

/// See also [appTheme].
class AppThemeFamily extends Family {
  /// See also [appTheme].
  const AppThemeFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'appThemeProvider';

  /// See also [appTheme].
  AppThemeProvider call({
    required Brightness brightness,
  }) {
    return AppThemeProvider(
      brightness: brightness,
    );
  }

  @visibleForOverriding
  @override
  AppThemeProvider getProviderOverride(
    covariant AppThemeProvider provider,
  ) {
    return call(
      brightness: provider.brightness,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(ThemeData Function(AppThemeRef ref) create) {
    return _$AppThemeFamilyOverride(this, create);
  }
}

class _$AppThemeFamilyOverride implements FamilyOverride {
  _$AppThemeFamilyOverride(this.overriddenFamily, this.create);

  final ThemeData Function(AppThemeRef ref) create;

  @override
  final AppThemeFamily overriddenFamily;

  @override
  AppThemeProvider getProviderOverride(
    covariant AppThemeProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [appTheme].
class AppThemeProvider extends AutoDisposeProvider<ThemeData> {
  /// See also [appTheme].
  AppThemeProvider({
    required Brightness brightness,
  }) : this._internal(
          (ref) => appTheme(
            ref as AppThemeRef,
            brightness: brightness,
          ),
          from: appThemeProvider,
          name: r'appThemeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$appThemeHash,
          dependencies: AppThemeFamily._dependencies,
          allTransitiveDependencies: AppThemeFamily._allTransitiveDependencies,
          brightness: brightness,
        );

  AppThemeProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.brightness,
  }) : super.internal();

  final Brightness brightness;

  @override
  Override overrideWith(
    ThemeData Function(AppThemeRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AppThemeProvider._internal(
        (ref) => create(ref as AppThemeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        brightness: brightness,
      ),
    );
  }

  @override
  ({
    Brightness brightness,
  }) get argument {
    return (brightness: brightness,);
  }

  @override
  AutoDisposeProviderElement<ThemeData> createElement() {
    return _AppThemeProviderElement(this);
  }

  AppThemeProvider _copyWith(
    ThemeData Function(AppThemeRef ref) create,
  ) {
    return AppThemeProvider._internal(
      (ref) => create(ref as AppThemeRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      brightness: brightness,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is AppThemeProvider && other.brightness == brightness;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, brightness.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AppThemeRef on AutoDisposeProviderRef<ThemeData> {
  /// The parameter `brightness` of this provider.
  Brightness get brightness;
}

class _AppThemeProviderElement extends AutoDisposeProviderElement<ThemeData>
    with AppThemeRef {
  _AppThemeProviderElement(super.provider);

  @override
  Brightness get brightness => (origin as AppThemeProvider).brightness;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package

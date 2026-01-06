// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'preferences_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///
/// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
/// `Preference<String>`のenum値を設定して利用する.
///

@ProviderFor(StringPreference)
final stringPreferenceProvider = StringPreferenceFamily._();

///
/// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
/// `Preference<String>`のenum値を設定して利用する.
///
final class StringPreferenceProvider
    extends $NotifierProvider<StringPreference, String> {
  ///
  /// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
  /// `Preference<String>`のenum値を設定して利用する.
  ///
  StringPreferenceProvider._({
    required StringPreferenceFamily super.from,
    required Preferences<String> super.argument,
  }) : super(
         retry: null,
         name: r'stringPreferenceProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$stringPreferenceHash();

  @override
  String toString() {
    return r'stringPreferenceProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  StringPreference create() => StringPreference();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is StringPreferenceProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$stringPreferenceHash() => r'66b53c815db911bd973af7fbd3d5914b7a4c5c72';

///
/// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
/// `Preference<String>`のenum値を設定して利用する.
///

final class StringPreferenceFamily extends $Family
    with
        $ClassFamilyOverride<
          StringPreference,
          String,
          String,
          String,
          Preferences<String>
        > {
  StringPreferenceFamily._()
    : super(
        retry: null,
        name: r'stringPreferenceProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ///
  /// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
  /// `Preference<String>`のenum値を設定して利用する.
  ///

  StringPreferenceProvider call(Preferences<String> pref) =>
      StringPreferenceProvider._(argument: pref, from: this);

  @override
  String toString() => r'stringPreferenceProvider';
}

///
/// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
/// `Preference<String>`のenum値を設定して利用する.
///

abstract class _$StringPreference extends $Notifier<String> {
  late final _$args = ref.$arg as Preferences<String>;
  Preferences<String> get pref => _$args;

  String build(Preferences<String> pref);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}

///
/// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
/// `Preference<bool>`のenum値を設定して利用する.
///

@ProviderFor(BoolPreference)
final boolPreferenceProvider = BoolPreferenceFamily._();

///
/// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
/// `Preference<bool>`のenum値を設定して利用する.
///
final class BoolPreferenceProvider
    extends $NotifierProvider<BoolPreference, bool> {
  ///
  /// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
  /// `Preference<bool>`のenum値を設定して利用する.
  ///
  BoolPreferenceProvider._({
    required BoolPreferenceFamily super.from,
    required Preferences<bool> super.argument,
  }) : super(
         retry: null,
         name: r'boolPreferenceProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$boolPreferenceHash();

  @override
  String toString() {
    return r'boolPreferenceProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  BoolPreference create() => BoolPreference();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is BoolPreferenceProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$boolPreferenceHash() => r'1645984b3471a9801c471b1803d35d078c38b074';

///
/// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
/// `Preference<bool>`のenum値を設定して利用する.
///

final class BoolPreferenceFamily extends $Family
    with
        $ClassFamilyOverride<
          BoolPreference,
          bool,
          bool,
          bool,
          Preferences<bool>
        > {
  BoolPreferenceFamily._()
    : super(
        retry: null,
        name: r'boolPreferenceProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ///
  /// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
  /// `Preference<bool>`のenum値を設定して利用する.
  ///

  BoolPreferenceProvider call(Preferences<bool> pref) =>
      BoolPreferenceProvider._(argument: pref, from: this);

  @override
  String toString() => r'boolPreferenceProvider';
}

///
/// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
/// `Preference<bool>`のenum値を設定して利用する.
///

abstract class _$BoolPreference extends $Notifier<bool> {
  late final _$args = ref.$arg as Preferences<bool>;
  Preferences<bool> get pref => _$args;

  bool build(Preferences<bool> pref);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}

///
/// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
/// `Preference<int>`のenum値を設定して利用する.
///

@ProviderFor(IntPreference)
final intPreferenceProvider = IntPreferenceFamily._();

///
/// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
/// `Preference<int>`のenum値を設定して利用する.
///
final class IntPreferenceProvider
    extends $NotifierProvider<IntPreference, int> {
  ///
  /// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
  /// `Preference<int>`のenum値を設定して利用する.
  ///
  IntPreferenceProvider._({
    required IntPreferenceFamily super.from,
    required Preferences<int> super.argument,
  }) : super(
         retry: null,
         name: r'intPreferenceProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$intPreferenceHash();

  @override
  String toString() {
    return r'intPreferenceProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  IntPreference create() => IntPreference();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is IntPreferenceProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$intPreferenceHash() => r'ff1eb7bca50d959f32b13d584a657b5facf24585';

///
/// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
/// `Preference<int>`のenum値を設定して利用する.
///

final class IntPreferenceFamily extends $Family
    with $ClassFamilyOverride<IntPreference, int, int, int, Preferences<int>> {
  IntPreferenceFamily._()
    : super(
        retry: null,
        name: r'intPreferenceProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ///
  /// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
  /// `Preference<int>`のenum値を設定して利用する.
  ///

  IntPreferenceProvider call(Preferences<int> pref) =>
      IntPreferenceProvider._(argument: pref, from: this);

  @override
  String toString() => r'intPreferenceProvider';
}

///
/// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
/// `Preference<int>`のenum値を設定して利用する.
///

abstract class _$IntPreference extends $Notifier<int> {
  late final _$args = ref.$arg as Preferences<int>;
  Preferences<int> get pref => _$args;

  int build(Preferences<int> pref);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}

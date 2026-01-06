// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'ui_style_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// UIスタイルを管理するProvider
/// SharedPreferencesの同期を待たずにUIに反映するため、Notifierを利用している

@ProviderFor(UiStyle)
final uiStyleProvider = UiStyleProvider._();

/// UIスタイルを管理するProvider
/// SharedPreferencesの同期を待たずにUIに反映するため、Notifierを利用している
final class UiStyleProvider extends $NotifierProvider<UiStyle, UIStyle> {
  /// UIスタイルを管理するProvider
  /// SharedPreferencesの同期を待たずにUIに反映するため、Notifierを利用している
  UiStyleProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'uiStyleProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$uiStyleHash();

  @$internal
  @override
  UiStyle create() => UiStyle();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UIStyle value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UIStyle>(value),
    );
  }
}

String _$uiStyleHash() => r'b771ccec73dffa1b44fa4b80f06cf6b03e48d113';

/// UIスタイルを管理するProvider
/// SharedPreferencesの同期を待たずにUIに反映するため、Notifierを利用している

abstract class _$UiStyle extends $Notifier<UIStyle> {
  UIStyle build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<UIStyle, UIStyle>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<UIStyle, UIStyle>,
              UIStyle,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

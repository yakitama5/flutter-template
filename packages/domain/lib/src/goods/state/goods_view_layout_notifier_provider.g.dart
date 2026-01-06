// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'goods_view_layout_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GoodsViewLayoutNotifier)
final goodsViewLayoutProvider = GoodsViewLayoutNotifierProvider._();

final class GoodsViewLayoutNotifierProvider
    extends $NotifierProvider<GoodsViewLayoutNotifier, ViewLayout> {
  GoodsViewLayoutNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'goodsViewLayoutProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$goodsViewLayoutNotifierHash();

  @$internal
  @override
  GoodsViewLayoutNotifier create() => GoodsViewLayoutNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ViewLayout value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ViewLayout>(value),
    );
  }
}

String _$goodsViewLayoutNotifierHash() =>
    r'd9409dbcdadd7dfd9d58d3a9c216d654a117d88b';

abstract class _$GoodsViewLayoutNotifier extends $Notifier<ViewLayout> {
  ViewLayout build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ViewLayout, ViewLayout>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ViewLayout, ViewLayout>,
              ViewLayout,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

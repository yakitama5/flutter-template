import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/dynamic_color_support_status.dart';
import 'core_palette_provider.dart';

part 'dynamic_color_support_provider.g.dart';

@riverpod
DynamicColorSupportStatus dynamicColorSupportProvider(
  DynamicColorSupportProviderRef ref,
) {
  final corePalette = ref.watch(corePaletteProvider);
  final isSupport = corePalette != null &&
      switch (defaultTargetPlatform) {
        TargetPlatform.iOS || TargetPlatform.macOS => false,
        _ => true,
      };

  return isSupport
      ? DynamicColorSupportStatus.supported
      : DynamicColorSupportStatus.notSupported;
}

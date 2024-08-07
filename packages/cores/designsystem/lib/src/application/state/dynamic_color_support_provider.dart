import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/dynamic_color_support_status.dart';
import 'core_palette_provider.dart';

part 'dynamic_color_support_provider.g.dart';

@riverpod
DynamicColorSupportStatus dynamicColorSupportProvider(
  DynamicColorSupportProviderRef ref,
) {
  final corePalette = ref.watch(corePaletteProvider);
  final isSupport = corePalette != null && !Platform.isIOS && !Platform.isMacOS;

  return isSupport
      ? DynamicColorSupportStatus.supported
      : DynamicColorSupportStatus.notSupported;
}

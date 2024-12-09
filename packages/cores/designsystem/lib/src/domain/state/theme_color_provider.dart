import 'dart:async';

import 'package:cores_designsystem/src/domain/state/dynamic_color_support_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../interface/theme_repository.dart';
import '../value_object/dynamic_color_support_status.dart';
import '../value_object/theme_color.dart';

part 'theme_color_provider.g.dart';

/// カラースタイルを管理するProvider
/// SharedPreferencesの同期を待たずにUIに反映するため、Notifierを利用している
@riverpod
class ThemeColorNotifier extends _$ThemeColorNotifier {
  ThemeRepository get _repository => ref.watch(themeRepositoryProvider);

  @override
  ThemeColor build() {
    final themeColor = _repository.fetchThemeColor();

    // 初期値は `DynamicColor`のサポート有無で変更
    final supportStatus = ref.watch(dynamicColorSupportProviderProvider);
    final defaultValue = switch (supportStatus) {
      DynamicColorSupportStatus.supported => ThemeColor.dynamicColor,
      DynamicColorSupportStatus.notSupported => ThemeColor.appColor,
    };

    return themeColor ?? defaultValue;
  }

  Future<void> update(ThemeColor themeColor) async {
    // 設定反映を待たずに設定する
    unawaited(_repository.updateThemeColor(themeColor));
    state = themeColor;
  }
}

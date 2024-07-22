import 'dart:async';

import 'package:cores_designsystem/src/domain/interface/theme_repository.dart';
import 'package:cores_designsystem/src/domain/value_object/ui_style.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ui_style_provider.g.dart';

@riverpod
class UiStyle extends _$UiStyle {
  ThemeRepository get _repository => ref.read(themeRepositoryProvider);

  @override
  UIStyle build() {
    final uiStyle = _repository.fetchUIStyle();

    // 初期値は「システム設定」
    return uiStyle ?? UIStyle.system;
  }

  Future<void> update(UIStyle uiStyle) async {
    // 設定反映を待たずに設定する
    unawaited(_repository.updateUIStyle(uiStyle));
    state = uiStyle;
  }
}

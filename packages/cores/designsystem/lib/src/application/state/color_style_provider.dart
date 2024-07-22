import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/interface/theme_repository.dart';
import '../../domain/value_object/color_style.dart';

part 'color_style_provider.g.dart';

// 名称重複を避けるために別名指定で外部に公開する
// ignore: invalid_use_of_internal_member, library_private_types_in_public_api
AutoDisposeNotifierProviderImpl<_ColorStyle, ColorStyle>
    get colorStyleProvider => _colorStyleProvider;

@riverpod
class _ColorStyle extends _$ColorStyle {
  ThemeRepository get _repository => ref.read(themeRepositoryProvider);

  @override
  ColorStyle build() {
    final colorStyle = _repository.fetchColorStyle();

    // 初期値は「システム設定」
    // TODO(yakitama5): 初期値を対応状況によって判定する
    return colorStyle ?? ColorStyle.dynamicColor;
  }

  Future<void> update(ColorStyle colorStyle) async {
    // 設定反映を待たずに設定する
    unawaited(_repository.updateColorStyle(colorStyle));
    state = colorStyle;
  }
}

import 'package:cores_designsystem/src/domain/value_object/ui_style.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ui_style_provider.g.dart';

@riverpod
class UiStyle extends _$UiStyle {
  @override
  UIStyle build() {
    return UIStyle.android;
  }
}

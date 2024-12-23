import 'package:cores_domain/designsystem.dart';
import 'package:flutter/material.dart';

extension ThemeColorX on ThemeColor {
  Color? get seedColor => switch (this) {
        ThemeColor.appColor => null,
        ThemeColor.dynamicColor => null,
        ThemeColor.blue => Colors.blue,
        ThemeColor.purple => Colors.purple,
        ThemeColor.pink => Colors.pink,
        ThemeColor.red => Colors.red,
        ThemeColor.orange => Colors.orange,
        ThemeColor.yellow => Colors.yellow,
        ThemeColor.green => Colors.green,
      };

  static List<ThemeColor> get colorValues =>
      ThemeColor.values.where((i) => i.seedColor != null).toList();
  static List<ThemeColor> get systemValues =>
      ThemeColor.values.where((i) => i.seedColor == null).toList();
}

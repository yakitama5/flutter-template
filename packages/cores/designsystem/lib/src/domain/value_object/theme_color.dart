import 'package:flutter/material.dart';

enum ThemeColor {
  appColor(null),
  dynamicColor(null),
  blue(Colors.blue),
  purple(Colors.purple),
  pink(Colors.pink),
  red(Colors.red),
  orange(Colors.orange),
  yellow(Colors.yellow),
  green(Colors.green);

  const ThemeColor(this.seedColor);

  static List<ThemeColor> get colorValues =>
      values.where((i) => i.seedColor != null).toList();
  static List<ThemeColor> get systemValues =>
      values.where((i) => i.seedColor == null).toList();

  final Color? seedColor;
}

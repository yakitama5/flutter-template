import 'package:flutter/material.dart';

/// Viewのレイアウト
enum ViewLayout {
  grid(Icons.grid_3x3_rounded),
  list(Icons.list_alt_rounded);

  const ViewLayout(this.iconData);

  final IconData iconData;
}

extension ViewLayoutX on ViewLayout {
  String get title => 'TODO';
}

import 'package:flutter/material.dart';

/// Viewのレイアウト
enum ViewLayout {
  grid(Icons.grid_3x3_rounded),
  list(Icons.list_rounded);

  const ViewLayout(this.iconData);

  final IconData iconData;
}

import 'package:flutter/material.dart';

enum SortOrder {
  asc(Icons.arrow_downward_rounded),
  desc(Icons.arrow_upward_rounded);

  const SortOrder(this.iconData);

  final IconData iconData;
}

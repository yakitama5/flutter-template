import 'package:flutter/material.dart';

import '../../../i18n/strings.g.dart';

enum SortOrder {
  asc(Icons.arrow_downward_rounded),
  desc(Icons.arrow_upward_rounded);

  const SortOrder(this.iconData);

  final IconData iconData;
}

extension SortOrderX on SortOrder {
  String get title => i18n.core.sortOrder(context: this);
  SortOrder get reverse => switch (this) {
        SortOrder.asc => SortOrder.desc,
        SortOrder.desc => SortOrder.asc,
      };
}

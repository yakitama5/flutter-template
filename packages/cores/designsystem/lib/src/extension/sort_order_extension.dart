extension SortOrderX on SortOrder {
  String get title => i18n.core.sortOrder(context: this);
  SortOrder get reverse => switch (this) {
        SortOrder.asc => SortOrder.desc,
        SortOrder.desc => SortOrder.asc,
      };
}

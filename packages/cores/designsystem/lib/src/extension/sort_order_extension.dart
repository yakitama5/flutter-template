import 'package:cores_domain/core.dart';

extension SortOrderX on SortOrder {
  // TODO(yakitama5): テスト
  // String get title => i18n.core.sortOrder(context: this);
  String get title => 'Test';
  SortOrder get reverse => switch (this) {
        SortOrder.asc => SortOrder.desc,
        SortOrder.desc => SortOrder.asc,
      };
}

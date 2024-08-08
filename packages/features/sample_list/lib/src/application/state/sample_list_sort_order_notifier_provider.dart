import 'package:cores_core/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sample_list_sort_order_notifier_provider.g.dart';

@riverpod
class SampleListSortOrderNotifier extends _$SampleListSortOrderNotifier {
  @override
  SortOrder build() {
    return SortOrder.asc;
  }

  // ignore: use_setters_to_change_properties
  void update(SortOrder sortOrder) {
    state = sortOrder;
  }
}

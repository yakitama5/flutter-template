import 'package:features_sample_list/src/domain/value_object/sample_list_sort_key.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sample_list_sort_key_notifier_provider.g.dart';

@riverpod
class SampleListSortKeyNotifier extends _$SampleListSortKeyNotifier {
  @override
  SampleListSortKey build() {
    // Default value
    return SampleListSortKey.createdAt;
  }

  // ignore: use_setters_to_change_properties
  void update(SampleListSortKey sortKey) {
    state = sortKey;
  }
}

import 'package:cores_core/domain.dart';
import 'package:features_sample_list/src/domain/value_object/sample_list_sort_key.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sample_list_query.freezed.dart';

@freezed
class SampleListQuery with _$SampleListQuery {
  const factory SampleListQuery({
    required SampleListSortKey sortKey,
    required SortOrder sortOrder,
  }) = _SampleListQuery;
}

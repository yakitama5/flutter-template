import 'package:features_sample_list/src/domain/entity/sample_list_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sample_list_fetch_result.freezed.dart';

@freezed
class SampleListFetchResult with _$SampleListFetchResult {
  const factory SampleListFetchResult({
    required List<SampleListEntity> items,
    required int totalCount,
  }) = _SampleListFetchResult;
}

import 'package:features_sample_list/src/domain/entity/sample_list_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sample_list_response.freezed.dart';

@freezed
class SampleListResponse with _$SampleListResponse {
  const factory SampleListResponse({
    required List<SampleListEntity> items,
    required int totalCount,
  }) = _SampleListResponse;
}

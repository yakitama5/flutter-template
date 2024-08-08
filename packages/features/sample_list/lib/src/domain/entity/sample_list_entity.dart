import 'package:freezed_annotation/freezed_annotation.dart';

part 'sample_list_entity.freezed.dart';

@freezed
class SampleListEntity with _$SampleListEntity {
  const factory SampleListEntity({
    required String id,
    required String name,
    int? price,
    String? imageUrl,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _SampleListEntity;
}

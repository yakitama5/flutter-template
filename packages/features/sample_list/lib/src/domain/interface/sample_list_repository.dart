import 'package:features_sample_list/src/domain/entity/sample_list_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../value_object/sample_list_query.dart';
import '../value_object/sample_list_response.dart';

part 'sample_list_repository.g.dart';

@Riverpod(keepAlive: true)
SampleListRepository sampleListRepository(SampleListRepositoryRef ref) =>
    throw UnimplementedError();

abstract class SampleListRepository {
  Stream<SampleListResponse> fetchList({
    int page = 1,
    int pageSize = 10,
    required SampleListQuery query,
  });

  Stream<SampleListEntity?> fetch({required String id});
}

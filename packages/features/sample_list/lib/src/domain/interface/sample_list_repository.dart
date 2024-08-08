import 'package:cores_core/domain.dart';
import 'package:features_sample_list/src/domain/entity/sample_list_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/sample_list_fetch_result.dart';
import '../value_object/sample_list_sort_key.dart';

part 'sample_list_repository.g.dart';

@Riverpod(keepAlive: true)
SampleListRepository sampleListRepository(SampleListRepositoryRef ref) =>
    throw UnimplementedError();

abstract class SampleListRepository {
  Stream<SampleListFetchResult> fetchList({
    int page = 1,
    required SampleListSortKey sortKey,
    required SortOrder sortOrder,
  });

  Stream<SampleListEntity?> fetch({required String id});
}

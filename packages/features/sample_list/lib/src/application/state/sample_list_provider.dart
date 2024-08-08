import 'package:features_sample_list/src/application/state/sample_item_fetch_result_provider.dart';
import 'package:features_sample_list/src/domain/entity/sample_list_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sample_list_provider.g.dart';

@riverpod
Future<List<SampleListEntity>> sampleList(
  SampleListRef ref, {
  required int page,
}) async {
  final result =
      await ref.watch(sampleListFetchResultProvider(page: page).future);

  return result.items;
}

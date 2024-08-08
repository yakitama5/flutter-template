import 'package:features_sample_list/src/domain/interface/sample_list_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entity/sample_list_entity.dart';

part 'sample_item_provider.g.dart';

@riverpod
Stream<SampleListEntity?> sampleItem(SampleItemRef ref, {required String id}) =>
    ref.watch(sampleListRepositoryProvider).fetch(id: id);

import 'dart:math';

import 'package:clock/clock.dart';
import 'package:collection/collection.dart';
import 'package:cores_core/domain.dart';
import 'package:features_sample_list/src/domain/entity/sample_list_entity.dart';
import 'package:features_sample_list/src/domain/value_object/sample_list_sort_key.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/entity/sample_list_fetch_result.dart';
import '../../domain/interface/sample_list_repository.dart';

const _pageSize = 10;
const _totalLength = 500;

class FakeSampleListRepository extends SampleListRepository {
  FakeSampleListRepository(this.ref);

  final Ref ref;

  static final items = List.generate(
    _totalLength,
    (i) {
      return SampleListEntity(
        id: 'Id $i',
        name: 'Name $i',
        createdAt: clock.fromNow(days: -i),
        updatedAt: clock.fromNow(days: -i),
      );
    },
  );

  @override
  Stream<SampleListEntity?> fetch({required String id}) {
    final item = items.firstWhere((e) => e.id == id);
    return Stream.value(item);
  }

  @override
  Stream<SampleListFetchResult> fetchList({
    int page = 1,
    required SampleListSortKey sortKey,
    required SortOrder sortOrder,
  }) async* {
    await Future<void>.delayed(const Duration(milliseconds: 1000));

    final sortItems = items.sortedBy<String>(
      (e) => switch (sortKey) {
        SampleListSortKey.createdAt => e.createdAt.toString(),
        SampleListSortKey.name => e.name,
        SampleListSortKey.price => e.price.toString(),
      },
    );

    final orderItems = switch (sortOrder) {
      SortOrder.asc => sortItems,
      SortOrder.desc => sortItems.reversed.toList(),
    };

    final start = (page - 1) * _pageSize;
    final end = min(start + _pageSize, items.length);
    final result = SampleListFetchResult(
      items: orderItems.sublist(start, end),
      totalCount: items.length,
    );

    yield* Stream.value(result);
  }
}

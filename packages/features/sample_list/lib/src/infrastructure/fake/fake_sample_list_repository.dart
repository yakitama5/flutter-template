import 'dart:math';

import 'package:clock/clock.dart';
import 'package:collection/collection.dart';
import 'package:cores_core/domain.dart';
import 'package:features_sample_list/src/domain/entity/sample_list_entity.dart';
import 'package:features_sample_list/src/domain/value_object/sample_list_sort_key.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/interface/sample_list_repository.dart';
import '../../domain/value_object/sample_list_query.dart';
import '../../domain/value_object/sample_list_response.dart';

const _pageSize = 10;
const _totalLength = 100;

const _images = [
  'https://placehold.jp/3d4070/ffffff/150x150.png?text=Example',
  'https://placehold.jp/703e65/ffffff/150x150.png?text=Example',
  'https://placehold.jp/6643b6/ffffff/150x150.png?text=Example',
  'https://placehold.jp/b6ad43/ffffff/150x150.png?text=Example',
  'https://placehold.jp/b65a43/ffffff/150x150.png?text=Example',
  'https://placehold.jp/43a9b6/ffffff/150x150.png?text=Example',
  'https://placehold.jp/43b65a/ffffff/150x150.png?text=Example',
];

class FakeSampleListRepository extends SampleListRepository {
  FakeSampleListRepository(this.ref);

  final Ref ref;

  static final items = List.generate(
    _totalLength,
    (i) {
      return SampleListEntity(
        id: 'Id $i',
        name: 'Name $i',
        price: i * 100,
        imageUrl: _images[i % _images.length],
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
  Stream<SampleListResponse> fetchList({
    int page = 1,
    required SampleListQuery query,
  }) async* {
    await Future<void>.delayed(const Duration(milliseconds: 3000));

    final sortItems = items.sortedBy<String>(
      (e) => switch (query.sortKey) {
        SampleListSortKey.createdAt => e.createdAt.toString(),
        SampleListSortKey.name => e.name,
        SampleListSortKey.price => e.price.toString(),
      },
    );

    final orderItems = switch (query.sortOrder) {
      SortOrder.asc => sortItems,
      SortOrder.desc => sortItems.reversed.toList(),
    };

    final start = (page - 1) * _pageSize;
    final end = min(start + _pageSize, items.length);
    final result = SampleListResponse(
      items: orderItems.sublist(start, end),
      totalCount: items.length,
    );

    yield* Stream.value(result);
  }
}

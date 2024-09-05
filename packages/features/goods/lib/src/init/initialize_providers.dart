import 'package:features_goods/src/domain/interface/goods_repository.dart';
import 'package:features_goods/src/infrastructure/fake/fake_goods_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Returns list of [Override] that should be applied to root [ProviderScope].
Future<List<Override>> initializeGoodsProviders() async {
  return <Override>[
    goodsRepositoryProvider.overrideWith(FakeGoodsRepository.new),
  ];
}

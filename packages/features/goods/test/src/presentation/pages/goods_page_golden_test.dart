// ignore_for_file: scoped_providers_should_specify_dependencies
import 'package:alchemist/alchemist.dart';
import 'package:features_goods/presentation.dart';
import 'package:features_goods/src/application/state/goods_list_provider.dart';
import 'package:features_goods/src/domain/entity/goods.dart';
import 'package:features_goods/src/domain/value_object/goods_fetch_query.dart';
import 'package:features_goods/src/domain/value_object/goods_fetch_response.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../utils/golden_test_device_scenario.dart';
import '../../../utils/golden_test_utils.dart';

void main() {
  group('商品一覧画面', () {
    // ダミーモデル
    final dummyGoods = Goods(
      id: 'id',
      name: 'Name',
      price: 1980,
      description: 'Description',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );

    goldenTest(
      'GoodsPage',
      fileName: 'golden_goods_page',
      builder: () => GoldenTestGroup(
        children: [
          GoldenTestDeviceScenario(
            name: 'First error',
            builder: () => testPage(child: const GoodsPage()),
          ),
          GoldenTestDeviceScenario(
            name: 'Normal',
            builder: () => testPage(
              overrides: [
                goodsListProvider(
                  page: 1,
                  query: const GoodsFetchQuery(),
                ).overrideWith(
                  (provider) => Stream.value(
                    GoodsFetchResponse(
                      goods: [dummyGoods],
                      totalCount: 1,
                    ),
                  ),
                ),
              ],
              child: const GoodsPage(),
            ),
          ),
        ],
      ),
    );
  });
}

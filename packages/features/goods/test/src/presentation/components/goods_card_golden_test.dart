import 'package:alchemist/alchemist.dart';
import 'package:features_goods/src/domain/entity/goods.dart';
import 'package:features_goods/src/presentation/components/goods_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../utils/golden_test_device_scenario.dart';

void main() {
  group('商品カード', () {
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
      'GoodsCard',
      fileName: 'golden_goods_card',
      builder: () => GoldenTestGroup(
        scenarioConstraints: const BoxConstraints(maxHeight: 288),
        children: [
          GoldenTestDeviceScenario(
            name: 'Normal',
            builder: () => GoodsCard(
              item: dummyGoods,
            ),
          ),
          GoldenTestDeviceScenario(
            name: 'Description overflow',
            builder: () => GoodsCard(
              item: dummyGoods.copyWith(
                description: '''
Well, will you hang out with us next week? Well, will you hang out with us next week? Well, will you hang out with us next week? Well, will you hang out with us next week? Well, will you hang out with us next week? Well, will you hang out with us next week? Well, will you hang out with us next week? Well, will you hang out with us next week? Well, will you hang out with us next week? Well, will you hang out with us next week? Well, will you hang out with us next week? Well, will you hang out wi
''',
              ),
            ),
          ),
        ],
      ),
    );
  });
}

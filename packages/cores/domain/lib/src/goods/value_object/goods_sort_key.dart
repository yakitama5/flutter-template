import 'package:features_goods/i18n/strings.g.dart';

enum GoodsSortKey {
  createdAt,
  name,
  price,
}

extension GoodsSortKeyX on GoodsSortKey {
  String get title => i18n.goods.goodsSortKey(context: this);
}

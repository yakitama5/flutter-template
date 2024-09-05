import 'package:features_goods/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:nested/nested.dart';

Translations get goodsI18n => i18n;

class GoodsTranslationProvider extends SingleChildStatelessWidget {
  const GoodsTranslationProvider({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) =>
      TranslationProvider(
        child: child ?? const SizedBox.shrink(),
      );
}

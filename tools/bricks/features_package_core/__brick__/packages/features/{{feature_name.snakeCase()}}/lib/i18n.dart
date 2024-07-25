import 'package:features_{{feature_name.snakeCase()}}/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:nested/nested.dart';

Translations get {{feature_name.camelCase()}}I18n => i18n;

class {{feature_name.pascalCase()}}TranslationProvider extends SingleChildStatelessWidget {
  const {{feature_name.pascalCase()}}TranslationProvider({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) =>
      TranslationProvider(
        child: child ?? const SizedBox.shrink(),
      );
}

import 'package:features_user/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:nested/nested.dart';

Translations get userI18n => i18n;

class UserTranslationProvider extends SingleChildStatelessWidget {
  const UserTranslationProvider({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) =>
      TranslationProvider(
        child: child ?? const SizedBox.shrink(),
      );
}

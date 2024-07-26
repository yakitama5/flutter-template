import 'package:features_auth/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:nested/nested.dart';

Translations get authI18n => i18n;

class AuthTranslationProvider extends SingleChildStatelessWidget {
  const AuthTranslationProvider({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) =>
      TranslationProvider(
        child: child ?? const SizedBox.shrink(),
      );
}

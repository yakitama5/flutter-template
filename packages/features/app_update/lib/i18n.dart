import 'package:features_app_update/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:nested/nested.dart';

Translations get appUpdateI18n => i18n;

class AppUpdateTranslationProvider extends SingleChildStatelessWidget {
  const AppUpdateTranslationProvider({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) =>
      TranslationProvider(
        child: child ?? const SizedBox.shrink(),
      );
}

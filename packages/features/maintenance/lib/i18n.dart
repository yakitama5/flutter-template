import 'package:features_maintenance/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:nested/nested.dart';

Translations get maintenanceI18n => i18n;

class MaintenanceTranslationProvider extends SingleChildStatelessWidget {
  const MaintenanceTranslationProvider({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) =>
      TranslationProvider(
        child: child ?? const SizedBox.shrink(),
      );
}

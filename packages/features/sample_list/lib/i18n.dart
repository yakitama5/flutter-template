import 'package:features_sample_list/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:nested/nested.dart';

Translations get sampleListI18n => i18n;

class SampleListTranslationProvider extends SingleChildStatelessWidget {
  const SampleListTranslationProvider({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) =>
      TranslationProvider(
        child: child ?? const SizedBox.shrink(),
      );
}

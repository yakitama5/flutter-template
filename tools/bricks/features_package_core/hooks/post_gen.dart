import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) {
  final featureName = context.vars['feature_name'] as String;

  _addFeatureDependency(featureName: featureName);
  _addi18n(featureName: featureName);

  // Process.runSync(
  //   'melos',
  //   ['bs'],
  // );
  // Process.runSync(
  //   'melos',
  //   ['run', 'regenerate_by_using_gen_l10n'],
  // );
}

/// appにfeatureの依存を追加
void _addFeatureDependency({
  required String featureName,
}) {
  Process.runSync(
    'dart',
    [
      'pub',
      'add',
      // Dartバージョンが上がったらこっちの書き方に変更する
      // https://dart.dev/tools/pub/cmd/pub-add#path-1
      // '\'features_$featureName:{"path":"../../packages/features/$featureName"}\'',
      'features_$featureName',
      '--path',
      '../../packages/features/$featureName',
    ],
    workingDirectory: 'apps/app',
  );
}

/// appのmain.dartにi18nのimportなどを追加
void _addi18n({
  required String featureName,
}) {
  // main.dartファイルのパス
  String filePath = 'apps/app/lib/main.dart';

  // main.dartファイルを読み込み
  String fileContent = File(filePath).readAsStringSync();

  // 最初の行に追加するimport文
  String importStatement =
      "import 'package:features_$featureName/i18n.dart';\n";

  // 追加するコード
  String newTranslationProvider = '''
        ${featureName.pascalCase}TranslationProvider(),
  ''';

  // import文を最初に追加
  fileContent = importStatement + fileContent;

  // Slangの`TranslationProvider()`を追加
  fileContent = fileContent.replaceFirst(
    '_AppTranslationProvider(),',
    '_AppTranslationProvider(),\n$newLocalizationsDelegates',
  );

  // main.dartファイルを再度書き込み
  File(filePath).writeAsStringSync(fileContent);

  // フォーマット
  // importのソート未対応
  Process.runSync('dart', ['format', filePath]);
}

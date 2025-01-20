import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) {
  final packageName = context.vars['package_name'] as String;

  _addFeatureDependency(packageName: packageName);

  Process.runSync(
    'melos',
    ['bs'],
    runInShell: true,
  );
}

void _addFeatureDependency({
  required String packageName,
}) {
  Process.runSync(
    'dart',
    [
      'pub',
      'add',
      // Dartバージョンが上がったらこっちの書き方に変更する
      // https://dart.dev/tools/pub/cmd/pub-add#path-1
      // '\'features_$packageName:{"path":"../../packages/infrastructure/$packageName"}\'',
      'infrastructure_$packageName',
      '--path',
      '../../packages/infrastructure/$packageName',
    ],
    workingDirectory: 'packages/cores/dependency_override',
    runInShell: true,
  );
}

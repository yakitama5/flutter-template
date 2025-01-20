import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) {
  final packageName = context.vars['package_name'] as String;

  final isExists =
      Directory('packages/infrastructure/$packageName').existsSync();

  if (isExists) {
    return;
  }

  // パッケージがまだ存在しない場合は、infrastructure_package_core brickでパッケージを作成する
  Directory currentDir = Directory.current;
  context.logger.info('currentDir: ${currentDir}');
  Process.runSync(
    'mason',
    [
      'make',
      'infrastructure_package_core',
      '--package_name',
      packageName,
    ],
    runInShell: true,
  );
}

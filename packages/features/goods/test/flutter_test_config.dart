import 'dart:async';

import 'package:alchemist/alchemist.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future<void> testExecutable(AsyncCallback testMain) async {
  return AlchemistConfig.runWithConfig(
    config: AlchemistConfig(
      theme: ThemeData.light(),
      ciGoldensConfig: const CiGoldensConfig(
        enabled: false,
      ),
      platformGoldensConfig: const PlatformGoldensConfig(),
    ),
    run: testMain,
  );
}

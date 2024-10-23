import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/app_build_config.dart';

part 'app_build_config_provider.g.dart';

@Riverpod(keepAlive: true)
AppBuildConfig appBuildConfig(Ref ref) => throw UnimplementedError();

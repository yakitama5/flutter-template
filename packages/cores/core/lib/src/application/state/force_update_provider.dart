import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../application/state/app_build_config_provider.dart';
import '../model/force_update_status.dart';
import 'force_update_version_provider.dart';

part 'force_update_provider.g.dart';

@Riverpod(keepAlive: true)
class ForceUpdate extends _$ForceUpdate {
  @override
  ForceUpdateStatus build() {
    final forceUpdateVersionState = ref.watch(forceUpdateVersionProvider);
    final currentVersion = ref.watch(
      appBuildConfigProvider.select((value) => value.version),
    );

    final enabled = ForceUpdateStatus.isForceUpdateEnabled(
      currentVersion: currentVersion,
      forceUpdateTargetVersion: forceUpdateVersionState,
    );

    return ForceUpdateStatus(
      enabled: enabled,
    );
  }

  /// Usage case: When the user can select whether to update or not
  void disable() {
    state = state.copyWith(
      enabled: false,
    );
  }
}

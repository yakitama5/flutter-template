import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/maintenance_mode_status.dart';

part 'maintenance_mode_provider.g.dart';

@Riverpod(keepAlive: true)
class MaintenanceMode extends _$MaintenanceMode {
  @override
  MaintenanceModeStatus build() {
    return const MaintenanceModeStatus();
  }

  void update({
    required bool enabled,
  }) {
    state = state.copyWith(
      enabled: enabled,
    );
  }
}

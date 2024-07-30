import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/app_status.dart';
import 'force_update_provider.dart';
import 'maintenance_mode_provider.dart';

part 'app_status_provider.g.dart';

@Riverpod(keepAlive: true)
AppStatus appStatus(AppStatusRef ref) {
  final maintenanceModeStatus = ref.watch(maintenanceModeProvider);
  final forceUpdateStatus = ref.watch(forceUpdateProvider);

  return AppStatus(
    maintenanceModeStatus: maintenanceModeStatus,
    forceUpdateStatus: forceUpdateStatus,
  );
}

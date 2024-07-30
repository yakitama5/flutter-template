import 'package:cores_core/app_status.dart';
import 'package:cores_core/presentation.dart';
import 'package:cores_designsystem/common_assets.dart';
import 'package:features_debug_mode/ui.dart';
import 'package:features_github_repository/ui.dart';
import 'package:features_setting/presentation.dart';
import 'package:features_webview/webview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/main_page.dart';
import 'package:flutter_app/ui/home_page.dart';
import 'package:flutter_app/ui/provider/navigator_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'package:flutter_app/router/routes/main/home/debug_page_route.dart';
part 'package:flutter_app/router/routes/main/home/home_shell_branch.dart';
part 'package:flutter_app/router/routes/main/home/web_page_route.dart';
part 'package:flutter_app/router/routes/main/main_page_shell_route.dart';
part 'package:flutter_app/router/routes/main/setting/setting_shell_branch.dart';
part 'package:flutter_app/router/routes/maintenance_page_route.dart';
part 'router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

@Riverpod(keepAlive: true)
GoRouter router(RouterRef ref) {
  final maintenanceModeStatus = ref.watch(
    appStatusProvider.select((appStatus) => appStatus.maintenanceModeStatus),
  );
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    routes: $appRoutes,
    debugLogDiagnostics: kDebugMode,
    initialLocation: HomePageRoute.path,
    redirect: (_, __) {
      final maintenanceModeEnabled = maintenanceModeStatus.enabled;

      if (maintenanceModeEnabled) {
        return MaintenancePageRoute.path;
      }
      return null;
    },
  );
}

import 'package:cores_core/presentation.dart';
import 'package:cores_designsystem/common_assets.dart';
import 'package:features_maintenance/presentation.dart';
import 'package:features_setting/presentation.dart';
import 'package:features_user/presentation.dart';
import 'package:features_webview/webview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/application/state/initial_location_provider.dart';
import 'package:flutter_app/src/presentation/pages/home_page.dart';
import 'package:flutter_app/src/presentation/router/routes/main/navigator_page.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../navigator/navigator_provider.dart';
import 'router_notifier_provider.dart';

part '../routes/main/base_shell_route.dart';
part '../routes/main/home/home_shell_branch.dart';
part '../routes/main/home/web_page_route.dart';
part '../routes/main/setting/setting_shell_branch.dart';
part '../routes/maintenance_page_route.dart';
part 'router_provider.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

@riverpod
GoRouter router(RouterRef ref) {
  final notifier = ref.watch(routerNotifierProvider.notifier);
  final initialLocation = ref.watch(initialLocationProvider);

  return GoRouter(
    routes: $appRoutes,
    debugLogDiagnostics: kDebugMode,
    initialLocation: initialLocation,

    // GoRouterそのものが再生成されないように、redirectは外部のNotifierに定義
    // ログイン状態やデータの変更でredirectを検知するように、`refreshListenable`を設定
    redirect: notifier.redirect,
    refreshListenable: notifier,
  );
}

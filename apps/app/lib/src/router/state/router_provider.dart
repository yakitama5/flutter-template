import 'package:flutter/foundation.dart';
import 'package:flutter_app/src/router/routes/base_shell_route.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'initial_location_provider.dart';
import 'router_notifier_provider.dart';

part 'router_provider.g.dart';

@riverpod
GoRouter router(Ref ref) {
  final notifier = ref.watch(routerNotifierProvider.notifier);
  final initialLocation = ref.watch(initialLocationProvider);

  return GoRouter(
    routes: $appRoutes,
    debugLogDiagnostics: kDebugMode,
    initialLocation: initialLocation,

    // GoRouterそのものが再生成されないように、redirectは外部のNotifierに定義
    // ログイン状態やデータの変更でredirectを検知するように、`refreshListenable`を設定
    redirect: (_, routeState) => notifier.redirect(routeState),
    refreshListenable: notifier,
  );
}

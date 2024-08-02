import 'package:cores_core/application.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'router_provider.dart';

part 'router_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class RouterNotifier extends _$RouterNotifier implements Listenable {
  VoidCallback? routerListener;

  @override
  Future<void> build() async {
    ref.listenSelf((previous, next) {
      if (state.isLoading) {
        return;
      }

      routerListener?.call();
    });
  }

  Future<String?> redirect(
    BuildContext context,
    GoRouterState routeState,
  ) async {
    if (state.isLoading || state.hasError) {
      return null;
    }
    final location = routeState.fullPath ?? '';

    // メンテナンスモード
    final appMaintenanceStatus = ref.watch(appMaintenanceStatusProvider).value;
    switch (appMaintenanceStatus) {
      case AppMaintenanceStatus.maintenance:
        return MaintenancePageRoute.path;
      case AppMaintenanceStatus.none:
      case null:
        // メンテナンスページにいる場合は元に戻してやる
        if (location == MaintenancePageRoute.path) {
          return HomePageRoute.path;
        }
    }

    return null;
  }

  @override
  void addListener(VoidCallback listener) {
    routerListener = listener;
  }

  @override
  void removeListener(VoidCallback listener) {
    routerListener = null;
  }
}

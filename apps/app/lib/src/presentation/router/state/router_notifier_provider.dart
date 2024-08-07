import 'package:features_maintenance/application.dart';
import 'package:features_user/application.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'router_provider.dart';

part 'router_notifier_provider.g.dart';

@riverpod
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
    final isSplash = location == const RootRoute().location;
    final isNotAuthLocations =
        location.startsWith(const OnboardRoute().location);

    // 認証判定
    final authUser = await ref.watch(authStatusProvider.future);
    if (authUser == null && (isSplash || !isNotAuthLocations)) {
      return const OnboardRoute().location;
    } else if (authUser != null && (isSplash || isNotAuthLocations)) {
      return const HomePageRoute().location;
    }

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

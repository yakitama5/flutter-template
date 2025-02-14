import 'package:cores_domain/core.dart';
import 'package:cores_domain/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/router/routes/base_shell_route.dart';
import 'package:flutter_app/src/router/routes/branches/home_shell_branch.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_notifier_provider.g.dart';

@riverpod
class RouterNotifier extends _$RouterNotifier implements Listenable {
  VoidCallback? _routerListener;

  @override
  Future<void> build() async {
    listenSelf((previous, next) {
      if (state.isLoading) {
        return;
      }

      _routerListener?.call();
    });
  }

  Future<String?> redirect(GoRouterState routeState) async {
    if (state.isLoading || state.hasError) {
      return null;
    }
    final location = routeState.fullPath ?? '';
    final isSplash = location == const RootRoute().location;
    final isNotAuthLocations = location.startsWith(
      const OnboardRoute().location,
    );

    // 認証判定
    final authUser = await ref.watch(authStatusProvider.future);
    if (authUser == null && (isSplash || !isNotAuthLocations)) {
      return const OnboardRoute().location;
    } else if (authUser != null && (isSplash || isNotAuthLocations)) {
      return const HomePageRoute().location;
    }

    // メンテナンスモード
    final appMaintenanceStatus =
        ref.watch(appMaintenanceStatusProvider).valueOrNull;
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
    _routerListener = listener;
  }

  @override
  void removeListener(VoidCallback listener) {
    _routerListener = null;
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'router_provider.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $baseShellSroute,
      $maintenancePageRoute,
    ];

RouteBase get $baseShellSroute => ShellRouteData.$route(
      navigatorKey: BaseShellSroute.$navigatorKey,
      factory: $BaseShellSrouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/',
          factory: $RootRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/onboard',
          factory: $OnboardRouteExtension._fromState,
        ),
        StatefulShellRouteData.$route(
          factory: $NavigatorPageShellRouteExtension._fromState,
          branches: [
            StatefulShellBranchData.$branch(
              routes: [
                GoRouteData.$route(
                  path: '/home',
                  factory: $HomePageRouteExtension._fromState,
                  routes: [
                    GoRouteData.$route(
                      path: 'web',
                      parentNavigatorKey: WebPageRoute.$parentNavigatorKey,
                      factory: $WebPageRouteExtension._fromState,
                    ),
                  ],
                ),
              ],
            ),
            StatefulShellBranchData.$branch(
              routes: [
                GoRouteData.$route(
                  path: '/setting',
                  factory: $SettingPageRouteExtension._fromState,
                  routes: [
                    GoRouteData.$route(
                      path: 'account',
                      factory: $SettingsAccountPageRouteExtension._fromState,
                    ),
                    GoRouteData.$route(
                      path: 'ui_style',
                      factory: $SettingsUiStylePageRouteExtension._fromState,
                    ),
                    GoRouteData.$route(
                      path: 'color_style',
                      factory: $SettingsColorStylePageRouteExtension._fromState,
                    ),
                    GoRouteData.$route(
                      path: 'theme_mode',
                      factory: $SettingsThemeModePageRouteExtension._fromState,
                    ),
                    GoRouteData.$route(
                      path: 'license',
                      factory: $LicensePageRouteExtension._fromState,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );

extension $BaseShellSrouteExtension on BaseShellSroute {
  static BaseShellSroute _fromState(GoRouterState state) => BaseShellSroute();
}

extension $RootRouteExtension on RootRoute {
  static RootRoute _fromState(GoRouterState state) => const RootRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $OnboardRouteExtension on OnboardRoute {
  static OnboardRoute _fromState(GoRouterState state) => const OnboardRoute();

  String get location => GoRouteData.$location(
        '/onboard',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $NavigatorPageShellRouteExtension on NavigatorPageShellRoute {
  static NavigatorPageShellRoute _fromState(GoRouterState state) =>
      const NavigatorPageShellRoute();
}

extension $HomePageRouteExtension on HomePageRoute {
  static HomePageRoute _fromState(GoRouterState state) => const HomePageRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $WebPageRouteExtension on WebPageRoute {
  static WebPageRoute _fromState(GoRouterState state) => const WebPageRoute();

  String get location => GoRouteData.$location(
        '/home/web',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingPageRouteExtension on SettingPageRoute {
  static SettingPageRoute _fromState(GoRouterState state) =>
      const SettingPageRoute();

  String get location => GoRouteData.$location(
        '/setting',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsAccountPageRouteExtension on SettingsAccountPageRoute {
  static SettingsAccountPageRoute _fromState(GoRouterState state) =>
      const SettingsAccountPageRoute();

  String get location => GoRouteData.$location(
        '/setting/account',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsUiStylePageRouteExtension on SettingsUiStylePageRoute {
  static SettingsUiStylePageRoute _fromState(GoRouterState state) =>
      const SettingsUiStylePageRoute();

  String get location => GoRouteData.$location(
        '/setting/ui_style',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsColorStylePageRouteExtension on SettingsColorStylePageRoute {
  static SettingsColorStylePageRoute _fromState(GoRouterState state) =>
      const SettingsColorStylePageRoute();

  String get location => GoRouteData.$location(
        '/setting/color_style',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsThemeModePageRouteExtension on SettingsThemeModePageRoute {
  static SettingsThemeModePageRoute _fromState(GoRouterState state) =>
      const SettingsThemeModePageRoute();

  String get location => GoRouteData.$location(
        '/setting/theme_mode',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LicensePageRouteExtension on LicensePageRoute {
  static LicensePageRoute _fromState(GoRouterState state) =>
      const LicensePageRoute();

  String get location => GoRouteData.$location(
        '/setting/license',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $maintenancePageRoute => GoRouteData.$route(
      path: '/maintenance',
      factory: $MaintenancePageRouteExtension._fromState,
    );

extension $MaintenancePageRouteExtension on MaintenancePageRoute {
  static MaintenancePageRoute _fromState(GoRouterState state) =>
      const MaintenancePageRoute();

  String get location => GoRouteData.$location(
        '/maintenance',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routerHash() => r'5ae81246d824843a4d0e41d0fdf3fa70fb618600';

/// See also [router].
@ProviderFor(router)
final routerProvider = AutoDisposeProvider<GoRouter>.internal(
  router,
  name: r'routerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$routerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RouterRef = AutoDisposeProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package

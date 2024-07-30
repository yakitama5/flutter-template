// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$analyticsHash() => r'b572c7a6f9e66b895963564869cebe950abd7351';

/// Firebase Analytics
/// テスト時にDIすることを考慮して、Providerとして定義
///
/// Copied from [analytics].
@ProviderFor(analytics)
final analyticsProvider = Provider<FirebaseAnalytics>.internal(
  analytics,
  name: r'analyticsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$analyticsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AnalyticsRef = ProviderRef<FirebaseAnalytics>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package

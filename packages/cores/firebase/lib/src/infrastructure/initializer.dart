import 'package:cores_core/model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

final class FirebaseInitializer {
  FirebaseInitializer._();

  static Future<void> initialize(Flavor flavor) async {
    // Flavor に応じた FirebaseOptions を準備する
    final firebaseOptions = switch (flavor) {
      // TODO: Handle this case.
      Flavor.dev => throw UnimplementedError(),
      // TODO: Handle this case.
      Flavor.prd => throw UnimplementedError(),
    };

    await Firebase.initializeApp(
      options: firebaseOptions,
    );

    // Firebase Crashlytics
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
  }
}

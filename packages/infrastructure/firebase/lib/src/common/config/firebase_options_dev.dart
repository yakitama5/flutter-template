// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options_dev.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCCdV-R5_dvDhqCHg5jluLJZ6khGHerxeo',
    appId: '1:899934807737:android:497de452d7ab83a015dd68',
    messagingSenderId: '899934807737',
    projectId: 'yakuran-playground',
    storageBucket: 'yakuran-playground.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCJGWVebgHHxXIGe_fMjb8I47jTtflLVlo',
    appId: '1:899934807737:ios:3d71e887d713222715dd68',
    messagingSenderId: '899934807737',
    projectId: 'yakuran-playground',
    storageBucket: 'yakuran-playground.appspot.com',
    androidClientId: '899934807737-v5col7di0a4hngfeg7u8b2og1mcn9dis.apps.googleusercontent.com',
    iosClientId: '899934807737-uar9lntulo07v6t4a16tknb9jgqif9aj.apps.googleusercontent.com',
    iosBundleId: 'com.yakuran.template.dev',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAHw8Z6zAZr4xBu7Oux1USsmPmwUbLBL3s',
    appId: '1:899934807737:web:5a885561b8ecfc5c15dd68',
    messagingSenderId: '899934807737',
    projectId: 'yakuran-playground',
    authDomain: 'yakuran-playground.firebaseapp.com',
    storageBucket: 'yakuran-playground.appspot.com',
    measurementId: 'G-DPBPJ7GZ73',
  );

}
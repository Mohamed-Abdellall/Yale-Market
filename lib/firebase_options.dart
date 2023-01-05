// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
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
        return macos;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB-BllOw309XP87rk6m7icklNAUVHiASrQ',
    appId: '1:472461484021:web:15a594c4529680594d8abc',
    messagingSenderId: '472461484021',
    projectId: 'yale-market',
    authDomain: 'yale-market.firebaseapp.com',
    storageBucket: 'yale-market.appspot.com',
    measurementId: 'G-CW1ERD3JPJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBsiZZoCj3_KZR2fn82kF5tdMiIKRT58UI',
    appId: '1:472461484021:android:f1f9c11cfc0f3c2e4d8abc',
    messagingSenderId: '472461484021',
    projectId: 'yale-market',
    storageBucket: 'yale-market.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyACiqLjAz8HYqf3_-alfeIuuPE_JOKYkus',
    appId: '1:472461484021:ios:baa44c8e28cea2204d8abc',
    messagingSenderId: '472461484021',
    projectId: 'yale-market',
    storageBucket: 'yale-market.appspot.com',
    iosClientId: '472461484021-s2knub6prq6k2rcd8u413kk22j739bmc.apps.googleusercontent.com',
    iosBundleId: 'com.example.yaleMarket',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyACiqLjAz8HYqf3_-alfeIuuPE_JOKYkus',
    appId: '1:472461484021:ios:baa44c8e28cea2204d8abc',
    messagingSenderId: '472461484021',
    projectId: 'yale-market',
    storageBucket: 'yale-market.appspot.com',
    iosClientId: '472461484021-s2knub6prq6k2rcd8u413kk22j739bmc.apps.googleusercontent.com',
    iosBundleId: 'com.example.yaleMarket',
  );
}
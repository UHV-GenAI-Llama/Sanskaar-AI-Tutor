// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBPcdLhaX0b8Uofyk0ezaI3ycBfueauIMY',
    appId: '1:404860496703:web:108c3cdbee73c74686418a',
    messagingSenderId: '404860496703',
    projectId: 'uhv-analytics',
    authDomain: 'uhv-analytics.firebaseapp.com',
    storageBucket: 'uhv-analytics.appspot.com',
    measurementId: 'G-E47EDQ7C6T',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCzuOtRjbgXRTnd9rx9vE8m5l1ASDYp79o',
    appId: '1:404860496703:android:e63550b5bf7cd4be86418a',
    messagingSenderId: '404860496703',
    projectId: 'uhv-analytics',
    storageBucket: 'uhv-analytics.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA0ifIS6yfsGtjEujdsih3BjfWFWy-KCz8',
    appId: '1:404860496703:ios:65cb23b6a3cff2bc86418a',
    messagingSenderId: '404860496703',
    projectId: 'uhv-analytics',
    storageBucket: 'uhv-analytics.appspot.com',
    iosBundleId: 'com.example.uhvProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA0ifIS6yfsGtjEujdsih3BjfWFWy-KCz8',
    appId: '1:404860496703:ios:65cb23b6a3cff2bc86418a',
    messagingSenderId: '404860496703',
    projectId: 'uhv-analytics',
    storageBucket: 'uhv-analytics.appspot.com',
    iosBundleId: 'com.example.uhvProject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBPcdLhaX0b8Uofyk0ezaI3ycBfueauIMY',
    appId: '1:404860496703:web:effac73d80847f8286418a',
    messagingSenderId: '404860496703',
    projectId: 'uhv-analytics',
    authDomain: 'uhv-analytics.firebaseapp.com',
    storageBucket: 'uhv-analytics.appspot.com',
    measurementId: 'G-JCVFSDGFE7',
  );
}
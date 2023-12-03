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
    apiKey: 'AIzaSyBLB3Avr6toqWOcwIUYeqI5-gURQD20g08',
    appId: '1:203947752998:web:f83f104642630beba330e7',
    messagingSenderId: '203947752998',
    projectId: 'booki-9e313',
    authDomain: 'booki-9e313.firebaseapp.com',
    storageBucket: 'booki-9e313.appspot.com',
    measurementId: 'G-XHHE5BRE10',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDAum3rKl2nJUjcwmsb0HQ3hpSjTvERLEM',
    appId: '1:203947752998:android:c3f9651fc52eb349a330e7',
    messagingSenderId: '203947752998',
    projectId: 'booki-9e313',
    storageBucket: 'booki-9e313.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBNm0s98RvztcGMlaaJQLIUL-jqNFtlK18',
    appId: '1:203947752998:ios:590b134163f68e58a330e7',
    messagingSenderId: '203947752998',
    projectId: 'booki-9e313',
    storageBucket: 'booki-9e313.appspot.com',
    iosBundleId: 'com.example.store',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBNm0s98RvztcGMlaaJQLIUL-jqNFtlK18',
    appId: '1:203947752998:ios:d481c64e9a72ffc1a330e7',
    messagingSenderId: '203947752998',
    projectId: 'booki-9e313',
    storageBucket: 'booki-9e313.appspot.com',
    iosBundleId: 'com.example.store.RunnerTests',
  );
}
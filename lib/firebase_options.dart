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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA1Z9VSbNCKCC5s_oz2U5zQEmBd94C9bxM',
    appId: '1:717998982720:web:bbb5f1fab99947b7b8c1a5',
    messagingSenderId: '717998982720',
    projectId: 'zoom-clone-808d1',
    authDomain: 'zoom-clone-808d1.firebaseapp.com',
    storageBucket: 'zoom-clone-808d1.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyANXhmekkd0ryq1ZoOLe4rLxQrO0loZsb0',
    appId: '1:717998982720:android:2bb6c5f78e0244aab8c1a5',
    messagingSenderId: '717998982720',
    projectId: 'zoom-clone-808d1',
    storageBucket: 'zoom-clone-808d1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBmAukjubDxagwsQ-0HC3CwopZD6ERqMNo',
    appId: '1:717998982720:ios:2dec2dbf5de8dd63b8c1a5',
    messagingSenderId: '717998982720',
    projectId: 'zoom-clone-808d1',
    storageBucket: 'zoom-clone-808d1.appspot.com',
    iosClientId: '717998982720-uehmtc7mpouf8b5sdqf8go490c4m3eo9.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterZoomClone',
  );
}
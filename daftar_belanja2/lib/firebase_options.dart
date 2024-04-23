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
    apiKey: 'AIzaSyA-YuMH5UZaqXpRk1outgZKl0WuytcrI84',
    appId: '1:491535648238:web:6d331cf3cbfa5030987aff',
    messagingSenderId: '491535648238',
    projectId: 'belanja-app-53b12',
    authDomain: 'belanja-app-53b12.firebaseapp.com',
    databaseURL: 'https://belanja-app-53b12-default-rtdb.firebaseio.com',
    storageBucket: 'belanja-app-53b12.appspot.com',
    measurementId: 'G-FLWG0SMNLE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAwYi5kKWLStiM6dujmDja50QKTZJSsN0U',
    appId: '1:491535648238:android:f73755c7d120b8c0987aff',
    messagingSenderId: '491535648238',
    projectId: 'belanja-app-53b12',
    databaseURL: 'https://belanja-app-53b12-default-rtdb.firebaseio.com',
    storageBucket: 'belanja-app-53b12.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDvoBS7Dyt8qMf5-wFefLELkdOLOxROeJ4',
    appId: '1:491535648238:ios:d269a4472d62a38d987aff',
    messagingSenderId: '491535648238',
    projectId: 'belanja-app-53b12',
    databaseURL: 'https://belanja-app-53b12-default-rtdb.firebaseio.com',
    storageBucket: 'belanja-app-53b12.appspot.com',
    iosBundleId: 'com.example.daftarBelanja2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDvoBS7Dyt8qMf5-wFefLELkdOLOxROeJ4',
    appId: '1:491535648238:ios:d269a4472d62a38d987aff',
    messagingSenderId: '491535648238',
    projectId: 'belanja-app-53b12',
    databaseURL: 'https://belanja-app-53b12-default-rtdb.firebaseio.com',
    storageBucket: 'belanja-app-53b12.appspot.com',
    iosBundleId: 'com.example.daftarBelanja2',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA-YuMH5UZaqXpRk1outgZKl0WuytcrI84',
    appId: '1:491535648238:web:ff041fd2f8dbad85987aff',
    messagingSenderId: '491535648238',
    projectId: 'belanja-app-53b12',
    authDomain: 'belanja-app-53b12.firebaseapp.com',
    databaseURL: 'https://belanja-app-53b12-default-rtdb.firebaseio.com',
    storageBucket: 'belanja-app-53b12.appspot.com',
    measurementId: 'G-ZNLWJR4KW5',
  );
}
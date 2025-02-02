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
    apiKey: 'AIzaSyAd_iHt19PZQUjb7qGUOlkoYfj4ULSxG6k',
    appId: '1:61232001944:web:fe1d8d16dde9cc6aa2f1ed',
    messagingSenderId: '61232001944',
    projectId: 'minimal-social-media-app-41803',
    authDomain: 'minimal-social-media-app-41803.firebaseapp.com',
    storageBucket: 'minimal-social-media-app-41803.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAAe9IoGnr1iCfEPCy1s511Y_eYhw2alZA',
    appId: '1:61232001944:android:614fba8e6a2bf47ca2f1ed',
    messagingSenderId: '61232001944',
    projectId: 'minimal-social-media-app-41803',
    storageBucket: 'minimal-social-media-app-41803.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBUm0cmcwrdur-VAZ39WP2pFowAYqSapf0',
    appId: '1:61232001944:ios:d155e90025719e3ca2f1ed',
    messagingSenderId: '61232001944',
    projectId: 'minimal-social-media-app-41803',
    storageBucket: 'minimal-social-media-app-41803.appspot.com',
    iosBundleId: 'com.example.socialmediaapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBUm0cmcwrdur-VAZ39WP2pFowAYqSapf0',
    appId: '1:61232001944:ios:d155e90025719e3ca2f1ed',
    messagingSenderId: '61232001944',
    projectId: 'minimal-social-media-app-41803',
    storageBucket: 'minimal-social-media-app-41803.appspot.com',
    iosBundleId: 'com.example.socialmediaapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAd_iHt19PZQUjb7qGUOlkoYfj4ULSxG6k',
    appId: '1:61232001944:web:7c81718f4b45ac54a2f1ed',
    messagingSenderId: '61232001944',
    projectId: 'minimal-social-media-app-41803',
    authDomain: 'minimal-social-media-app-41803.firebaseapp.com',
    storageBucket: 'minimal-social-media-app-41803.appspot.com',
  );
}

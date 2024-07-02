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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAtbuIJIdV3LZq0-VzJyeEaq0bxs21bgmA',
    appId: '1:967969729859:android:7c4f57f217576a90c613f6',
    messagingSenderId: '967969729859',
    projectId: 'ventspace-a7667',
    storageBucket: 'ventspace-a7667.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCoBKUrzd5kZRb5Dogbzf1Nv6sNHcO5YgM',
    appId: '1:967969729859:ios:5f2496e34d43bdc3c613f6',
    messagingSenderId: '967969729859',
    projectId: 'ventspace-a7667',
    storageBucket: 'ventspace-a7667.appspot.com',
    iosBundleId: 'com.example.ventspace',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDIx5U-vqDcJ7fdsEScfM0xbJvTHPhicCI',
    appId: '1:967969729859:web:21424b5ed706f9b5c613f6',
    messagingSenderId: '967969729859',
    projectId: 'ventspace-a7667',
    authDomain: 'ventspace-a7667.firebaseapp.com',
    storageBucket: 'ventspace-a7667.appspot.com',
    measurementId: 'G-0JCCXRE833',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCoBKUrzd5kZRb5Dogbzf1Nv6sNHcO5YgM',
    appId: '1:967969729859:ios:5f2496e34d43bdc3c613f6',
    messagingSenderId: '967969729859',
    projectId: 'ventspace-a7667',
    storageBucket: 'ventspace-a7667.appspot.com',
    iosBundleId: 'com.example.ventspace',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDIx5U-vqDcJ7fdsEScfM0xbJvTHPhicCI',
    appId: '1:967969729859:web:5ffbbcd6d3c711ccc613f6',
    messagingSenderId: '967969729859',
    projectId: 'ventspace-a7667',
    authDomain: 'ventspace-a7667.firebaseapp.com',
    storageBucket: 'ventspace-a7667.appspot.com',
    measurementId: 'G-H0CXZSGZG9',
  );

}
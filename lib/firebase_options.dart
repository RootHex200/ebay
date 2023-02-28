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
    apiKey: 'AIzaSyDc-a66i6P6n7miVPaRLQeg-IOnbu0xQ-A',
    appId: '1:538147968733:web:ebc05e86232a3eb2ecad34',
    messagingSenderId: '538147968733',
    projectId: 'ebay-c8fc6',
    authDomain: 'ebay-c8fc6.firebaseapp.com',
    storageBucket: 'ebay-c8fc6.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAXpe8PgbhhvgJhWgoEJGTQI2bAjvUoAbE',
    appId: '1:538147968733:android:0957ee271d4884b5ecad34',
    messagingSenderId: '538147968733',
    projectId: 'ebay-c8fc6',
    storageBucket: 'ebay-c8fc6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDn4B2kBn5nTBQrJwedmXiyPb2yO7yOJM8',
    appId: '1:538147968733:ios:051b47941b62c382ecad34',
    messagingSenderId: '538147968733',
    projectId: 'ebay-c8fc6',
    storageBucket: 'ebay-c8fc6.appspot.com',
    iosClientId: '538147968733-9mdk3fsmop41jmf1sml21ehhgrqj10t4.apps.googleusercontent.com',
    iosBundleId: 'com.example.ebay',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDn4B2kBn5nTBQrJwedmXiyPb2yO7yOJM8',
    appId: '1:538147968733:ios:051b47941b62c382ecad34',
    messagingSenderId: '538147968733',
    projectId: 'ebay-c8fc6',
    storageBucket: 'ebay-c8fc6.appspot.com',
    iosClientId: '538147968733-9mdk3fsmop41jmf1sml21ehhgrqj10t4.apps.googleusercontent.com',
    iosBundleId: 'com.example.ebay',
  );
}

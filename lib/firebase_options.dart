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
    apiKey: 'AIzaSyA_zF7E7eHLYVqK2KkG0W0W3YRlFTXepHE',
    appId: '1:897281410413:web:f1f7fe3b77c0715e5f4664',
    messagingSenderId: '897281410413',
    projectId: 'sangla-foods',
    authDomain: 'sangla-foods.firebaseapp.com',
    storageBucket: 'sangla-foods.appspot.com',
    measurementId: 'G-NXMLMG1269',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA83W5tu0GB8DPFsmDZGApZiNqWvgfFMSk',
    appId: '1:897281410413:android:26c8b129eef99fcf5f4664',
    messagingSenderId: '897281410413',
    projectId: 'sangla-foods',
    storageBucket: 'sangla-foods.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBzBWOFtXhboZNi5YgELS5m8RGxzP22eS0',
    appId: '1:897281410413:ios:a0ffb0a708c39b385f4664',
    messagingSenderId: '897281410413',
    projectId: 'sangla-foods',
    storageBucket: 'sangla-foods.appspot.com',
    iosBundleId: 'com.example.sanglaFoods',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBzBWOFtXhboZNi5YgELS5m8RGxzP22eS0',
    appId: '1:897281410413:ios:2fab9e5de9b46a3e5f4664',
    messagingSenderId: '897281410413',
    projectId: 'sangla-foods',
    storageBucket: 'sangla-foods.appspot.com',
    iosBundleId: 'com.example.sanglaFoods.RunnerTests',
  );
}

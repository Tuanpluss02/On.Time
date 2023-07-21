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
    apiKey: 'AIzaSyB530x2SEH7PS9iuif0qEuruZKNSSR_U3c',
    appId: '1:612712019940:web:3fa7e0f8532506e5ceb9f1',
    messagingSenderId: '612712019940',
    projectId: 'on-time-a81ae',
    authDomain: 'on-time-a81ae.firebaseapp.com',
    storageBucket: 'on-time-a81ae.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBv-ZETN4vVY8K4jat2tHB1uEjDV-7O5V4',
    appId: '1:612712019940:android:ca0c22a4c727ab43ceb9f1',
    messagingSenderId: '612712019940',
    projectId: 'on-time-a81ae',
    storageBucket: 'on-time-a81ae.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCIOmu36IR9X-2S54ZKnkuwSS3uh_oTEqs',
    appId: '1:612712019940:ios:aa8a06fec28ab673ceb9f1',
    messagingSenderId: '612712019940',
    projectId: 'on-time-a81ae',
    storageBucket: 'on-time-a81ae.appspot.com',
    iosClientId: '612712019940-i31i5rqjdo5iq3rusuvs9rc92kkf0b94.apps.googleusercontent.com',
    iosBundleId: 'com.stormx.todo',
  );
}

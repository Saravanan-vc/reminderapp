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
    apiKey: 'AIzaSyDrFKXy7JYF95GMEGju9fzuGd6PrWbYa68',
    appId: '1:126930694849:web:bcd9d0c99eba162ae61a40',
    messagingSenderId: '126930694849',
    projectId: 'reminder-3f37f',
    authDomain: 'reminder-3f37f.firebaseapp.com',
    storageBucket: 'reminder-3f37f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDvFd7lw9IUoYyeDIVfXVm2ws33QZpPbUI',
    appId: '1:126930694849:android:20c7755b8c6ea0bee61a40',
    messagingSenderId: '126930694849',
    projectId: 'reminder-3f37f',
    storageBucket: 'reminder-3f37f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDdjyMHE3CSGDSrujoDW35Nb4TzbW5F8nM',
    appId: '1:126930694849:ios:9af439f62034b034e61a40',
    messagingSenderId: '126930694849',
    projectId: 'reminder-3f37f',
    storageBucket: 'reminder-3f37f.appspot.com',
    iosBundleId: 'com.example.reminderapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDdjyMHE3CSGDSrujoDW35Nb4TzbW5F8nM',
    appId: '1:126930694849:ios:9af439f62034b034e61a40',
    messagingSenderId: '126930694849',
    projectId: 'reminder-3f37f',
    storageBucket: 'reminder-3f37f.appspot.com',
    iosBundleId: 'com.example.reminderapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDrFKXy7JYF95GMEGju9fzuGd6PrWbYa68',
    appId: '1:126930694849:web:55a671c5037bf409e61a40',
    messagingSenderId: '126930694849',
    projectId: 'reminder-3f37f',
    authDomain: 'reminder-3f37f.firebaseapp.com',
    storageBucket: 'reminder-3f37f.appspot.com',
  );
}

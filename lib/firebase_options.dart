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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyANEPkiefvffNEip462XgYMTkzioKNsGbQ',
    appId: '1:543508206875:android:4d75842341c8f2552d2fbe',
    messagingSenderId: '543508206875',
    projectId: 'rektometer-5e8a1',
    storageBucket: 'rektometer-5e8a1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD_E0YMTyq58e_aZz9YVeccYZkmfHDVHl8',
    appId: '1:543508206875:ios:12640039797ea6ea2d2fbe',
    messagingSenderId: '543508206875',
    projectId: 'rektometer-5e8a1',
    storageBucket: 'rektometer-5e8a1.appspot.com',
    iosClientId: '543508206875-scauv6rcvu606n9a2p76u323scuhh60m.apps.googleusercontent.com',
    iosBundleId: 'com.maciejjagodzinski.rektometer',
  );
}

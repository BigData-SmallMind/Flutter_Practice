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
    apiKey: 'AIzaSyCguQa5OA2FslZQj5jxQzRRa_hwTL2IF1U',
    appId: '1:1024145769820:web:0179baa7a5bf839841ad99',
    messagingSenderId: '1024145769820',
    projectId: 'raychat-ab83c',
    authDomain: 'raychat-ab83c.firebaseapp.com',
    storageBucket: 'raychat-ab83c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB1d9ZmRr-wGPINgvzz9KD_tgVnGQs0zQE',
    appId: '1:1024145769820:android:f3ac738760947afc41ad99',
    messagingSenderId: '1024145769820',
    projectId: 'raychat-ab83c',
    storageBucket: 'raychat-ab83c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAWTn32tfONM0E3NqMN7geRMPlaLS5UeT8',
    appId: '1:1024145769820:ios:b234a17f1d664fcd41ad99',
    messagingSenderId: '1024145769820',
    projectId: 'raychat-ab83c',
    storageBucket: 'raychat-ab83c.appspot.com',
    iosClientId: '1024145769820-fg7938lpl6vadsggdq64padqt5p8qdnb.apps.googleusercontent.com',
    iosBundleId: 'com.example.chptr19',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAWTn32tfONM0E3NqMN7geRMPlaLS5UeT8',
    appId: '1:1024145769820:ios:b234a17f1d664fcd41ad99',
    messagingSenderId: '1024145769820',
    projectId: 'raychat-ab83c',
    storageBucket: 'raychat-ab83c.appspot.com',
    iosClientId: '1024145769820-fg7938lpl6vadsggdq64padqt5p8qdnb.apps.googleusercontent.com',
    iosBundleId: 'com.example.chptr19',
  );
}

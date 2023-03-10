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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDT64Bf9TnYO13LCcbWhOKg9vIUo_U2vB8',
    appId: '1:1054600593110:android:2febc1626d236cc850d377',
    messagingSenderId: '1054600593110',
    projectId: 'sign-in-e40fa',
    storageBucket: 'sign-in-e40fa.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCooJ6RVq4JY2SrYx16rqO54gUvTLMtV7M',
    appId: '1:1054600593110:ios:89b52d16aebd1a2c50d377',
    messagingSenderId: '1054600593110',
    projectId: 'sign-in-e40fa',
    storageBucket: 'sign-in-e40fa.appspot.com',
    androidClientId: '1054600593110-le2sjask791cg1tp221du295ree11ava.apps.googleusercontent.com',
    iosClientId: '1054600593110-pq1ksp8u4653st9ps5hnbc5ao8iepjup.apps.googleusercontent.com',
    iosBundleId: 'com.appicator.googleSigninExample',
  );
}

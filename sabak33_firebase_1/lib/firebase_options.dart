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
        return windows;
      case TargetPlatform.linux:
        return linux;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAwHNAIdf7K9xZ-9WeNifjDaDuyC5GiyVI',
    appId: '1:757568597959:web:7a9defab84249cf0f6f3e2',
    messagingSenderId: '757568597959',
    projectId: 'todo-fd77d',
    authDomain: 'todo-fd77d.firebaseapp.com',
    storageBucket: 'todo-fd77d.appspot.com',
    measurementId: 'G-MYXFZG5L0E',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDy_GY71YSGqK6CIcwdjBaOLp036rhs8O0',
    appId: '1:757568597959:android:3330766ab4e8fddaf6f3e2',
    messagingSenderId: '757568597959',
    projectId: 'todo-fd77d',
    storageBucket: 'todo-fd77d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB1JXYLpu8iYckOO88xaYJlcjM0JjDbfAw',
    appId: '1:757568597959:ios:3111f9e5822205fcf6f3e2',
    messagingSenderId: '757568597959',
    projectId: 'todo-fd77d',
    storageBucket: 'todo-fd77d.appspot.com',
    iosClientId: '757568597959-6o1p6d4puvv3jn8b3er9f6oo414n5blm.apps.googleusercontent.com',
    iosBundleId: 'com.example.sabak33Firebase1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB1JXYLpu8iYckOO88xaYJlcjM0JjDbfAw',
    appId: '1:757568597959:ios:4abfb66caa30b263f6f3e2',
    messagingSenderId: '757568597959',
    projectId: 'todo-fd77d',
    storageBucket: 'todo-fd77d.appspot.com',
    iosClientId: '757568597959-dif8v2nmqa68jr35lue239veedakeafs.apps.googleusercontent.com',
    iosBundleId: 'com.example.sabak33Firebase1.RunnerTests',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAwHNAIdf7K9xZ-9WeNifjDaDuyC5GiyVI',
    appId: '1:757568597959:web:75034d9ea802ae35f6f3e2',
    messagingSenderId: '757568597959',
    projectId: 'todo-fd77d',
    authDomain: 'todo-fd77d.firebaseapp.com',
    storageBucket: 'todo-fd77d.appspot.com',
    measurementId: 'G-F38PNQRHDY',
  );

  static const FirebaseOptions linux = FirebaseOptions(
    apiKey: 'AIzaSyAwHNAIdf7K9xZ-9WeNifjDaDuyC5GiyVI',
    appId: '1:757568597959:web:72c34d9bb8848be7f6f3e2',
    messagingSenderId: '757568597959',
    projectId: 'todo-fd77d',
    authDomain: 'todo-fd77d.firebaseapp.com',
    storageBucket: 'todo-fd77d.appspot.com',
    measurementId: 'G-M37Q7MX6L2',
  );
}

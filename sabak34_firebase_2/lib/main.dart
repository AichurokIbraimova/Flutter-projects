import 'package:flutter/material.dart';
import 'package:sabak34_firebase_2/app/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

/*
1. Файербести проектке туташтырдык
2.ДатаБаза туздук
3. ДатаБазага маалыматтарды жонотуп аны колдонуу максатында 4 негизги функция жаздык, алар
create, read, update, delete.
*/

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

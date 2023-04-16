// ignore_for_file: unused_import, avoid_web_libraries_in_flutter

import 'dart:html';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized;
  SystemChrome.setPreferredOrientations;
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home: const DemoScreen());
  }
}

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DemoScreen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                GestureDetector(
                  onTap: () {
                    AudioPlayer().play(AssetSource('zvuk-notyi-do.mp3'));
                  },
                  child: Container(
                    height: 200,
                    width: 60,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    AudioPlayer().play(AssetSource('zvuk-notyi-re.mp3'));
                  },
                  child: Container(
                    height: 200,
                    width: 60,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    AudioPlayer().play(AssetSource('zvuk-notyi-mi.mp3'));
                  },
                  child: Container(
                    height: 200,
                    width: 60,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    AudioPlayer().play(AssetSource('zvuk-notyi-fa.mp3'));
                  },
                  child: Container(
                    height: 200,
                    width: 60,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    AudioPlayer().play(AssetSource('zvuk-notyi-sol.mp3'));
                  },
                  child: Container(
                    height: 200,
                    width: 60,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    AudioPlayer().play(AssetSource('zvuk-notyi-lya.mp3'));
                  },
                  child: Container(
                    height: 200,
                    width: 60,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    AudioPlayer().play(AssetSource('zvuk-notyi-si.mp3'));
                  },
                  child: Container(
                    height: 200,
                    width: 60,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

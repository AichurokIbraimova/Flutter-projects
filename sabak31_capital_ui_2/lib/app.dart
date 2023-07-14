import 'package:flutter/material.dart';
import 'package:sabak31_capital_ui_2/view/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        sliderTheme:
            SliderThemeData(thumbShape: SliderComponentShape.noOverlay),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}

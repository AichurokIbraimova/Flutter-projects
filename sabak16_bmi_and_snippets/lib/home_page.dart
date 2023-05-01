import 'package:flutter/material.dart';
import 'package:sabak16_bmi_and_snippets/components/status_card.dart';
import 'package:sabak16_bmi_and_snippets/theme/app_colors.dart';
import 'package:sabak16_bmi_and_snippets/theme/app_texts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgcColor,
        title: const Center(child: AppTexts.bmi),
        elevation: 0,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 21, top: 32, right: 21, bottom: 41),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  StatusCard(),
                  SizedBox(
                    width: 39,
                  ),
                  StatusCard(),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Expanded(
              child: Row(
                children: [
                  StatusCard(),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Expanded(
              child: Row(
                children: [
                  StatusCard(),
                  SizedBox(
                    width: 39,
                  ),
                  StatusCard(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: AppColors.pinkColor,
        height: 73,
        width: double.infinity,
        child: Center(
          child: AppTexts.calculator,
        ),
      ),
    );
  }
}

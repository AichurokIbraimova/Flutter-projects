import 'package:flutter/material.dart';

import 'package:sabak17_bmi_ulantuu/components/status_card.dart';
import 'package:sabak17_bmi_ulantuu/theme/app_colors.dart';
import 'package:sabak17_bmi_ulantuu/theme/app_texts.dart';

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
        title: const Text(AppTexts.bmi),
        elevation: 0,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 21, top: 32, right: 21, bottom: 41),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: const [
                  StatusCard(),
                  SizedBox(
                    width: 39,
                  ),
                  StatusCard(),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Expanded(
              child: Row(
                children: const [
                  StatusCard(),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Expanded(
              child: Row(
                children: const [
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
        child: const Text(AppTexts.calculator),
      ),
    );
  }
}

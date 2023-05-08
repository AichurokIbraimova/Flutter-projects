import 'package:flutter/material.dart';
import 'package:sabak18_bmi_ulantuu2/components/calculate_button.dart';
import 'package:sabak18_bmi_ulantuu2/components/height.dart';
import 'package:sabak18_bmi_ulantuu2/components/male_female.dart';

import 'package:sabak18_bmi_ulantuu2/components/status_card.dart';
import 'package:sabak18_bmi_ulantuu2/components/weight_age.dart';

import 'package:sabak18_bmi_ulantuu2/theme/app_colors.dart';
import 'package:sabak18_bmi_ulantuu2/theme/app_texts.dart';

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
        title: const Center(
          child: Text(AppTexts.bmi),
        ),
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
                  StatusCard(
                    child: MaleFemale(
                      icon: Icons.male,
                      text: AppTexts.male,
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  StatusCard(
                    child: MaleFemale(
                      icon: Icons.female,
                      text: AppTexts.female,
                    ),
                  ),
                ],
              ),
            ),
            const StatusCard(
              child: Height(
                text1: AppTexts.heigt,
                text: '180',
                text2: 'cm',
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Expanded(
              child: Row(
                children: const [
                  StatusCard(
                    child: WeightAge(
                      text: AppTexts.weight,
                      san: '60',
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  StatusCard(
                    child: WeightAge(
                      text: AppTexts.age,
                      san: '28',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CalculateButton(),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sabak19_bmi_ulantuu3/theme/app_colors.dart';
import 'package:sabak19_bmi_ulantuu3/theme/app_texts_style.dart';

class Height extends StatelessWidget {
  const Height({
    super.key,
    required this.text,
    required this.text1,
    required this.text2,
  });

  final String text;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: AppTextsStyles.calculateTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              text1,
              style: AppTextsStyles.textStyle,
            ),
            Text(
              text2,
              style: AppTextsStyles.cmStyle,
            )
          ],
        ),
        SizedBox(
          width: 300,
          child: CupertinoSlider(
            value: 180,
            min: 0,
            max: 240,
            activeColor: AppColors.whiteColor,
            thumbColor: AppColors.pinkColor,
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }
}

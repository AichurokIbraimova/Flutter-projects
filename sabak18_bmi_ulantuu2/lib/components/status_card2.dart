import 'package:flutter/material.dart';
import 'package:sabak18_bmi_ulantuu2/components/circular_button.dart';
import 'package:sabak18_bmi_ulantuu2/theme/app_colors.dart';
import 'package:sabak18_bmi_ulantuu2/theme/app_texts_style.dart';

class StatusCard2 extends StatelessWidget {
  const StatusCard2({
    super.key,
    required this.text,
    required this.san,
  });

  final String text;
  final String san;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: AppColors.cardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(text, style: AppTextsStyles.titleStyle),
            Text(san, style: AppTextsStyles.sanTextStyle),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircularButton(
                  icon: Icons.remove,
                ),
                SizedBox(
                  width: 10,
                ),
                CircularButton(
                  icon: Icons.add,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

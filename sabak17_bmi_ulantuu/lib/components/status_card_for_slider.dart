import 'package:flutter/material.dart';
import 'package:sabak17_bmi_ulantuu/theme/app_colors.dart';

class StatusCardSlider extends StatelessWidget {
  const StatusCardSlider({
    super.key,
    required this.text,
    required this.text1,
    required this.text2,
  });

  final String text, text1, text2;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: AppColors.cardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(text),
            Text(text1),
            Text(text2),
          ],
        ),
      ),
    );
  }
}

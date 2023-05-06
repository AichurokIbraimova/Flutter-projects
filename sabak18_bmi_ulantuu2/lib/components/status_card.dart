import 'package:flutter/material.dart';
import 'package:sabak18_bmi_ulantuu2/theme/app_colors.dart';
import 'package:sabak18_bmi_ulantuu2/theme/app_texts_style.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;

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
            Icon(
              icon,
              size: 80,
            ),
            Text(
              text,
              style: AppTextsStyles.titleStyle,
            ),
          ],
        ),
      ),
    );
  }
}

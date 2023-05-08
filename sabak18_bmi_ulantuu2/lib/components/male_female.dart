import 'package:flutter/material.dart';
import 'package:sabak18_bmi_ulantuu2/theme/app_texts_style.dart';

class MaleFemale extends StatelessWidget {
  const MaleFemale({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}

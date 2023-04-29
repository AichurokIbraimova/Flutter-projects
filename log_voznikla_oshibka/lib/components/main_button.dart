import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:log/helpers/font_size.dart';
import 'package:log/helpers/theme_colors.dart';

class MainButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final Function() ontap;
  const  MainButton({super.key,
  required this.text, required this.backgroundColor, this.textColor,
  required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap, 
      child: Container(
        height: 75,
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor == null?
          ThemeColors.primaryColor:backgroundColor,
          borderRadius: BorderRadius.circular(28),
          
        ),
        child: Center(child: Text('text',
        style: TextStyle(color: textColor == null?
        ThemeColors.textFieldBgColor:textColor,
        fontSize: FontSize.medium,
        fontWeight: FontWeight.bold,
        )
        )),

      ),
    );
  }
}
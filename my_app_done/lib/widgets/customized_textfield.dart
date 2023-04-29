// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CustomizedTextfield extends StatelessWidget {
  final TextEditingController myController;
  final String? hintext;
  final bool? isPassword;
  const CustomizedTextfield({
    Key? key,
    required this.myController,
    this.hintext,
    this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        keyboardType: isPassword!
            ? TextInputType.visiblePassword
            : TextInputType.emailAddress,
        enableSuggestions: isPassword! ? false : true,
        autocorrect: isPassword! ? false : true,
        obscureText: isPassword ?? true,
        controller: myController,
        decoration: InputDecoration(
            suffixIcon: isPassword!
                ? IconButton(
                    icon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  )
                : null,
            enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffE8ECF4), width: 1),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffE8ECF4), width: 1),
                borderRadius: BorderRadius.circular(10)),
            fillColor: const Color(0xffE8ECF4),
            filled: true,
            hintText: hintext,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}

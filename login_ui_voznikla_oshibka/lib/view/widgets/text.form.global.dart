// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class TextFormGlobal extends StatelessWidget {
   TextFormGlobal({Key? key, required this.controller,
    required this.text, required this.textInputType, 
    required this.obsure}): super(key: key);
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obsure;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.only(top: 3,left: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 7,
          )
        ]
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: obsure,
        decoration: InputDecoration(
          hintText: text,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(0),
          hintStyle: const TextStyle(
            height: 1,
          )
        ),
      ),
    );
  }
}
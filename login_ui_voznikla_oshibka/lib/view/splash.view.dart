import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_ui/helpers/global.colors.dart';
import 'package:login_ui/view/login.view.dart';
class SplashView extends StatelessWidget {
  const SplashView({super.key});

  // 

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 1), () {Get.to(LoginView());});
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: const Center(
        child: Text('Logo',
        style: TextStyle(
          color: Colors.white,
          fontSize: 35,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
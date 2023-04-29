// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:login_ui/helpers/global.colors.dart';
import 'package:login_ui/view/widgets/button.global.dart';
import 'package:login_ui/view/widgets/social.login.dart';
import 'package:login_ui/view/widgets/text.form.global.dart';

class LoginView extends StatelessWidget {
   LoginView({Key? key}) : super(key: key);
   final TextEditingController emailController = TextEditingController();
   final TextEditingController PasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text('Logo',
                  style: TextStyle(
                    color: GlobalColors.mainColor,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text('Login to your account',
                style: TextStyle(
                  color: GlobalColors.textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                ),
                const SizedBox(
                  height: 15,
                  // Email Input
                ),
                TextFormGlobal(
                  controller: emailController,
                  text: 'Email', 
                obsure: false,
                textInputType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 10,
                ),
                // Password Input
                TextFormGlobal(controller: PasswordController,
                 text: 'Password', 
                 textInputType: TextInputType.text,
                  obsure: true,
                  ),
                  const SizedBox(
                    height: 10,
                    
                  ),
                  const ButtonGlobal(),
                  const SizedBox(
                    height: 10,
                    
                  ),
                   const SocialLogin()
              ],
            ),
          )),
        

        ),
        bottomNavigationBar: Container(
          height: 50,
          color: Colors.white,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Don\'t have an account?',
              ),
              InkWell(
                child: Text('Sign Up',
                style: TextStyle(
                  color: GlobalColors.mainColor
                ),
                ),
              )
            ],
          ),
        ),
    );
  }
}
// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_app/screens/forgot_password.dart';
import 'package:my_app/screens/signup_screen.dart';
import 'package:my_app/widgets/customized_button.dart';
import 'package:my_app/widgets/customized_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios_sharp),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Welcome Back! Glad to see you again',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    CustomizedTextfield(
                      myController: _emailController,
                      hintext: 'Enter your Email',
                      isPassword: false,
                    ),
                    CustomizedTextfield(
                      myController: _passwordController,
                      hintext: 'Enter your Password',
                      isPassword: true,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgotPassword()));
                          },
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Color(0xff6A707C),
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                    CustomizeButton(
                      buttonText: 'Login',
                      buttonColor: Colors.black,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const LoginScreen()));
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            height: 1,
                            width: MediaQuery.of(context).size.height * 0.2,
                            color: Colors.grey,
                          ),
                          const Text('Or Login with'),
                          Container(
                            height: 1,
                            width: MediaQuery.of(context).size.height * 0.2,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              icon: const Icon(
                                FontAwesomeIcons.facebookF,
                                color: Colors.blue,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              icon: const Icon(
                                FontAwesomeIcons.google,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              icon: const Icon(
                                FontAwesomeIcons.apple,
                                // color: Colors.blue,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 140,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(48, 8, 8, 8.0),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: TextStyle(
                                color: Color(0xff1E232C), fontSize: 15),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const SignUpScreen()));
                            },
                            child: const Text(
                              '   Register Now',
                              style: TextStyle(
                                  color: Color(0xff35C2C1), fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

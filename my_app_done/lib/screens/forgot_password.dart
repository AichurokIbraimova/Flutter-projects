// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:my_app/widgets/customized_button.dart';
import 'package:my_app/widgets/customized_textfield.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_sharp),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Don't worry it occurs to us all. We will send you a link to reset your paaword.",
                  style: TextStyle(
                    color: Color(0xff8391A1),
                    fontSize: 20,
                    //fontWeight: FontWeight.bold
                  ),
                ),
              ),
              CustomizedTextfield(
                myController: _emailController,
                hintext: 'Enter your email',
                isPassword: false,
              ),
              CustomizeButton(
                buttonText: 'Send Code',
                buttonColor: Colors.black,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const Spacer(
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(68, 8, 8, 8.0),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Remembe Password?",
                      style: TextStyle(color: Color(0xff1E232C), fontSize: 15),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        '   Login ',
                        style:
                            TextStyle(color: Color(0xff35C2C1), fontSize: 15),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

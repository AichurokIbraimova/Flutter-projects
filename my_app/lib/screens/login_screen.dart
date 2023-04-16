import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super (key: key);

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
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,
                      width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton( icon: Icon(Icons.arrow_back_ios_sharp),
                    onPressed: (){
                      Navigator.pop(context);
                    },),
                  ),
                  Text('welcome')
                ],
              ),
              
            ),
            
            
          ),
        ),
        
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:sabak_5_login_ulantuu/home.dart';
import 'package:sabak_5_login_ulantuu/secondPage.dart';
class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 243, 127, 121),
         title: const Text(
          "ThirdPage"
          ),
      ),
      backgroundColor: const Color.fromARGB(255, 143, 188, 225),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ 
          const Center( 
            child: Text( 
            "Келечек жаштардын колунда!", 
            style: TextStyle(fontSize: 28,
             fontFamily: "Lobster-Regular"
             ),
            ),
          ),
          const SizedBox(
            height: 20,
            width: 20,
          ),
          const SizedBox(
          child: 
          Center(
            child: SizedBox(
              height: 200,
              width: 200,
              child: CircleAvatar(
                backgroundImage: AssetImage (
                  "assets/images/surot.jpg", 
                  ),
                  ),
                  ),
             ),
          ),         
          const SizedBox(
            width: 20,
            height: 20,
          ),
          TextButton.icon(
            style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
            foregroundColor: MaterialStateProperty.all(Colors.white),
          ),         
            onPressed: () {
            Navigator.push(context , MaterialPageRoute(builder: (context) => const MyHomePage()));
            }, icon: const Icon(Icons.home), label: const Text("Вернуться на главную"),
            ),
        ], 
      ),
    );
  }
}
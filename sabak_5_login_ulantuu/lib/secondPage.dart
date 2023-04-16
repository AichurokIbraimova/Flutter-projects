import 'package:flutter/material.dart';
import 'package:sabak_5_login_ulantuu/thirdPage.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    var name = "";
    return Scaffold(backgroundColor: const Color(0xffECB90B),
      appBar: AppBar(backgroundColor: const Color(0xffECB90B),
        title:  const Text(
          "SecondPage", 
          style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Center(
              child: Text("I'm Rich", style: TextStyle(
                  fontSize: 48, 
                  fontFamily: "Sofia"
                  ),
                  ),
            ),
              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset("assets/images/briliant.png"),
                ),
              IconButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=> const ThirdPage ()));
              }, icon: const Icon (Icons.navigate_next_sharp, ),
              ),
          ],                                                        
        ),
      );
      
  }

          
          
  
        
    
    
  }

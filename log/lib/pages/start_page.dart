import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:log/components/main_button.dart';
import 'package:log/helpers/font_size.dart';




class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/nature.jpg',
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fitHeight,
          ),
           SafeArea(child: Padding(
            padding: EdgeInsets.all(8.0),
            child:Column(
              children: const [
                Align(
                  alignment: Alignment.topLeft,
                ),
                Text('Welcome!',
                
                ),
                
                
                
              ],
            ) ,
            
            ),
            
            ),
            
            
            /*
            SafeArea(child: Padding(
              
              padding: EdgeInsets.all(8.0),),
              ),
              child: Column(
                children: const [
                  Center(
                    child: Text('Welcome!',style: TextStyle(fontSize: FontSize.xxxLarge),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 25),
                  ),*/
                  ],
                  ),
                  
                  );
  }
}
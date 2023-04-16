import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
 class MyHomePage extends StatefulWidget {
   const MyHomePage({ Key? key }) : super(key: key);
   @override
   // ignore: library_private_types_in_public_api
   _MyHomePageState createState() => _MyHomePageState();
 }
 
 class _MyHomePageState extends State<MyHomePage> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffECB90B), 
        title: const Center(
          child: Text(
            "Тапшырма 3", 
            style: TextStyle(
              color: Colors.black),
               ),
               ),
        elevation: 5,
      ),
      backgroundColor: Color(0xffECB90B),
       body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const Center(
            child: Text(
              "I'm Rich",
               style: TextStyle(
                fontFamily: "Sofia",fontSize: 48
                ),
            ),
          ),
          SizedBox( width: 200,
          height: 200,
            child: Image.asset("assets/fonts/images/briliant.png", 
            ),
          ),
        ],
       ),
     );
   }
 }

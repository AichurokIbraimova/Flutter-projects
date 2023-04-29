

import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  get prefixIcon => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
      
        title: IconButton(onPressed: (){}, icon:const Icon(
          Icons.navigate_before_rounded,),
          ),
      ),
      body: Column(
        children: const [
          Text('Hi!', style: TextStyle(),
          ),
           SizedBox(
            height: 100,
           ),
          
           Padding(
             padding: EdgeInsets.only( top: 15,left: 15, right: 15,),
             child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email'
              ),
              
             ),
             
           ),
           Padding(
             padding: EdgeInsets.only( top: 15,left: 15, right: 15,),
             child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Continue', 
              ),
              
              ),
              
              ),
              SizedBox(
                height: 20,
              ),
              Center(child: Text('Or'
              ),
              
              ),
              Padding(
             padding: EdgeInsets.only( top: 15,left: 15, right: 15,),
             child: 
             TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                
                ),
                
                ),
                
                ),
                    
                 prefixIcon: Container(
          margin: EdgeInsets.only(right: 5.0),
          decoration: BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0)),
          ),
          padding: EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            "asset url",
            height: 20,
            width: 20,
          ))            
            
           
                
              
                
        ],
      ),
      
    );
  }
}
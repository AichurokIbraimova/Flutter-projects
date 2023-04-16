import 'package:flutter/material.dart';
import 'package:sabak10_end_for_loop/home/user_page.dart';
import 'package:sabak10_end_for_loop/model.dart';

   final studentter = <Student>[
    daniar,
    dinara,
    hanzada,
    mirbek,
    aybek,
    karim,
    aizat];

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   String? _name;
   String? _gmail;
    // Birinchi variant
    void controlNameEmail(String name, String email) {
     int index = 0;

  for(final student in studentter){
    index++;
   //if: eger
   //name == studentke barabar bolso
   //&&: jana
   if(name == student.name && email == student.email){
    
    //index =1;

    Navigator.push(context,
     MaterialPageRoute(
      builder: (context)=> UserPage(
        student: student.name,
        ),
     ),
     );
    break;
   }else{

    // index =1   studentter = 5
    if(index == studentter.length) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text(
          "Сиздин атыныз же почтаныз туура эмес!"),
        )
      );
    } else{
      continue;
    }
    
        
   }
   }
}
 
         //Экинчи вариант
     /* void controlNameEmail(String name, String email) {
     
  for(int i = 0; i <= studentter.length; i++ ){
   //if: eger
   //name == studentke barabar bolso
   //&&: jana
   if(name == studentter[i] && email == studentter[i].email){
    
    //index =1;

    Navigator.push(context,
     MaterialPageRoute(builder: (context)=> UserPage(),
     ),
     );
    break;
   }else{
    if(i == studentter.length){
      ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(
        'tuura emes!'
      ),
      ),
      );
    }
    
    
    
    
        
   }
   }
      }
      */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(
          'LoginPage'.toUpperCase(),
          ),
          ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('data:image/jpeg;base64,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',
              
                 ),fit:BoxFit.fitHeight ,
                 
                 ),
              ),
            
         
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    colors: [
                      Colors.transparent,
                      Color.fromARGB(0, 227, 194, 194),
                    ]
                  )
                ),
                /*decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.6)
                ),
                
                width:double.infinity,
                height: double.infinity,*/
            
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
              Row(mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FlutterLogo(
                  size: 80,
              
                ),
                Text('Flutter')
              ],),
                    
               
                const Text('Welcome to Saifty', style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                const Text('Keep your data safe!'),
                 Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: TextField(onChanged: (String value){
                    _name = value;
                    print("Валуе иштеди $value");
                    print("Валуе иштеди $_name");
                  },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                
                      
                    ),
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: TextField(onChanged: (String value){
                    _gmail = value;
                    print("Валуе иштеди $value");
                    print("Валуе иштеди $_gmail");
                  },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Gmail',
                
                      
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                   minimumSize: const Size(200, 40)
                  ),
                  onPressed: (){
                    controlNameEmail(_name!, _gmail!);
                  }, child: const Text('Login'),
                  ),
              ],
                      ),
              ),
            ),
            
            
            
            
           
        ),
      ),
    );
  }
}
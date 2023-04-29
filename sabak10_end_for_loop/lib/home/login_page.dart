// ignore_for_file: avoid_print

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
  aizat
];

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

    for (final student in studentter) {
      index++;
      //if: eger
      //name == studentke barabar bolso
      //&&: jana
      if (name == student.name && email == student.email) {
        //index =1;

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserPage(
              student: student,
              student1: student.surName,
            ),
          ),
        );
        break;
      } else {
        // index =1   studentter = 5
        if (index == studentter.length) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Сиздин атыныз же почтаныз туура эмес!"),
            ),
          );
        } else {
          continue;
        }
      }
    }
  }

  //Экинчи вариант
  // void controlNameEmail(String name, String email) {
  //   for (int i = 0; i <= studentter.length; i++) {
  //     // if: eger
  //     // name == studentke barabar bolso
  //     // &&: jana
  //     if (name == studentter[i] && email == studentter[i].email) {
  //       //index =1;

  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => UserPage(
  //     student:studentter.length.,
  //           ),
  //         ),
  //       );
  //       break;
  //     } else {
  //       if (i == studentter.length) {
  //         ScaffoldMessenger.of(context).showSnackBar(
  //           SnackBar(
  //             content: Text('tuura emes!'),
  //           ),
  //         );
  //       }
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'LoginPage'.toUpperCase(),
          ),
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image:
                  NetworkImage('https://wallpaperaccess.com/full/530919.jpg'),
              fit: BoxFit.cover,
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
                  ],
                ),
              ),
              /*decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.6)
                ),
                
                width:double.infinity,
                height: double.infinity,*/

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      FlutterLogo(
                        size: 80,
                      ),
                      Text('Flutter'),
                    ],
                  ),
                  const Text(
                    'Welcome to Saifty',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  const Text('Keep your data safe!'),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: TextField(
                      onChanged: (String value) {
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
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: TextField(
                      onChanged: (String value) {
                        _gmail = value;
                        print("Валуе иштеди $value");
                        print("Валуе иштеди $_gmail");
                      },
                      decoration: const InputDecoration(
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
                      minimumSize: const Size(200, 40),
                    ),
                    onPressed: () {
                      controlNameEmail(_name!, _gmail!);
                    },
                    child: const Text(
                      'Login',
                    ),
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

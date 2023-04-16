import 'package:flutter/material.dart';
import 'package:sabak13_piano_app3_and_extract/components/container_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text('Extract Widget'),
        ),
        body: Center(
          child: Column(
            children: [
              Column(
                children: const [
                  ContainerwWidget(
                    containerdinTexti: 'Container 1',
                    containerdinTexti2: 'Sabak 6',
                    icon: Icons.book_online_rounded,
                    image:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Flag_of_Kyrgyzstan.svg/800px-Flag_of_Kyrgyzstan.svg.png?20230107130638',
                    colordynAty: 'Colors.white',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ContainerwWidget(
                    containerdinTexti: 'Container 2',
                    containerdinTexti2: 'Sabak 5',
                    icon: Icons.time_to_leave_rounded,
                    image:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/US_flag_large_51_stars.png/1024px-US_flag_large_51_stars.png',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ContainerwWidget(
                    containerdinTexti: 'Container 3',
                    containerdinTexti2: 'Sabak 4',
                    icon: Icons.access_alarm,
                    image:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Flag_of_Saudi_Arabia_%281932%E2%80%931934%29.svg/1024px-Flag_of_Saudi_Arabia_%281932%E2%80%931934%29.svg.png',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ContainerwWidget(
                    containerdinTexti: 'Container 4',
                    containerdinTexti2: 'Sabak 3',
                    icon: Icons.phone_iphone,
                    image:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Flag_of_Turkey.svg/2560px-Flag_of_Turkey.svg.png',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ContainerwWidget(
                    containerdinTexti: 'Container 5',
                    containerdinTexti2: 'Sabak 2',
                    icon: Icons.ac_unit_rounded,
                    image:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Flag_of_Kazakhstan.png/1200px-Flag_of_Kazakhstan.png',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ForExample(),
    );
  }
}

class ForExample extends StatefulWidget {
  const ForExample({super.key});

  @override
  State<ForExample> createState() => _ForExampleState();
}

class _ForExampleState extends State<ForExample> {
  bool isTrue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ForExample'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap: () {
                  print('1');
                  setState(() {
                    isTrue = true;
                    print(isTrue);
                  });
                },
                child: Container(
                    width: 50,
                    height: 50,
                    color: isTrue == true ? Colors.purple : Colors.blueGrey)),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  isTrue = false;
                  print(isTrue);
                });
              },
              child: Container(
                  width: 50,
                  height: 50,
                  color: !isTrue ? Colors.purple : Colors.blueGrey),
            ),
          ],
        ),
      ),
    );
  }
}

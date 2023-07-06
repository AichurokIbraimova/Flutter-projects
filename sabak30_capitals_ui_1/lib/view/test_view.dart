import 'package:flutter/material.dart';
import 'package:sabak30_capitals_ui_1/constants/app_colors.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Container(
            height: 30,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  // spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
              color: AppColors.white,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '0',
                  style: TextStyle(fontSize: 15),
                ),
                Text('32'),
                Text('0'),
              ],
            ),
          ),
          const SizedBox(width: 30),
          const Text(
            '3',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(width: 30),
          const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          Icon(Icons.more_vert)
        ],
      ),
    );
  }
}

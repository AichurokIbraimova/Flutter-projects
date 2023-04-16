import 'package:flutter/material.dart';

import 'package:sabak10_end_for_loop/model.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key, required this.student});
  final String student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Page'),
      ),
      body: Column(
        children: [
          Text(student),
          
        ],
      ),
    );
  }
}

// ignore_for_file: avoid_print

import 'package:counter_app_getx/getx_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Counter2 extends StatelessWidget {
  const Counter2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(() {
              return Text('${controller.count}');
            }),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'To FirstGETX Page',
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.degrement,
        tooltip: 'Degrement',
        child: const Icon(Icons.remove),
      ),
    );
  }
}

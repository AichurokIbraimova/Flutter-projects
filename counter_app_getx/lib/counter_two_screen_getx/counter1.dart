// ignore_for_file: avoid_print

import 'package:counter_app_getx/counter_two_screen_getx/counter2.dart';
import 'package:counter_app_getx/getx_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Counter1 extends StatelessWidget {
  const Counter1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Obx(
          () => Text(
            '${controller.count}',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contex) => Counter2(),
                  ),
                );
              },
              child: const Text('To Second GETX Page'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

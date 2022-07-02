import 'package:clicker_getx/counter/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CounterController());
    return Obx(() {
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const Text('You have pushed the button this many times:'),
            Text(
              '${controller.count}',
              style: Theme.of(context).textTheme.headline4,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () => controller.decrement(),
                  child: const Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: () => controller.clear(),
                  child: const Icon(Icons.delete_outline),
                ),
                FloatingActionButton(
                  onPressed: () => controller.increment(),
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(height: 25),
          ],
        ),
      );
    });
  }
}

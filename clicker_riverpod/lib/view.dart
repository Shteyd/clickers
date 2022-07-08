import 'package:clicker_riverpod/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(homeControllerProvider);
    final controller = ref.watch(homeControllerProvider.notifier);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const Text('You have pushed the button this many times:'),
          Text(
            '${counter.value}',
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
  }
}

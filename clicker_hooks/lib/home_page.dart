import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MyHomePage extends HookWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = useState<int>(0);
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
                onPressed: () => counter.value--,
                child: const Icon(Icons.remove),
              ),
              FloatingActionButton(
                onPressed: () => counter.value = 0,
                child: const Icon(Icons.delete_outline),
              ),
              FloatingActionButton(
                onPressed: () => counter.value++,
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

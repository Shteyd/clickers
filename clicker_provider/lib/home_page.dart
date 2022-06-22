import 'package:clicker_provider/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterNotifier = Provider.of<Counter>(context, listen: false);
    return Scaffold(
      body: Consumer<Counter>(
        builder: (context, notifier, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Text('You have pushed the button this many times:'),
              Text(
                '${notifier.value}',
                style: Theme.of(context).textTheme.headline4,
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: () => counterNotifier.decrement(),
                    child: const Icon(Icons.remove),
                  ),
                  FloatingActionButton(
                    onPressed: () => counterNotifier.clear(),
                    child: const Icon(Icons.delete_outline),
                  ),
                  FloatingActionButton(
                    onPressed: () => counterNotifier.increment(),
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
              const SizedBox(height: 25),
            ],
          );
        },
      ),
    );
  }
}

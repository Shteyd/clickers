import 'package:clicker_rxdart/counter.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterService = CounterService();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const Text('You have pushed the button this many times:'),
            StreamBuilder<int>(
              stream: counterService.stream$,
              builder: (context, snap) {
                return Text(
                  '${snap.data}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () => counterService.decrement(),
                  child: const Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: () => counterService.clear(),
                  child: const Icon(Icons.delete_outline),
                ),
                FloatingActionButton(
                  onPressed: () => counterService.increment(),
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}

import 'package:clicker_rxdart/counter.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counterService.increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}

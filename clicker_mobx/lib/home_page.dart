import 'package:clicker_mobx/store/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Counter counter = Counter();
    return Scaffold(
      body: Observer(
        builder: (BuildContext context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Text('You have pushed the button this many times:'),
              Text(
                '${counter.count}',
                style: Theme.of(context).textTheme.headline4,
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: () => counter.decremet(),
                    child: const Icon(Icons.remove),
                  ),
                  FloatingActionButton(
                    onPressed: () => counter.clear(),
                    child: const Icon(Icons.delete_outline),
                  ),
                  FloatingActionButton(
                    onPressed: () => counter.increment(),
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

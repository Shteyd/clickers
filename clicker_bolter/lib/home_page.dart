import 'package:bolter_flutter/bolter_flutter.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _increment() => defaultBolter.runAndUpdate(action: () => _counter++);

  void _decrement() => defaultBolter.runAndUpdate(action: () => _counter--);

  void _clear() => defaultBolter.runAndUpdate(action: () => _counter = 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const Text('You have pushed the button this many times:'),
          SyncBuilder.getter(
            getter: () => _counter,
            builder: (context, value) {
              return Text(
                '$value',
                style: Theme.of(context).textTheme.headline4,
              );
            },
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () => _decrement(),
                child: const Icon(Icons.remove),
              ),
              FloatingActionButton(
                onPressed: () => _clear(),
                child: const Icon(Icons.delete_outline),
              ),
              FloatingActionButton(
                onPressed: () => _increment(),
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

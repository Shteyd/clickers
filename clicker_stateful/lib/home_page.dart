import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  void _increment() => setState(() {
        counter++;
      });

  void _decrement() => setState(() {
        counter--;
      });

  void _clear() => setState(() {
        counter = 0;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const Text('You have pushed the button this many times:'),
          Text(
            '$counter',
            style: Theme.of(context).textTheme.headline4,
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

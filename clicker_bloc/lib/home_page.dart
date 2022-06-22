import 'package:clicker_bloc/counter_bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                const Text('You have pushed the button this many times:'),
                Text(
                  '${state.counterValue}',
                  style: Theme.of(context).textTheme.headline4,
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      onPressed: () =>
                          context.read<CounterBloc>().add(DecrementEvent()),
                      child: const Icon(Icons.remove),
                    ),
                    FloatingActionButton(
                      onPressed: () =>
                          context.read<CounterBloc>().add(ClearEvent()),
                      child: const Icon(Icons.delete_outline),
                    ),
                    FloatingActionButton(
                      onPressed: () =>
                          context.read<CounterBloc>().add(IncrementEvent()),
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        );
      },
    );
  }
}

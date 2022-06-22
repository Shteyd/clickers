import 'package:clicker_redux/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class MyHomePage extends StatelessWidget {
  final Store<int> _store;

  const MyHomePage(this._store, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoreProvider<int>(
        store: _store,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const Text('You have pushed the button this many times:'),
            StoreConnector<int, String>(
              converter: (store) => store.state.toString(),
              builder: (context, constStr) {
                return Text(
                  constStr,
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                StoreConnector<int, VoidCallback>(
                  converter: (store) =>
                      () => store.dispatch(CounterActions.decrement),
                  builder: (context, callback) {
                    return FloatingActionButton(
                      onPressed: callback,
                      child: const Icon(Icons.remove),
                    );
                  },
                ),
                StoreConnector<int, VoidCallback>(
                  converter: (store) =>
                      () => store.dispatch(CounterActions.clear),
                  builder: (context, callback) {
                    return FloatingActionButton(
                      onPressed: callback,
                      child: const Icon(Icons.delete_outline),
                    );
                  },
                ),
                StoreConnector<int, VoidCallback>(
                  converter: (store) =>
                      () => store.dispatch(CounterActions.increment),
                  builder: (context, callback) {
                    return FloatingActionButton(
                      onPressed: callback,
                      child: const Icon(Icons.add),
                    );
                  },
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

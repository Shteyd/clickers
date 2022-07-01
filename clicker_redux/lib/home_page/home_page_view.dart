import 'package:clicker_redux/redux/actions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'package:clicker_redux/model/appstate.dart';
import 'package:clicker_redux/model/counter.dart';

part 'home_page_viewmodel.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoreConnector<AppState, _ViewModel>(
        converter: (Store<AppState> store) => _ViewModel.create(store),
        builder: (BuildContext context, _ViewModel viewModel) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Text('You have pushed the button this many times:'),
              Text(
                '${viewModel.counter.value}',
                style: Theme.of(context).textTheme.headline4,
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: viewModel.decrement,
                    child: const Icon(Icons.remove),
                  ),
                  FloatingActionButton(
                    onPressed: viewModel.clear,
                    child: const Icon(Icons.delete_outline),
                  ),
                  FloatingActionButton(
                    onPressed: viewModel.increment,
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

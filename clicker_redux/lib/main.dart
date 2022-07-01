import 'package:clicker_redux/home_page/home_page_view.dart';
import 'package:clicker_redux/model/appstate.dart';
import 'package:clicker_redux/redux/reducers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = Store<AppState>(
      appStateReducer,
      initialState: AppState.initialState(),
    );

    return StoreProvider<AppState>(
      store: store,
      child: const MaterialApp(
        title: 'Redux Clicker',
        home: HomePage(),
      ),
    );
  }
}

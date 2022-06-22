import 'package:clicker_bloc/counter_bloc/counter_bloc.dart';
import 'package:clicker_bloc/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: const MaterialApp(
        title: 'Bloc Clicker',
        home: MyHomePage(),
      ),
    );
  }
}

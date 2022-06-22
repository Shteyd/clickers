import 'package:clicker_provider/counter.dart';
import 'package:clicker_provider/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => Counter(),
      child: const MaterialApp(
        title: 'Provider Clicker',
        home: MyHomePage(),
      ),
    );
  }
}

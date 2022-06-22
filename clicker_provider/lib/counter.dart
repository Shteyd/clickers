import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int value = 0;

  void increment() {
    value++;
    notifyListeners();
  }

  void decrement() {
    value--;
    notifyListeners();
  }

  void clear() {
    value = 0;
    notifyListeners();
  }
}

// ignore_for_file: library_private_types_in_public_api
import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  @observable
  int count = 0;

  @action
  void increment() {
    count++;
  }

  @action
  void decremet() {
    count--;
  }

  @action
  void clear() {
    count = 0;
  }
}

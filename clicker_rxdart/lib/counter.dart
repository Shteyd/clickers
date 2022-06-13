import 'package:rxdart/rxdart.dart';

class CounterService {
  final BehaviorSubject<int> _counter = BehaviorSubject<int>.seeded(0);

  Stream<int> get stream$ => _counter.stream;
  int get currentIndex => _counter.value;

  void increment() {
    _counter.add(currentIndex + 1);
  }
}

final CounterService counterService = CounterService();

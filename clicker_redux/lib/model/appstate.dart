import 'package:clicker_redux/model/counter.dart';

class AppState {
  final Counter counter;
  AppState({
    required this.counter,
  });

  AppState.initialState() : counter = Counter(value: 0);
}

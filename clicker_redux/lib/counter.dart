import 'package:redux/redux.dart';

enum CounterActions { increment, decrement, clear }

int counterReducer(int state, dynamic action) {
  switch (action) {
    case CounterActions.increment:
      return state + 1;
    case CounterActions.decrement:
      return state - 1;
    case CounterActions.clear:
      return 0;
    default:
      throw ('Invalid Action');
  }
}

final counterStore = Store<int>(counterReducer, initialState: 0);

import 'package:clicker_redux/model/appstate.dart';
import 'package:clicker_redux/model/counter.dart';
import 'package:clicker_redux/redux/actions.dart';

AppState appStateReducer(AppState state, action) {
  return AppState(
    counter: itemReducer(state.counter, action),
  );
}

Counter itemReducer(Counter state, action) {
  if (action is IncrementAction) {
    return Counter(value: state.value + 1);
  }

  if (action is DecrementAction) {
    return Counter(value: state.value - 1);
  }

  if (action is ClearAction) {
    return Counter(value: 0);
  }

  return state;
}

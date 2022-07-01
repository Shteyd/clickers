part of 'home_page_view.dart';

class _ViewModel {
  _ViewModel({
    required this.counter,
    required this.increment,
    required this.decrement,
    required this.clear,
  });

  final Counter counter;
  final Function() increment;
  final Function() decrement;
  final Function() clear;

  factory _ViewModel.create(Store<AppState> store) {
    _increment() {
      store.dispatch(IncrementAction());
    }

    _decrement() {
      store.dispatch(DecrementAction());
    }

    _clear() {
      store.dispatch(ClearAction());
    }

    return _ViewModel(
      counter: store.state.counter,
      increment: _increment,
      decrement: _decrement,
      clear: _clear,
    );
  }
}

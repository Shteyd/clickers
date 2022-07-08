import 'package:clicker_riverpod/model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeController extends StateNotifier<Counter> {
  HomeController() : super(Counter());

  void increment() => state = state.copyWith(value: state.value + 1);

  void decrement() => state = state.copyWith(value: state.value - 1);

  void clear() => state = state.copyWith(value: 0);
}

final homeControllerProvider =
    StateNotifierProvider.autoDispose<HomeController, Counter>(
  (ref) => HomeController(),
);

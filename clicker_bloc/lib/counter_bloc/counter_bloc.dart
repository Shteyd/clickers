import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<IncrementEvent>(
      (event, emit) => emit(CounterState(counterValue: state.counterValue + 1)),
    );
    on<ClearEvent>(
      (event, emit) => emit(CounterState(counterValue: 0)),
    );
    on<DecrementEvent>(
      (event, emit) => emit(CounterState(counterValue: state.counterValue - 1)),
    );
  }
}

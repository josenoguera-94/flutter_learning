import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<Increment>((event, emit) {
      emit(state.copyWith(counter: state.counter + 1));
    });

    on<Decrement>((event, emit) {
      emit(state.copyWith(counter: state.counter - 1));
    });

    on<Reset>((event, emit) {
      emit(const CounterState());
    });
  }


  void increment() => add(Increment());
  void decrement() => add(Decrement());
  void reset() => add(Reset());
}

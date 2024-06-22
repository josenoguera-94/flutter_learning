part of 'counter_bloc.dart';

class CounterState extends Equatable {

  final int counter;

  const CounterState({
    this.counter = 0
  });

  CounterState copyWith({
    int? counter
  }) => CounterState(
      counter: counter ?? this.counter
    );
  

  @override
  List<Object> get props => [counter];
}



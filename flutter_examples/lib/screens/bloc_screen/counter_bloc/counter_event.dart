part of 'counter_bloc.dart';

sealed class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class Increment extends CounterEvent {}

class Decrement extends CounterEvent {}

class Reset extends CounterEvent {}

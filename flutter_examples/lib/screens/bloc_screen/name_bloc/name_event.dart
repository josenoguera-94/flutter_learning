part of 'name_bloc.dart';

@immutable
sealed class NameEvent {}

class ChangeName extends NameEvent {

  final String name;

  ChangeName(this.name);
  
}

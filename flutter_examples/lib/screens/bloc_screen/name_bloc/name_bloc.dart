import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'name_event.dart';
part 'name_state.dart';

class NameBloc extends Bloc<NameEvent, NameState> {
  NameBloc() : super(
    const NameState(
    name: 'John Doe'
    )
  ) {
    // on<NameEvent>((event, emit) {
    //   // TODO: implement event handler
    // });

    // on<ChangeName>((event, emit) {
    //   emit(
    //     NameState(
    //       name: event.name
    //     )
    //   );
    // });
    // paso 3
    on<ChangeName>(_changeNameHandler);
  }

  // paso 1
  void _changeNameHandler(ChangeName event, Emitter<NameState> emit) {
    emit(state.copyWith(name: event.name));
  }

  // paso 3
  void changeName(String name) {
    add(ChangeName(name));
  }
}

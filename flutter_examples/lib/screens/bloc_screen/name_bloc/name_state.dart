part of 'name_bloc.dart';


class NameState extends Equatable {

  final String name;

  const NameState({
    required this.name
  });

  NameState copyWith({
    String? name
  }) => NameState(
    name: name ?? this.name
  );

  @override
  List<Object> get props => [name];
}

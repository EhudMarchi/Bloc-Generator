import 'package:equatable/equatable.dart';
abstract class {{BlocName}}State extends Equatable {
const {{BlocName}}State();

  @override
  List<Object?> get props => [];
}

class {{BlocName}}Initial extends {{BlocName}}State {
// Initial state...
}
class {{BlocName}}Error extends {{BlocName}}State {
  final String error;

  {{BlocName}}Error({required this.error});

  @override
  List<Object> get props => [error];
}
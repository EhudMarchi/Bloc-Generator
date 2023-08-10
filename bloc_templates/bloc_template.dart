import 'package:bloc/bloc.dart';
import '{{BlocNameLowerCase}}_event.dart';
import '{{BlocNameLowerCase}}_state.dart';
class {{BlocName}}Bloc extends Bloc<{{BlocName}}Event, {{BlocName}}State> {
  {{BlocName}}Bloc() : super({{BlocName}}Initial());

  @override
  Stream<{{BlocName}}State> mapEventToState({{BlocName}}Event event) async* {
  // Event handling logic...
  }
}

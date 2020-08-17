import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'edicao_event.dart';
part 'edicao_state.dart';
class EdicaoBloc extends Bloc<EdicaoEvent, EdicaoState> {
  EdicaoBloc() : super(EdicaoInitial());
  @override
  Stream<EdicaoState> mapEventToState(
    EdicaoEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}

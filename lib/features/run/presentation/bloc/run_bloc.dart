import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'run_event.dart';
part 'run_state.dart';
class RunBloc extends Bloc<RunEvent, RunState> {
  RunBloc() : super(RunInitial());
  @override
  Stream<RunState> mapEventToState(
    RunEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}

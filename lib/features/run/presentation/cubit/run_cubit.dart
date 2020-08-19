import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'run_state.dart';

class RunCubit extends Cubit<RunState> {
  RunCubit() : super(RunInitial());
}

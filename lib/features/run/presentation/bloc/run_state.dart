part of 'run_bloc.dart';
abstract class RunState extends Equatable {
  const RunState();
}
class RunInitial extends RunState {
  @override
  List<Object> get props => [];
}

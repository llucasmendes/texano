part of 'run_cubit.dart';

abstract class RunState extends Equatable {
  const RunState();

  @override
  List<Object> get props => [];
}

class RunInitial extends RunState {}

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

part 'run_state.dart';

class RunCubit extends Cubit<RunState> {
  RunCubit()
      : super(
          RunState(
            fontSize: 12,
            runVelocity: 10,
            fontColor: Colors.white,
          ),
        );

  fontSizeChanged(double value) => emit(state.copyWith(fontSize: value));

  runVelocityChanged(double value) => emit(state.copyWith(runVelocity: value));

  fontColorChanged(Color value) => emit(state.copyWith(fontColor: value));
}

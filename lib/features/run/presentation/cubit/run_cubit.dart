import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:texano/core/utils/app_colors.dart';

part 'run_state.dart';

class RunCubit extends Cubit<RunState> {
  RunCubit()
      : super(
          RunState(
            fontSize: 12,
            runVelocity: 10,
            fontColor: AppColors.primaryBlack,
          ),
        );

  void fontSizeChanged(double value) {
    emit(state.copyWith(fontSize: value));
  }

  void runVelocityChanged(double value) {
    emit(state.copyWith(runVelocity: value));
  }

  void fontColorChanged(Color value) {
    emit(state.copyWith(fontColor: value));
  }
}

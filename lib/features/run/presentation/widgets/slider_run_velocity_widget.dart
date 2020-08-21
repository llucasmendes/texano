import 'package:flutter/material.dart';
import 'package:texano/core/utils/sizes.dart';
import 'package:texano/features/run/presentation/cubit/run_cubit.dart';
import 'package:texano/features/run/utils/run_strings.dart';

class SliderRunVelocityWidget extends StatelessWidget {
  SliderRunVelocityWidget(this.cubit, this.state);

  final RunState state;
  final RunCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          RunStrings.runVelocityInfo(state.runVelocity.toInt()),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25.ssp,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Slider.adaptive(
          value: state.runVelocity,
          min: 1,
          max: 50,
          onChanged: (value) => cubit.runVelocityChanged(value),
        ),
      ],
    );
  }
}

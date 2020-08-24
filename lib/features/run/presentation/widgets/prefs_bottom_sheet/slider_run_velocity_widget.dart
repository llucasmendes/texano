import 'package:flutter/material.dart';
import 'package:texano/features/run/presentation/cubit/run_cubit.dart';
import 'package:texano/features/run/utils/run_strings.dart';

class SliderRunVelocityWidget extends StatelessWidget {
  SliderRunVelocityWidget(this.cubit);

  final RunCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          RunStrings.runVelocityInfo(cubit.state.runVelocity.toInt()),
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 17),
        ),
        Slider.adaptive(
          value: cubit.state.runVelocity,
          min: 1,
          max: 50,
          onChanged: (value) => cubit.runVelocityChanged(value),
        ),
      ],
    );
  }
}

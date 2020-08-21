import 'package:flutter/material.dart';
import 'package:texano/core/utils/sizes.dart';
import 'package:texano/features/run/presentation/cubit/run_cubit.dart';
import 'package:texano/features/run/utils/run_strings.dart';

class SliderFontSizeWidget extends StatelessWidget {
  SliderFontSizeWidget(this.cubit, this.state);

  final RunState state;
  final RunCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          RunStrings.fontSizeInfo(state.fontSize.toInt()),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25.ssp,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Slider.adaptive(
          value: state.fontSize,
          min: 10,
          max: 100,
          onChanged: (value) => cubit.fontSizeChanged(value),
        ),
      ],
    );
  }
}

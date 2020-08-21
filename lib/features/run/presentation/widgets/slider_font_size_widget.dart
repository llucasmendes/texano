import 'package:flutter/material.dart';
import 'package:texano/core/utils/sizes.dart';
import 'package:texano/features/run/presentation/cubit/run_cubit.dart';
import 'package:texano/features/run/utils/run_strings.dart';

class SliderFontSizeWidget extends StatelessWidget {
  SliderFontSizeWidget(this.cubit);

  final RunCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          RunStrings.fontSizeInfo(cubit.state.fontSize.toInt()),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Slider.adaptive(
          value: cubit.state.fontSize,
          min: 10,
          max: 100,
          onChanged: (value) => cubit.fontSizeChanged(value),
        ),
      ],
    );
  }
}

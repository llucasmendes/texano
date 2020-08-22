import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texano/core/utils/sizes.dart';
import 'package:texano/features/run/presentation/cubit/run_cubit.dart';
import 'package:texano/features/run/presentation/pages/color_alert_dialog.dart';
import 'package:texano/features/run/presentation/widgets/slider_font_size_widget.dart';
import 'package:texano/features/run/presentation/widgets/slider_run_velocity_widget.dart';

class PrefsBottomSheet {
  PrefsBottomSheet(this.context, this.cubit);

  final BuildContext context;
  final RunCubit cubit;

  Future<void> call() async {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return BlocBuilder(
          cubit: cubit,
          builder: (context, state) {
            return Wrap(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.h),
                  child: Column(
                    children: [
                      SliderFontSizeWidget(cubit),
                      SizedBox(
                        height: 30.h,
                      ),
                      SliderRunVelocityWidget(cubit),
                      SizedBox(
                        height: 30.h,
                      ),
                      RaisedButton(
                        onPressed: () =>
                            ColorAlertDialog(context, cubit).call(),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

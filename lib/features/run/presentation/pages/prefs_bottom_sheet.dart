import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texano/core/utils/app_colors.dart';
import 'package:texano/features/run/presentation/cubit/run_cubit.dart';
import 'package:texano/features/run/presentation/pages/color_alert_dialog.dart';
import 'package:texano/features/run/presentation/widgets/prefs_bottom_sheet/slider_font_size_widget.dart';
import 'package:texano/features/run/presentation/widgets/prefs_bottom_sheet/slider_run_velocity_widget.dart';
import 'package:texano/features/run/utils/run_strings.dart';

class PrefsBottomSheet {
  PrefsBottomSheet(this.context, this.cubit);

  final BuildContext context;
  final RunCubit cubit;

  Future<void> call() async {
    return showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.gray,
      builder: (context) {
        return BlocBuilder(
          cubit: cubit,
          builder: (context, state) {
            return Wrap(
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SliderFontSizeWidget(cubit),
                      SizedBox(height: 10),
                      SliderRunVelocityWidget(cubit),
                      SizedBox(height: 10),
                      ListTile(
                        onTap: () => ColorAlertDialog(context, cubit).call(),
                        title: Text(RunStrings.textColor),
                        trailing: CircleAvatar(
                          radius: 22,
                          backgroundColor: cubit.state.fontColor,
                        ),
                      ),
                      ListTile(
                        onTap: () => ColorAlertDialog(context, cubit).call(),
                        title: Text(RunStrings.backgroundColor),
                        trailing: CircleAvatar(
                          radius: 22,
                          backgroundColor: cubit.state.backgroundColor,
                        ),
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

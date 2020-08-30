import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:texano/core/cubit/account_cubit.dart';
import 'package:texano/core/navigator/routes.dart';
import 'package:texano/core/utils/app_colors.dart';
import 'package:texano/features/run/navigator/run_navigator.dart';
import 'package:texano/features/run/presentation/cubit/run_cubit.dart';
import 'package:texano/features/run/utils/run_consts.dart';
import 'package:texano/features/run/utils/run_strings.dart';

enum ColorArea { text, background }

class ColorAlertDialog {
  ColorAlertDialog({
    @required this.context,
    @required this.cubit,
    @required this.colorArea,
  });

  final BuildContext context;
  final RunCubit cubit;
  final ColorArea colorArea;

  Future<void> call() async {
    final isPremium = BlocProvider.of<AccountCubit>(context).state.isPremium;
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.gray,
          actions: [
            FlatButton(
              onPressed: Routes.sailor.pop,
              child: Text(RunStrings.okButton),
            ),
          ],
          contentPadding: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          content: SingleChildScrollView(
            child: BlockPicker(
              pickerColor: colorArea == ColorArea.text
                  ? cubit.state.fontColor
                  : cubit.state.backgroundColor,
              onColorChanged: (color) {
                if (isPremium || RunConsts.freeColors.contains(color)) {
                  colorArea == ColorArea.text
                      ? cubit.fontColorChanged(color)
                      : cubit.backgroundColorChanged(color);
                } else
                  RunNavigator.goToBePremium();
              },
            ),
          ),
        );
      },
    );
  }
}

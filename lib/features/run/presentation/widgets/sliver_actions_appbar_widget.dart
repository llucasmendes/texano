import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texano/core/utils/app_colors.dart';
import 'package:texano/core/utils/sizes.dart';
import 'package:texano/features/run/presentation/cubit/run_cubit.dart';
import 'package:texano/features/run/presentation/pages/prefs_bottom_sheet.dart';
import 'package:texano/features/run/utils/run_strings.dart';

class SliverActionsAppBarWidget extends StatelessWidget {
  SliverActionsAppBarWidget(this.controller, this.state);

  final ScrollController controller;
  final RunState state;
  final appBarUnderlineHeight = 1.w;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      actions: [
        IconButton(
          tooltip: RunStrings.play,
          icon: Icon(
            Icons.play_arrow,
            size: 35,
          ),
          onPressed: _runText,
        ),
        IconButton(
          icon: Icon(
            Icons.edit,
            size: 25,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.color_lens,
            size: 25,
          ),
          onPressed: () {
            final cubit = BlocProvider.of<RunCubit>(context);
            return PrefsBottomSheet(context, cubit).call();
          },
        ),
      ],
      bottom: PreferredSize(
        child: Container(
          color: AppColors.primaryBlack[50],
          height: appBarUnderlineHeight,
        ),
        preferredSize: Size.fromHeight(appBarUnderlineHeight),
      ),
    );
  }

  void _runText() {
    final dimension = controller.position.maxScrollExtent;
    final availableSpace = dimension - controller.offset;
    final userTime = state.runVelocity;
    final scrollTime = (userTime * availableSpace * 1000) / dimension;
    controller.animateTo(
      dimension,
      duration: Duration(milliseconds: scrollTime.toInt()),
      curve: Curves.linear,
    );
  }
}

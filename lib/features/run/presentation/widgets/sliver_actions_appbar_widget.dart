import 'package:flutter/material.dart';
import 'package:texano/core/utils/app_colors.dart';
import 'package:texano/core/utils/sizes.dart';
import 'package:texano/features/run/utils/run_strings.dart';

class SliverActionsAppBarWidget extends StatelessWidget {
  SliverActionsAppBarWidget(this.controller);

  final ScrollController controller;
  final appBarUnderlineHeight = 3.h;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      actions: [
        IconButton(
          tooltip: RunStrings.play,
          icon: Icon(
            Icons.play_arrow,
            size: 35.h,
          ),
          onPressed: () {
            controller.animateTo(
              controller.position.viewportDimension,
              duration: Duration(seconds: 20),
              curve: Curves.linear,
            );
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
}

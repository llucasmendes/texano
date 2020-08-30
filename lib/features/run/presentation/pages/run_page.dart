import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sailor/sailor.dart';
import 'package:texano/core/utils/sizes.dart';
import 'package:texano/features/home/domain/entities/lauda.dart';
import 'package:texano/features/run/presentation/cubit/run_cubit.dart';
import 'package:texano/features/run/presentation/widgets/run_page/setas_centralizadas_widget.dart';
import 'package:texano/features/run/presentation/widgets/run_page/sliver_actions_appbar_widget.dart';

class RunPageArgs extends BaseArguments {
  RunPageArgs(this.lauda);

  final Lauda lauda;
}

class RunPage extends StatelessWidget {
  RunPage(this.args);

  final RunPageArgs args;
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RunCubit, RunState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: state.backgroundColor,
          body: Stack(
            children: [
              CustomScrollView(
                controller: controller,
                slivers: [
                  SliverActionsAppBarWidget(controller, state),
                  SliverToBoxAdapter(
                    child: Container(
                      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Column(
                        children: [
                          Text(
                            args.lauda.conteudo,
                            style: TextStyle(
                              fontSize: state.fontSize,
                              color: state.fontColor,
                            ),
                          ),
                          SizedBox(
                            height: Sizes.height / 2,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SetasCentralizadasWidget(),
            ],
          ),
        );
      },
    );
  }
}

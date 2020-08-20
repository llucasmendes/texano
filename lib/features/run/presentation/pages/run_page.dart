import 'package:flutter/material.dart';
import 'package:sailor/sailor.dart';
import 'package:texano/core/utils/sizes.dart';
import 'package:texano/features/home/domain/entities/lauda.dart';
import 'package:texano/features/run/presentation/widgets/setas_centralizadas_widget.dart';
import 'package:texano/features/run/presentation/widgets/sliver_actions_appbar_widget.dart';

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
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            controller: controller,
            slivers: [
              SliverActionsAppBarWidget(controller),
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.all(20.w),
                  child: Text(args.lauda.conteudo),
                ),
              ),
            ],
          ),
          SetasCentralizadasWidget(),
        ],
      ),
    );
  }
}

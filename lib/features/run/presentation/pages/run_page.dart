import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sailor/sailor.dart';
import 'package:texano/features/edicao/presentation/widgets/ritch_editor_widget.dart';
import 'package:texano/features/home/domain/entities/lauda.dart';
import 'package:texano/features/run/presentation/cubit/run_cubit.dart';
import 'package:texano/features/run/presentation/widgets/run_page/setas_centralizadas_widget.dart';
import 'package:texano/features/run/presentation/widgets/run_page/sliver_actions_appbar_widget.dart';
import 'package:texano/features/run/utils/run_strings.dart';

class RunPageArgs extends BaseArguments {
  RunPageArgs(this.lauda);

  final Lauda lauda;
}

class RunPage extends StatelessWidget {
  RunPage(this.args);

  final RunPageArgs args;
  final scrollController = ScrollController();
  final conteudoTextController = TextEditingController();
  final tituloTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RunCubit, RunState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: state.backgroundColor,
          body: Stack(
            children: [
              CustomScrollView(
                controller: scrollController,
                slivers: [
                  SliverActionsAppBarWidget(
                    scrollController: scrollController,
                    conteudoTextController: conteudoTextController,
                    tituloTextController: tituloTextController,
                    lauda: args.lauda,
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Column(
                        children: [
                          !state.isEditing
                              ? Text(
                                  args.lauda.conteudo,
                                  style: TextStyle(
                                    fontSize: state.fontSize,
                                    color: state.fontColor,
                                  ),
                                )
                              : Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(5.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: state.fontColor,
                                          width: 0.3,
                                        ),
                                      ),
                                      child: TextField(
                                        controller: tituloTextController,
                                        maxLines: null,
                                        decoration: InputDecoration(
                                          hintText: RunStrings.title,
                                        ),
                                        style: TextStyle(
                                          fontSize: state.fontSize,
                                          color: state.fontColor,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(5.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: state.fontColor,
                                          width: 0.3,
                                        ),
                                      ),
                                      child: TextField(
                                        controller: conteudoTextController,
                                        maxLines: null,
                                        style: TextStyle(
                                          fontSize: state.fontSize,
                                          color: state.fontColor,
                                        ),
                                      ),
                                    ),
                                  ],
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

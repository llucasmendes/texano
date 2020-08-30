import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texano/core/utils/app_colors.dart';
import 'package:texano/core/utils/sizes.dart';
import 'package:texano/features/home/domain/entities/lauda.dart';
import 'package:texano/features/run/presentation/cubit/run_cubit.dart';
import 'package:texano/features/run/presentation/pages/prefs_bottom_sheet.dart';
import 'package:texano/features/run/utils/run_strings.dart';

class SliverActionsAppBarWidget extends StatelessWidget {
  SliverActionsAppBarWidget({
    @required this.scrollController,
    @required this.conteudoTextController,
    @required this.tituloTextController,
    @required this.lauda,
  });

  final ScrollController scrollController;
  final TextEditingController conteudoTextController;
  final TextEditingController tituloTextController;
  final Lauda lauda;
  final appBarUnderlineHeight = 1.w;

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<RunCubit>(context);
    return SliverAppBar(
      floating: true,
      actions: [
        if (!cubit.state.isEditing)
          Row(
            children: [
              IconButton(
                tooltip: RunStrings.play,
                icon: Icon(
                  Icons.play_arrow,
                  size: 35,
                ),
                onPressed: () => _runText(cubit.state),
              ),
              IconButton(
                icon: Icon(
                  Icons.edit,
                  size: 25,
                ),
                onPressed: () {
                  cubit.isEditingChanged(true);
                  conteudoTextController.text = lauda.conteudo;
                  tituloTextController.text = lauda.titulo;
                },
              ),
            ],
          )
        else
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              cubit.isEditingChanged(false);
              lauda.conteudo = conteudoTextController.text;
              lauda.titulo = tituloTextController.text;
              // salvar lauda no banco aqui
            },
          ),
        IconButton(
          icon: Icon(
            Icons.color_lens,
            size: 25,
          ),
          onPressed: () async {
            await PrefsBottomSheet(context, cubit).call();
            // salvar preferencias aqui
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

  void _runText(RunState state) {
    final dimension = scrollController.position.maxScrollExtent;
    final availableSpace = dimension - scrollController.offset;
    final userTime = state.runVelocity;
    final scrollTime = (userTime * availableSpace * 1000) / dimension;
    scrollController.animateTo(
      dimension,
      duration: Duration(milliseconds: scrollTime.toInt()),
      curve: Curves.linear,
    );
  }
}

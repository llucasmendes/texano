import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texano/core/cubit/account_cubit.dart';
import 'package:texano/core/utils/app_colors.dart';
import 'package:texano/core/utils/sizes.dart';
import 'package:texano/features/home/domain/entities/lauda.dart';
import 'package:texano/features/home/navigator/home_navigator.dart';
import 'package:texano/features/home/presentation/cubit/home_cubit.dart';
import 'package:texano/features/home/utils/home_strings.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<AccountCubit>(context);
    final Lauda lauda = Lauda(
      conteudo: '',
      data: DateTime.now(),
      id: null,
      titulo: '',
    );
    return BlocBuilder<AccountCubit, AccountState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Teleprompter Texano'),
            centerTitle: true,
            actions: [
              IconButton(
                icon: Icon(Icons.settings_remote),
                onPressed: HomeNavigator.goToConnection,
              ),
              IconButton(
                icon: Icon(Icons.refresh),
                onPressed: () {
                  BlocProvider.of<HomeCubit>(context).getLaudas();
                },
              ),
            ],
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Premium?'),
                    Switch.adaptive(
                      activeColor: Colors.redAccent,
                      activeTrackColor: AppColors.amber,
                      inactiveTrackColor: AppColors.primaryBlack[50],
                      value: cubit.state.isPremium,
                      onChanged: (value) => cubit.isPremiumChanged(value),
                    ),
                  ],
                ),
              ),
              FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () => HomeNavigator.goToRun(lauda: lauda),
              ),
            ],
          ),
          body: Center(
            child: BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                if (state is HomeLaudasCarregadas) {
                  final laudas = state.laudas;
                  if (laudas.isEmpty) {
                    return Text(HomeStrings.nenhumaLauda);
                  } else {
                    return ListView.separated(
                      itemCount: laudas.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 10.h,
                            horizontal: 10.w,
                          ),
                          leading: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '${index + 1}',
                              style: TextStyle(fontSize: 16.ssp),
                            ),
                          ),
                          title: Text(laudas[index].titulo),
                          onTap: () =>
                              HomeNavigator.goToRun(lauda: laudas[index]),
                        );
                      },
                      separatorBuilder: (_, __) => Divider(
                        height: 0,
                      ),
                    );
                  }
                }
                if (state is HomeLaudasFalha) {
                  return Text(state.mensagem);
                }
                return CircularProgressIndicator();
              },
            ),
          ),
        );
      },
    );
  }
}

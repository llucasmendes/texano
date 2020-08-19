import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texano/features/home/navigator/home_navigator.dart';
import 'package:texano/features/home/presentation/cubit/home_cubit.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teleprompter Texano'),
        centerTitle: true,
      ),
      body: Center(
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            print(state);
            if (state is HomeLaudasCarregadas) {
              return ListView.separated(
                itemCount: state.laudas.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Text('${index + 1}'),
                    title: Text(state.laudas[index].titulo),
                    onTap: () => HomeNavigator.goToRun(state.laudas[index]),
                  );
                },
                separatorBuilder: (_, __) => Divider(),
              );
            }
            if (state is HomeLaudasFalha) {
              return Text(state.mensagem);
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

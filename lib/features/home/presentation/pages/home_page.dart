import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texano/core/utils/sizes.dart';
import 'package:texano/features/home/navigator/home_navigator.dart';
import 'package:texano/features/home/presentation/cubit/home_cubit.dart';
import 'package:texano/features/home/utils/home_strings.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teleprompter Texano'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => HomeNavigator.goToRun(),
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
                      onTap: () => HomeNavigator.goToRun(lauda: laudas[index]),
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
  }
}

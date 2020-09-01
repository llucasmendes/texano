import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texano/core/cubit/account_cubit.dart';
import 'package:texano/core/navigator/routes.dart';
import 'package:texano/core/theme/app_theme.dart';
import 'package:texano/core/utils/injection_container.dart' as di;
import 'package:texano/core/utils/injection_container.dart';
import 'package:texano/features/home/presentation/cubit/home_cubit.dart';
import 'package:texano/features/home/presentation/pages/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  Routes.createRoutes();
  runApp(TexanoApp());
}

class TexanoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AccountCubit>(
      create: (_) => AccountCubit()..recuperaPreferencia(),
      child: MaterialApp(
        title: 'Teleprompter Texano',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.texanoTheme,
        onGenerateRoute: Routes.sailor.generator(),
        navigatorKey: Routes.sailor.navigatorKey,
        home: BlocBuilder<AccountCubit, AccountState>(
          builder: (context, state) {
            return BlocProvider<HomeCubit>(
              create: (_) => dep<HomeCubit>()..getLaudas(),
              child: HomePage(),
            );
          },
        ),
      ),
    );
  }
}

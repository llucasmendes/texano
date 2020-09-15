import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sailor/sailor.dart';
import 'package:texano/core/navigator/routes.dart';
import 'package:texano/core/utils/injection_container.dart';
import 'package:texano/features/bluetooth/presentation/cubit/bluetooth_cubit.dart';
import 'package:texano/features/bluetooth/presentation/pages/connection_page.dart';
import 'package:texano/features/run/presentation/cubit/run_cubit.dart';
import 'package:texano/features/run/presentation/pages/run_page.dart';

abstract class HomeRoutes {
  static const runPage = '/run';
  static const connectionPage = '/connection';

  static void createRoutes() {
    Routes.sailor.addRoutes(
      [
        SailorRoute(
          name: runPage,
          builder: (context, args, params) {
            return BlocProvider<RunCubit>(
              create: (_) => dep<RunCubit>(),
              child: RunPage(args),
            );
          },
        ),
        SailorRoute(
          name: connectionPage,
          builder: (context, args, params) {
            return BlocProvider<BluetoothCubit>(
              create: (_) => dep<BluetoothCubit>(),
              child: ConnectionPage(),
            );
          },
        ),
      ],
    );
  }
}

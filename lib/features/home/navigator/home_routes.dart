import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sailor/sailor.dart';
import 'package:texano/core/navigator/routes.dart';
import 'package:texano/core/utils/injection_container.dart';
import 'package:texano/features/run/presentation/bloc/run_bloc.dart';
import 'package:texano/features/run/presentation/pages/run_page.dart';

abstract class HomeRoutes {
  static const runPage = '/run';

  static void createRoutes() {
    Routes.sailor.addRoutes(
      [
        SailorRoute(
          name: runPage,
          builder: (context, args, params) {
            return BlocProvider<RunBloc>(
              create: (_) => dep<RunBloc>(),
              child: RunPage(args),
            );
          },
        ),
      ],
    );
  }
}

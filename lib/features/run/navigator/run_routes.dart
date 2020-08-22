import 'package:texano/core/navigator/routes.dart';

abstract class HomeRoutes {
  static const runPage = '/run';

  static void createRoutes() {
    Routes.sailor.addRoutes(
      [
        // SailorRoute(
        //   name: runPage,
        //   builder: (context, args, params) {
        //     return BlocProvider<RunCubit>(
        //       create: (_) => dep<RunCubit>(),
        //       child: RunPage(args),
        //     );
        //   },
        // ),
      ],
    );
  }
}

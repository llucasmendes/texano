import 'package:sailor/sailor.dart';
import 'package:texano/features/home/navigator/home_routes.dart';
import 'package:texano/features/run/navigator/run_routes.dart';

abstract class Routes {
  static final sailor = Sailor();

  static void createRoutes() {
    HomeRoutes.createRoutes();
    RunRoutes.createRoutes();
  }
}

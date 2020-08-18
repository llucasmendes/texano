import 'package:texano/core/navigator/routes.dart';
import 'package:texano/features/home/navigator/home_routes.dart';

abstract class HomeNavigator {
  static void goToRun() => Routes.sailor(HomeRoutes.runPage);
}

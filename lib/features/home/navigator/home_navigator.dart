import 'package:texano/core/navigator/routes.dart';
import 'package:texano/features/home/domain/entities/lauda.dart';
import 'package:texano/features/home/navigator/home_routes.dart';
import 'package:texano/features/run/presentation/pages/run_page.dart';

abstract class HomeNavigator {
  static Future<void> goToRun({Lauda lauda}) {
    return Routes.sailor.navigate(
      HomeRoutes.runPage,
      args: RunPageArgs(lauda),
    );
  }

  static Future<void> goToConnection() {
    return Routes.sailor.navigate(
      HomeRoutes.connectionPage,
    );
  }
}

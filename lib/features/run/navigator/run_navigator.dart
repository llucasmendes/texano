import 'package:sailor/sailor.dart';
import 'package:texano/core/navigator/routes.dart';
import 'package:texano/features/run/navigator/run_routes.dart';

abstract class RunNavigator {
  static goToBePremium() {
    return Routes.sailor.navigate(
      RunRoutes.bePremiumPage,
      navigationType: NavigationType.popAndPushNamed,
      transitions: [SailorTransition.slide_from_bottom],
    );
  }
}

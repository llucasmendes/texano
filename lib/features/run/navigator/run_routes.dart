import 'package:sailor/sailor.dart';
import 'package:texano/core/navigator/routes.dart';
import 'package:texano/features/run/presentation/pages/be_premium_page.dart';

abstract class RunRoutes {
  static const bePremiumPage = '/bePremium';

  static void createRoutes() {
    Routes.sailor.addRoutes(
      [
        SailorRoute(
          name: bePremiumPage,
          builder: (context, args, params) {
            return BePremiumPage();
          },
        ),
      ],
    );
  }
}

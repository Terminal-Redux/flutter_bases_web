import 'package:fluro/fluro.dart';
import 'package:bases_web/router/route_handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router
      ..define('/',
          handler: counterHandler,
          transitionType: TransitionType.fadeIn,
          transitionDuration: const Duration(milliseconds: 200))
      // Stateful Routes
      ..define('/stateful',
          handler: counterHandler,
          transitionType: TransitionType.fadeIn,
          transitionDuration: const Duration(milliseconds: 200))
      ..define('/stateful/:base',
          handler: counterHandler,
          transitionType: TransitionType.fadeIn,
          transitionDuration: const Duration(milliseconds: 200))
      // Provider Routes
      ..define('/provider',
          handler: counterProviderHandler,
          transitionType: TransitionType.fadeIn,
          transitionDuration: const Duration(milliseconds: 200))
      ..define('/dashboard/users/:userid/:roleid',
          handler: dashboardUserHandler,
          transitionType: TransitionType.fadeIn,
          transitionDuration: const Duration(milliseconds: 200))
      // 404 - Page Not Found
      ..notFoundHandler = pageNotFound;
    ;
    /**
     * /stateful
     * /provider
     */
  }
}

import 'package:flutter/material.dart';

import '../../features/landing_page/landing_page.dart';
import '../../features/project_details/presentation/project_details_page.dart';

// implement or extend custom navi goto(target,targetId)

/// Global Context of App
BuildContext? get currentContext => AppNavigator.navigatorState.currentContext;

class AppRoutes {
  static const String home = '/';
  static const String projectDetails = '/project_details';
}

class AppNavigator {
  static final GlobalKey<NavigatorState> navigatorState =
      GlobalKey<NavigatorState>();

  static NavigatorState? get currentState => navigatorState.currentState;

  Route? generateRoute(RouteSettings settings) {
    // final Object? argument = settings.arguments;
    switch (settings.name) {
      // examples
      case AppRoutes.projectDetails:
        return _gotoScreen(const ProjectDetailsPage());

      default:
        return _gotoScreen(const LandingPage());
    }
  }

  MaterialPageRoute<dynamic> _gotoScreen(Widget screen) =>
      MaterialPageRoute(builder: (_) => screen);
}

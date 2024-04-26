import 'package:flutter/material.dart';

import '../portfolio_constants.dart';
import '../madpoly.dart';

// implement or extend custom navi goto(target,targetId)

/// Global Context of App
BuildContext? get currentContext =>
    PortfolioNavigator.navigatorState.currentContext;

abstract class PortfolioNavigator {
  static final GlobalKey<NavigatorState> navigatorState =
      GlobalKey<NavigatorState>();
  static final RouteObserver<PageRoute> routeObserver =
      RouteObserver<PageRoute>();

  static PageRouteBuilder<dynamic> slideNavigation({
    required Widget screen,
    bool hasAnimation = false,
    Object? arguments,
  }) {
    return hasAnimation
        ? PageRouteBuilder(
            pageBuilder: (_, animation, secondaryAnimation) => screen,
            transitionDuration: const Duration(milliseconds: 500),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var tween = Tween(
                begin: PortfolioConstants.isCurrentLocaleArabic()
                    ? const Offset(-1.0, 0.0)
                    : const Offset(1.0, 0.0),
                end: Offset.zero,
              );

              var offsetAnimation = animation.drive(tween);
              return SlideTransition(
                position: offsetAnimation,
                child: child,
              );
            },
            settings: RouteSettings(
              arguments: arguments,
            ),
          )
        : PageRouteBuilder(
            pageBuilder: (_, animation, secondaryAnimation) => screen,
            settings: RouteSettings(
              arguments: arguments,
            ),
          );
  }

  static Route<dynamic> onCreateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case PortfolioRoutes.signInScreen:
      //   return slideNavigation(
      //       screen: const SignInScreen(), arguments: settings.arguments);

      default:
        {
          Madpoly.print(
            'going to auth screen',
            tag: 'portfolio_navi > default',
            developer: "Ziad",
          );
          return slideNavigation(
              screen: const Scaffold(
            body: Text('No Screen Found'),
          ));
        }
    }
  }

  static void pop({dynamic result}) {
    if (navigatorState.currentState!.canPop()) {
      navigatorState.currentState!.pop(result);
    }
  }

  // track navigation of user
  static push(
    String routeName, {
    arguments,
    bool replace = false,
    bool clean = false,
  }) {
    if (clean) {
      return navigatorState.currentState!.pushNamedAndRemoveUntil(
        routeName,
        (_) => false,
        arguments: arguments,
      );
    } else if (replace) {
      return navigatorState.currentState!
          .pushReplacementNamed(routeName, arguments: arguments);
    } else {
      return navigatorState.currentState!
          .pushNamed(routeName, arguments: arguments);
    }
  }

  static void navigateToScreen(Widget screen,
      {bool replace = false, bool hasAnimation = true}) {
    if (replace) {
      navigatorState.currentState!.pushReplacement(
          slideNavigation(screen: screen, hasAnimation: hasAnimation));
    } else {
      navigatorState.currentState!
          .push(slideNavigation(screen: screen, hasAnimation: hasAnimation));
    }
  }
}

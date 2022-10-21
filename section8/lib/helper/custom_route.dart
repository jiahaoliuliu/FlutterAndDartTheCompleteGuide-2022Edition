import 'package:flutter/material.dart';

// For single routes
class CustomRoute<T> extends MaterialPageRoute<T> {
  CustomRoute({WidgetBuilder builder, RouteSettings settings})
      : super(
          builder: builder,
          settings: settings,
        );

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    // if the first screen, do not animate
    if (settings.name == "/") {
      return child;
    }
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}

// For all the routes
class CustomPageTransitionBuilder extends PageTransitionsBuilder {
  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    // if the first screen, do not animate
    if (route.settings.name == "/") {
      return child;
    }
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}

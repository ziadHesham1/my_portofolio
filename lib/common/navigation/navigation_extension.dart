import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  /// push named
  Future<T?> pushNamed<T>(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed<T>(routeName, arguments: arguments);
  }

  /// push replacement named
  Future<T?> pushReplacementNamed<T, TO>(String routeName,
      {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed<T, TO>(routeName, arguments: arguments);
  }

  /// push named and remove until
  Future<T?> pushNamedAndRemoveUntil<T>(String routeName,
      {required RoutePredicate predicate, Object? arguments}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil<T>(routeName, predicate, arguments: arguments);
  }

  /// pop
  void pop<T>([T? result]) {
    Navigator.of(this).pop<T>(result);
  }
}

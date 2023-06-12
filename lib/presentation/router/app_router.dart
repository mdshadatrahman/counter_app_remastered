import 'package:counter_remastered/presentation/screens/counter_screen/counter_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const String counter = 'counter';
  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case counter:
        return MaterialPageRoute(builder: (_) => const CounterScreen());
      default:
        throw ErrorDescription('Route Not Found');
    }
  }
}

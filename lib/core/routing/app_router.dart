import 'package:flutter/material.dart';
import '../../features/login/ui/login_screen.dart';
import '../../features/onboarding/on_boarding_screen.dart';
import 'routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //use this later
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(body: Center(child: Text('No Route defined  for ${settings.name}'))));
    }
  }
}

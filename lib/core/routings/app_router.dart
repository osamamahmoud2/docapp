import 'package:docapp/Features/on_Boarding/presentation/view/views/on_boardingScreen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route genertRouter(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) {
          return const Placeholder();
        });
      case '/onboardingscreen':
        return MaterialPageRoute(
          builder: (_) {
            return const OnBoardingScreen();
          },
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Center(
            child: Text("there is no route here"),
          ),
        );
    }
  }
}

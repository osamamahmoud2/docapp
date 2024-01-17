import 'package:docapp/Features/on_Boarding/presentation/view/views/on_boardingScreen.dart';
import 'package:docapp/core/routings/routes.dart';
import 'package:flutter/material.dart';


class AppRouter {
  Route generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) {
          return const OnBoardingScreen();
        });
      default:
        return MaterialPageRoute(
          builder: (context) => const Center(
            child: Text("there is no route here"),
          ),
        );
    }
  }
}

import 'package:docapp/Features/Home/presentation/views/view/homeScreen.dart';
import 'package:docapp/Features/login/presentation/controller/cubit/login_cubit.dart';
import 'package:docapp/Features/login/presentation/view/Views/Login_screen.dart';
import 'package:docapp/Features/on_Boarding/presentation/view/views/on_boardingScreen.dart';
import 'package:docapp/core/networking/api_service.dart';
import 'package:docapp/core/routings/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) {
          return const HomeScreen();
        });
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) {
          return const OnBoardingScreen();
        });
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) {
          return BlocProvider(
            create: (context) => LoginCubit(Apiservice()),
            child: const LoginScreen(),
          );
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

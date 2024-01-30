import 'package:docapp/Features/Home/presentation/views/view/homeScreen.dart';
import 'package:docapp/Features/login/data/Repos/login_repo_impl.dart';
import 'package:docapp/Features/login/presentation/controller/cubit/login_cubit.dart';
import 'package:docapp/Features/login/presentation/view/Views/Login_screen.dart';
import 'package:docapp/Features/on_Boarding/presentation/view/views/on_boardingScreen.dart';
import 'package:docapp/Features/sign_Up.dart/data/Repos/sign_up_Repo_Impl.dart';
import 'package:docapp/Features/sign_Up.dart/presentation/controller/cubit/sign_up_cubit.dart';
import 'package:docapp/Features/sign_Up.dart/presentation/view/views/sign_Up_Screen.dart';
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
      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) {
          return BlocProvider(
            create: (context) =>
                SignUpCubit(SignUpRepoImpl(apiservice: Apiservice())),
            child: const SignUpScreen(),
          );
        });
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) {
          return BlocProvider(
            create: (context) =>
                LoginCubit(LoginRepoImpl(apiservice: Apiservice())),
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

import 'package:docapp/Features/login/presentation/controller/cubit/login_cubit.dart';
import 'package:docapp/Features/login/presentation/view/widgets/text_forget_password.dart';
import 'package:docapp/Features/login/presentation/view/widgets/text_terms_andConditions.dart';
import 'package:docapp/core/helpers/spaces.dart';
import 'package:docapp/core/routings/routes.dart';
import 'package:docapp/core/themings/colors.dart';
import 'package:docapp/core/themings/styles.dart';
import 'package:docapp/core/widgets/app_text_from_feild.dart';
import 'package:docapp/core/widgets/custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<LoginScreen> {
  bool obscureText = true;
  GlobalKey<FormState> formkey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          Navigator.pushNamed(context, Routes.homeScreen);
        } else if (state is LoginFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errMag),
            ),
          );
        }
      },
      builder: (context, state) {
        final cubit = BlocProvider.of<LoginCubit>(context);
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Back",
                        style: Fontstyles.font24PrimartColor700weight,
                      ),
                      verticalspace(8),
                      Text(
                          "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                          style: Fontstyles.font15grey400weight),
                      verticalspace(36),
                      Form(
                        key: formkey,
                        child: Column(children: [
                          AppTextFromField(
                            controller: emailController,
                            hintText: 'Email',
                          ),
                          verticalspace(16),
                          AppTextFromField(
                            controller: passwordController,
                            hintText: "password",
                            obscureText: obscureText,
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  obscureText = !obscureText;
                                });
                              },
                              child: Icon(
                                  color: ColorsManger.primaryColor,
                                  obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                            ),
                          ),
                          verticalspace(25),
                          Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: Text(
                              "Forget password",
                              style: Fontstyles.font12primaryColor400weight,
                            ),
                          ),
                          verticalspace(41),
                          state is LoginLoading
                              ? Center(
                                  child: LoadingAnimationWidget.twistingDots(
                                    leftDotColor: ColorsManger.grey,
                                    rightDotColor: ColorsManger.primaryColor,
                                    size: 26,
                                  ),
                                )
                              : CustomButton(
                                  text: "Login",
                                  onPressed: () {
                                    if (formkey.currentState!.validate()) {
                                      cubit.doLogin(emailController.text,
                                          passwordController.text);
                                    }
                                  }),
                          verticalspace(32),
                          const TextTermsAndCondition(),
                          verticalspace(50),
                          const TextForgetPassword()
                        ]),
                      ),
                    ]),
              ),
            ),
          ),
        );
      },
    );
  }
}

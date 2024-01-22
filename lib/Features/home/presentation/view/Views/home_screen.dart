import 'package:docapp/Features/home/presentation/view/widgets/text_forget_password.dart';
import 'package:docapp/Features/home/presentation/view/widgets/text_terms_andConditions.dart';
import 'package:docapp/core/helpers/spaces.dart';
import 'package:docapp/core/themings/colors.dart';
import 'package:docapp/core/themings/styles.dart';
import 'package:docapp/core/widgets/app_text_from_feild.dart';
import 'package:docapp/core/widgets/custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                child: Column(children: [
                  const AppTextFromField(
                    hintText: 'Email',
                  ),
                  verticalspace(16),
                  AppTextFromField(
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
                  CustomButton(text: "Login", onPressed: () {}),
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
  }
}

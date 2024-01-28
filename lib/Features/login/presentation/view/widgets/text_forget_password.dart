import 'package:docapp/core/routings/routes.dart';
import 'package:docapp/core/themings/colors.dart';
import 'package:docapp/core/themings/styles.dart';
import 'package:flutter/material.dart';
import 'package:docapp/generated/l10n.dart';

class TextForgetPassword extends StatelessWidget {
  const TextForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(S.of(context).Donothaveanaccountyet,
            style: Fontstyles.font11clamgrey400weight.copyWith(
              color: ColorsManger.darkblue,
            )),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(Routes.signUpScreen);
          },
          child: Text(S.of(context).SignUp,
              style: Fontstyles.font11clamgrey400weight.copyWith(
                  color: ColorsManger.primaryColor,
                  fontWeight: FontWeight.w500)),
        )
      ],
    );
  }
}

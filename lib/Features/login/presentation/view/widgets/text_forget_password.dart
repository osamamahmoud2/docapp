import 'package:docapp/core/themings/colors.dart';
import 'package:docapp/core/themings/styles.dart';
import 'package:flutter/material.dart';

class TextForgetPassword extends StatelessWidget {
  const TextForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
              text: 'Already have an account yet?',
              style: Fontstyles.font11clamgrey400weight.copyWith(
                color: ColorsManger.darkblue,
              )),
          TextSpan(
              text: ' Sign Up',
              style: Fontstyles.font11clamgrey400weight.copyWith(
                  color: ColorsManger.primaryColor,
                  fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}

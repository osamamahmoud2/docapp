import 'package:docapp/core/themings/colors.dart';
import 'package:docapp/core/themings/styles.dart';
import 'package:flutter/material.dart';

class TextTermsAndCondition extends StatelessWidget {
  const TextTermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: 'By logging, you agree to our',
            style: Fontstyles.font11clamgrey400weight),
        TextSpan(
            text: ' Terms & Conditions',
            style: Fontstyles.font11clamgrey400weight.copyWith(
                color: ColorsManger.darkblue,
                fontSize: 12,
                fontWeight: FontWeight.w600)),
        TextSpan(
          text: ' and ',
          style: Fontstyles.font11clamgrey400weight,
        ),
        TextSpan(
            text: 'PrivacyPolicy.',
            style: Fontstyles.font11clamgrey400weight.copyWith(
                color: ColorsManger.darkblue,
                fontSize: 12,
                height: 2,
                fontWeight: FontWeight.w600))
      ]),
      textAlign: TextAlign.center,
    );
  }
}

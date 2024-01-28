import 'package:docapp/core/themings/colors.dart';
import 'package:docapp/core/themings/styles.dart';
import 'package:flutter/material.dart';
import 'package:docapp/generated/l10n.dart';

class TextTermsAndCondition extends StatelessWidget {
  const TextTermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: S.of(context).Byloggingyouagreetoour,
            style: Fontstyles.font11clamgrey400weight),
        TextSpan(
            text: S.of(context).TermsConditions,
            style: Fontstyles.font11clamgrey400weight.copyWith(
                color: ColorsManger.darkblue,
                fontSize: 12,
                fontWeight: FontWeight.w600)),
        TextSpan(
          text: S.of(context).and,
          style: Fontstyles.font11clamgrey400weight,
        ),
        TextSpan(
            text: S.of(context).PrivacyPolicy,
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

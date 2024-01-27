import 'package:docapp/Features/on_Boarding/presentation/view/widgets/docImageAndtext.dart';
import 'package:docapp/Features/on_Boarding/presentation/view/widgets/docLogoAndName.dart';
import 'package:docapp/core/routings/routes.dart';
import 'package:docapp/core/themings/styles.dart';
import 'package:docapp/core/widgets/custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
        child: Column(
          children: [
            const DocLogoAndName(),
            SizedBox(
              height: 20.h,
            ),
            const DocImageAndText(),
            SizedBox(
              height: 18.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Text(
                'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                style: Fontstyles.font13grey400weight,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            CustomButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.loginScreen);
              },
              text: 'Get Started',
            )
          ],
        ),
      ),
    )));
  }
}

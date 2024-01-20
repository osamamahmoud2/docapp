import 'package:docapp/core/themings/colors.dart';
import 'package:docapp/core/themings/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPressed});
  final String text;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        minWidth: 311.w,
        height: 52.h,
        color: ColorsManger.primaryColor,
        onPressed: onPressed,
        child: Text(
          text,
          style: Fontstyles.font16white600weight,
        ));
  }
}

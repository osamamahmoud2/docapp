import 'package:docapp/core/themings/colors.dart';
import 'package:flutter/material.dart';

class AppTextFromField extends StatelessWidget {
  const AppTextFromField({
    super.key,
    this.enabledBorderradius,
    this.enabledcolor,
    this.focusedcolor,
    required this.hintText,
    this.hintStyle,
    this.focusedBorderradius,
    this.obscureText,
    this.suffixIcon,
    this.controller,
  });
  final Widget? suffixIcon;
  final BorderRadius? enabledBorderradius;
  final BorderRadius? focusedBorderradius;
  final Color? enabledcolor;
  final Color? focusedcolor;
  final String hintText;
  final TextStyle? hintStyle;
  final bool? obscureText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return '$hintText is Required"';
        }
      },
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: enabledBorderradius ?? BorderRadius.circular(16),
            borderSide: BorderSide(
              color: enabledcolor ?? ColorsManger.lightGray,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: focusedBorderradius ?? BorderRadius.circular(16),
            borderSide: BorderSide(
              color: focusedcolor ?? ColorsManger.primaryColor,
            ),
          ),
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          hintStyle:
              hintStyle ?? const TextStyle(color: ColorsManger.lightGray),
          suffixIcon: suffixIcon,
          fillColor: ColorsManger.morelightergrey,
          filled: true),
      obscureText: obscureText ?? false,
    );
  }
}

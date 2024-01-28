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
    this.validator,
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
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      validator: validator,
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
          border: OutlineInputBorder(
            borderRadius: enabledBorderradius ?? BorderRadius.circular(16),
            borderSide: BorderSide(
              color: enabledcolor ?? Colors.red,
            ),
          ),
          hintText: hintText,
          hintStyle:
              hintStyle ?? const TextStyle(color: ColorsManger.lightGray),
          suffixIcon: suffixIcon,
          fillColor: ColorsManger.morelightergrey,
          filled: true),
      obscureText: obscureText ?? false,
    );
  }
}

import 'package:docapp/core/themings/colors.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.twistingDots(
        leftDotColor: ColorsManger.grey,
        rightDotColor: ColorsManger.primaryColor,
        size: 26,
      ),
    );
  }
}

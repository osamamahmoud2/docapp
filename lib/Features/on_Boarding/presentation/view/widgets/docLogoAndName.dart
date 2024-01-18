import 'package:docapp/core/themings/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      SvgPicture.asset('Images/Assets/Frame.svg'),
      SizedBox(width: 10.h),
      Text(
        "Docdoc",
        style: Fontstyles.font24blackblod700weight,
      )
    ]);
  }
}

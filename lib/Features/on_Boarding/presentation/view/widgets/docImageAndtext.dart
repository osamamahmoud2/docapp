import 'package:docapp/core/themings/styles.dart';
import 'package:docapp/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocImageAndText extends StatefulWidget {
  const DocImageAndText({super.key});

  @override
  State<DocImageAndText> createState() => _DocImageAndTextState();
}

class _DocImageAndTextState extends State<DocImageAndText> {
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('Images/Assets/Group.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [Colors.white, Colors.white.withOpacity(0.0)],
            ),
          ),
          child: Image.asset('Images/Assets/Doctor.png'),
        ),
        Positioned(
          bottom: 10.h,
          right: 30.w,
          left: 30.w,
          child: Text(
            S.current.BestDoctorAppointment,
            style: Fontstyles.font32maincolor700weight,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

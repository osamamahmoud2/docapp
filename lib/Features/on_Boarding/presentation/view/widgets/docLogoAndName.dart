import 'package:docapp/core/helpers/spaces.dart';
import 'package:docapp/core/themings/styles.dart';
import 'package:docapp/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class DocLogoAndName extends StatefulWidget {
  const DocLogoAndName({super.key});

  @override
  State<DocLogoAndName> createState() => _DocLogoAndNameState();
}

String language = 'ar';

class _DocLogoAndNameState extends State<DocLogoAndName> {
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      SvgPicture.asset('Images/Assets/Frame.svg'),
      SizedBox(width: 10.h),
      Text(
        S.current.AppName,
        style: Fontstyles.font24blackblod700weight,
      )
    ]);
  }
}

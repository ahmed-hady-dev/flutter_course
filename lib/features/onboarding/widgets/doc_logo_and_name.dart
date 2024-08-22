import 'package:flutter/material.dart';
import 'package:flutter_course/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SvgPicture.asset('assets/svgs/docdoc_logo.svg'),
        Gap(10.w),
        Text('DocDoc', style: TextStyles.font24BlackBold)
      ],
    );
  }
}

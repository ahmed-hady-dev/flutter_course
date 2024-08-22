import 'package:flutter/material.dart';
import 'package:flutter_course/features/onboarding/widgets/doc_image_and_text.dart';
import 'package:flutter_course/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:flutter_course/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../core/theming/styles.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              bottom: 30.h,
            ),
            child: Column(
              children: [
                const DocLogoAndName(),
                Gap(30.h),
                const DocImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: <Widget>[
                      Text(
                          'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                          textAlign: TextAlign.center,
                          style: TextStyles.font13GrayRegular),
                      Gap(30.h),
                      const GetStartedButton(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_course/core/helpers/extensions.dart';
import 'package:flutter_course/core/routing/routes.dart';
import 'package:flutter_course/core/theming/colors.dart';
import '../../../core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.onBoardingScreen);
      },
      style: ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: WidgetStateProperty.all(ColorsManager.mainBlue),
          minimumSize: WidgetStateProperty.all<Size>(
            const Size(double.infinity, 52),
          ),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)))),
      child: Text('Get Started', style: TextStyles.font16WhiteSemiBold),
    );
  }
}

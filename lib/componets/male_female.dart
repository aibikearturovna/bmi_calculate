import 'package:bmi_calculate/utils/app_colors.dart';
import 'package:bmi_calculate/utils/app_styles.dart';
import 'package:flutter/material.dart';

class MaleFemale extends StatelessWidget {
  const MaleFemale({
    Key? key,
    required this.icon,
    required this.thisTouch,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final bool thisTouch;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
        size: 85,
        color: thisTouch ? AppColors.greyText : AppColors.whiteCl,
        ),
        Text(
          text,
        style:AppTextStyles.greyf22
        )
      ],
    );
  }
}

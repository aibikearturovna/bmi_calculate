import 'package:bmi_calculate/utils/app_colors.dart';
import 'package:bmi_calculate/utils/app_styles.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 65,
        color: AppColors.buttonCl,
        child:const Center(
          child: Text(
            'Calculate',
            style: AppTextStyles.whitef26
            ),
        ),
      ),
    );
  }
}
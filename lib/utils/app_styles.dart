import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  static const whitef26 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteCl
  );

  static const greyf22 =  TextStyle(
    color: AppColors.greyText,
    fontSize: 22
  );

  static const whitef50 = TextStyle(
      color: AppColors.whiteCl,
      fontSize: 50,
      fontWeight: FontWeight.w700
  );

  static const greyf15 = TextStyle(
   height: 5,
   color: AppColors.greyText,
   fontSize: 15,     
  );

  static const blackf22 = TextStyle(
   color: AppColors.result,
   fontSize: 22,   
  );
}
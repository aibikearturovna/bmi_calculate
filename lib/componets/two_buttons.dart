import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class AddRemove extends StatelessWidget {
  const AddRemove({
    Key? key, 
    required this.icons,
    required this.onPressed
  }) : super(key: key);
  final IconData icons;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.buttons,
      foregroundColor: AppColors.whiteCl,
      onPressed:onPressed,
      child: Icon(
        icons,size: 35,
      )
    );
  }
}
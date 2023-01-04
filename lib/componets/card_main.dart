
 
import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class Widgets extends StatelessWidget {
  const Widgets({
    Key? key, required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: AppColors.cardCl,
        child:child
      ),
    );
  }
}


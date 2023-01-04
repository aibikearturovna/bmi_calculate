import 'package:bmi_calculate/utils/app_colors.dart';
import 'package:bmi_calculate/utils/app_styles.dart';
import 'package:flutter/material.dart';

Future<void> showMyDialog ({
  required BuildContext context,
  required String text,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder:(BuildContext context){
      return AlertDialog(
       title: const Text (
          'Ваш результат.',style:TextStyle(color: AppColors.alert),
          textAlign: TextAlign.center,
        ),
       content: SingleChildScrollView(
        child:ListBody(
          children: <Widget> [
            Text(text,
            style:AppTextStyles.blackf22,)
          ]
          ) ,
        ),
        actions: <Widget> [
          TextButton(
          child:const Text('Попробовать снова.',
          style: TextStyle(color: AppColors.tr),),
          onPressed:() {
            Navigator.of(context).pop();
          },)
        ],
      );
     }
   );
  }

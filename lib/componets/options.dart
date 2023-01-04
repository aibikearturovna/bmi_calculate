import 'package:bmi_calculate/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'two_buttons.dart';

class Options extends StatelessWidget {
  const Options({
    Key? key, 
    required this.name, 
    required this.value,
    required this.remove,
    required this.add,
  }) : super(key: key);

  final String name;
  final int value;
  final void Function (int) remove;
  final void Function (int) add;

    
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
           Text(
           name,
           style:AppTextStyles.greyf22
        ),
      const  SizedBox(
         height: 6,
       ),
          Text(
           '$value',
           style:AppTextStyles.whitef50
        ),
       const SizedBox(
         height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           AddRemove(
             onPressed: () => remove(value-1),
             icons: Icons.remove,
           ),
          const SizedBox(
           width: 15,),
            AddRemove(
             onPressed: () => add(value+1),
             icons: Icons.add,
           ),
          ],
        )
      ],                     
    );
  }
}





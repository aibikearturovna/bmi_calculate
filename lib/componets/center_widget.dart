 import 'package:bmi_calculate/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import '../utils/app_colors.dart';
import '../utils/app_text.dart';

 class CenterCard extends StatelessWidget {
  const CenterCard({
    Key? key, 
    required this.currentSliderValue, 
    required this.onChanged
  }) : super(key: key);
   
   final double currentSliderValue;
   final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:[
       const Text(
     AppText.height,
     style: AppTextStyles.greyf22
    ),
    Row(
     mainAxisAlignment: MainAxisAlignment.center,
     crossAxisAlignment:CrossAxisAlignment.end,
     children: [
     Text(
       '${currentSliderValue.toInt()}',
       style: AppTextStyles.whitef50,
      ),
    const Text(
       AppText.cm,
      style:AppTextStyles.greyf15
     )
     ],
    ),
    Padding(
     padding: const EdgeInsets.symmetric(horizontal: 20.0),
     child: SizedBox(
    width: double.infinity,
     child: CupertinoSlider(
      max: 280,
      value: currentSliderValue,
      onChanged:onChanged,
      thumbColor: AppColors.buttonCl,
      activeColor: AppColors.whiteCl,
       ),
     ),
    )
      ],
    );
  }
}




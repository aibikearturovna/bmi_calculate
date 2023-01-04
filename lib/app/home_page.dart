
import 'dart:math';

import 'package:bmi_calculate/componets/alert.dart';
import 'package:bmi_calculate/componets/male_female.dart';
import 'package:bmi_calculate/componets/card_main.dart';
import 'package:bmi_calculate/utils/app_text.dart';
import 'package:flutter/material.dart';
import '../componets/buttons.dart';
import '../componets/center_widget.dart';
import '../componets/options.dart';

 
class BMI extends StatefulWidget {
  const BMI ({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  double height= 180;
  int weight = 60;
  int age = 28;
  bool thatTouch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:const Color(0xFF0A0E20),
      appBar: AppBar(
        title:const Text('BMI CALCULATOR'),
        centerTitle: true,
        backgroundColor:const Color(0xFF0A0E20),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Expanded(
              child: Row(
                children: [
                  Widgets(
                   child: InkWell(
                    onTap: () {
                      setState(() {
                        thatTouch = true;
                      });
                    },
                     child: MaleFemale(
                      icon: Icons.male,
                      text: AppText.male,
                      thisTouch: !thatTouch,),
                   ),
                  ),
                 const SizedBox(
                    width: 15,
                  ),
                  Widgets(
                   child: InkWell(
                    onTap: () {
                      setState(() {
                        thatTouch = false;
                      });
                    },
                     child: MaleFemale(
                      icon: Icons.female,
                      text: AppText.female,
                      thisTouch: thatTouch,
                     ),
                   ),
                  ),
                ],
              ),
            ),
           const  SizedBox(
              height: 5,
            ),
           Widgets(
             child: CenterCard(
              currentSliderValue: height,
              onChanged: (v) {
                setState(() {
                  height = v; 
                });
              }
             ),
           ),
           const  SizedBox(
              height: 5,
            ),
             Expanded(
              child: Row(
                children:[
                Widgets(
                  child: Options(
                    name:AppText.weight,
                    value: weight,
                    remove: (v) {
                      setState(() {
                        weight = v;
                      });
                    },
                    add: (v) {
                      setState(() {
                        weight = v;
                      });
                    },
                    ),
                ),
                 const SizedBox(
                    width: 15,),
                  Widgets (
                    child: Options(
                    name:AppText.age,
                    value:age,
                     remove: (v) {
                      setState(() {
                        age = v;
                      });
                     },
                    add: (v) {
                      setState(() {
                        age = v; 
                      });
                    },
                    ),
                  )
                ],
              ),
            ),
          ]
        ),
      ),
      bottomNavigationBar:Button(
        onTap: () {
          final equals = weight / pow(height/100, 2);
          if (equals < 18.5) {
            showMyDialog(
              context: context,
              text:'Вам следует набрать не много веса.');
          }
          else if (equals >= 18.5 && equals <= 24.9){
            showMyDialog(
              context: context,
              text:'Ваш вес в норме.');
          }
          else if (equals > 24.9){
            showMyDialog(
              context: context, 
              text:'Вам следует сбросить не много aboвеса.');
          }
          else {
            showMyDialog(
              context: context,
              text:'При подсчете произошла ошибка.Повторите попытку снова снова.');
          }
        },
      ),
    );
  }
}


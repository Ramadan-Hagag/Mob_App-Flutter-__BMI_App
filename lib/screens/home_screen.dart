

import 'dart:developer';
import 'dart:math';

import 'package:bmi_app/data/model/bmi_calculate.dart';
import 'package:bmi_app/widgets/age_height_widget.dart';
import 'package:bmi_app/widgets/app_bar_bmi.dart';
import 'package:bmi_app/widgets/gender_section_widget.dart';
import 'package:bmi_app/widgets/material_button_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool ismale = true;
  double height = 100;
  int weight = 60;
  int age = 26;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff24263B),
      appBar: AppBarBmi(),
      
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:16 , vertical: 10),
        child: Column(
          spacing: 10,
          children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 10,
              children: [
                GenderSectionWidget(
                  imgpath: "assets/icons/male.png", 
                  title: "Male",
                  isselected: ismale,
                  onTap: (){
                    ismale = true;
                    setState(() {});
                  },
                  ),
                GenderSectionWidget(
                  imgpath: "assets/icons/female.png", 
                  title: "Female",
                  isselected: !ismale,
                  onTap: (){
                    ismale = false;
                    setState(() {});
                  },
                  ),
              ],
        
          )
          ),
          Expanded(child: Container(
            decoration: BoxDecoration(
              color: Color(0xff333244),
              borderRadius: BorderRadius.circular(12) ,
            ),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Text("Height",style: TextStyle(
               fontSize: 20 ,
              fontWeight: FontWeight.w300 ,
              color: Color(0xffBBBC9E),
            ),
            ),
            RichText(
              text:TextSpan(
                text: height.round().toString(),style: TextStyle(
                  fontSize: 40 ,
                  fontWeight:FontWeight.bold ,
                  color: Color(0xffFFFFFF) ,
                ),
                children: [
                  TextSpan(
                    text: "cm",style: TextStyle(
                       fontSize: 15,
                       fontWeight:FontWeight.w300 ,

                    )
                  )
                ],
            )
            ),
            Slider(
              activeColor: Colors.red,
              inactiveColor: Color(0xffFFFFFF),
              value: height, 
              onChanged: (value){
                height =value;
                setState(() {});
              } ,
              min: 20,
              max: 200,
              )
           ],),
          )
          ),
          Expanded(child: Row(
            spacing: 10,
            children: [
              AgeHeightWidget(
                bn1: "bn1",
                bn2: "bn2",
                title: "Weight",
                 value: weight,
                 onPressedadd: (){
                  if( weight<250)
                  {
                  weight++;
                  setState(() {});
                  }
                 },
                 onPressedelete: (){
                  if(weight>5 )
                  {
                  weight--;
                  setState(() {});
                  }
                 },
                 ),
              AgeHeightWidget(
                bn1: "bn3",
                bn2: "bn4",
                title: "Age", 
                value: age,
                onPressedadd: (){
                  if(age<120){
                  age++;
                  setState(() {});
                  }
                },
                onPressedelete: (){
                  if(age>1){

                  age--;
                  setState(() {});
                  }
                },
                )
              
            ],
          )
          )
        
        ],),
      ),
      bottomNavigationBar: MaterialButtonWidget( 
        title:"Calculate" ,
        onPressed: (){
          Navigator.of(context).pushNamed("ResultScreen",arguments: BMICalculate(
            age1: age, 
            gender1: ismale?"male":"female",
             height1: height,
              weight1: weight));
        },
        
        
        ),

    );
  }
}





import 'dart:math';

import 'package:bmi_app/data/model/bmi_calculate.dart';
import 'package:bmi_app/screens/home_screen.dart';
import 'package:bmi_app/widgets/app_bar_bmi.dart';
import 'package:bmi_app/widgets/material_button_widget.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)!.settings.arguments as BMICalculate;  
    return Scaffold(
      
      backgroundColor: Color(0xff24263B),
      appBar: AppBarBmi(),
      body: Column(
        spacing: 10,
        children: [
          SizedBox(height: 30,),
          Text("Your Result  ",style: TextStyle(
            fontSize:40 ,
            fontWeight: FontWeight.bold,
            color: Color(0xffFFFFFF),
          ),),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                 color: Color(0xff333244),
                borderRadius: BorderRadius.circular(12) ,
              ),
              padding: EdgeInsets.symmetric(horizontal: 60),
              margin: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Text(args.resultBMI, style: TextStyle(
              fontSize:40 ,
              fontWeight: FontWeight.bold,
              color: args.categorycolor,
            ),),
            
             Text( args.calculateBMI.floor().toString(), style: TextStyle(
              fontSize:64,
              fontWeight: FontWeight.bold,
              color: Color(0xffFFFFFF),
            ),),
            
             Text(args.helthyadvice , style: TextStyle(
              fontSize:16 ,
              fontWeight: FontWeight.w400,
              color: Color(0xffBBBC9E),
              
            ),
            textAlign: TextAlign.center,
            ),
            
            
              ],),
            ),
          ),
        ],
      ),
bottomNavigationBar:  MaterialButtonWidget( 
        title:" Re-Calculate" ,
        onPressed: (){
          Navigator.of(context).pop();
         // log("hi ramadan");
        },
        
        
        ),

    );
  }
}



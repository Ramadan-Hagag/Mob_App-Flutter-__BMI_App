
 
import 'dart:math';

import 'package:flutter/material.dart';


//data class or model
class BMICalculate{
  String gender1;
  double height1;
  int weight1;
  int age1;
  BMICalculate({
    required this.age1,
    required this.gender1,
    required this.height1,
    required this.weight1,
  });

   double get calculateBMI => weight1 /pow(height1/100, 2);

   String get  resultBMI{
  if(calculateBMI < 18.5){
    return "underweight";
  }
  else if(calculateBMI < 25){
    return "normal";
  }
  else if(calculateBMI < 30){
    return "overweight";
  } 
  else{
    return "obse";
  } 

}
Color get categorycolor{
switch(resultBMI){
  case "underweight":
       return Colors.yellow;
  case "normal":
       return Colors.green;
  case "overweight":
       return Colors.deepPurple;
  case "obse":
       return Colors.red;
  default:
       return Colors.purple;
  
}

}

String get  helthyadvice{
switch(resultBMI){
  case "underweight":
       return " your weight is small , eat much ";
  case "normal":
       return " your weight is greet , good job ";
       
  case "overweight":
       return " your weight is big , eat few ";
       
  case "obse":
       return " your weight is very big  , you must have a diet ";
       
  default:
       return " your weight is over range , go to doctor now ! ";
       
  
}

}

}
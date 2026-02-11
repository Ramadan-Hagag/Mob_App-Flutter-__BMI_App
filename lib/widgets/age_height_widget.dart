
import 'package:flutter/material.dart';

class AgeHeightWidget extends StatelessWidget {
  AgeHeightWidget({super.key,required this.title,required this.value ,required this.bn1,required this.bn2 ,this.onPressedadd,this.onPressedelete });
  String title;
  int value;
  String bn1;
  String bn2;

  void Function()? onPressedadd;
  void Function()? onPressedelete;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        
      decoration: BoxDecoration(
      color: Color(0xff333244),
      borderRadius: BorderRadius.circular(12) , ),
       child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
         children: [
        Text(title,style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w300,
          color:Color(0xff888C9E) ,
        ),),
         Text(value.toString(),style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color:Color(0xffFFFFFF) ,
        ),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
            onPressed: onPressedelete,
            heroTag: bn1,
            shape: CircleBorder(),
            backgroundColor:Color(0xffBBBC9E) ,
            child: Icon(Icons.remove,size: 40,),
            ), 
          FloatingActionButton(
            onPressed: onPressedadd,
            heroTag: bn2,
            shape: CircleBorder(),
            backgroundColor:Color(0xffBBBC9E) ,
            child: Icon(Icons.add,size: 40,),
            ),  
            
         ])      
         ],
        ),
      
      ),
    );
  }
}


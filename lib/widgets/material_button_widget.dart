
import 'package:flutter/material.dart';

class MaterialButtonWidget extends StatelessWidget {
   MaterialButtonWidget({super.key,required this.title,this.onPressed});
   String title;
   void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed:onPressed,
      color: Color(0xffE83D67) ,
      height: 100,
    
      child: Text(title,style:  TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color:Color(0xffFFFFFF) ,
      )),
    
      );
  }
}
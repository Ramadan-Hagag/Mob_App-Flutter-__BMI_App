
import 'package:flutter/material.dart';

class GenderSectionWidget extends StatelessWidget {
   GenderSectionWidget({ super.key,required this.imgpath,required this.title , required this.isselected, required this.onTap});

  String imgpath;
  String title;
  bool isselected ;
  void Function()? onTap;

  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color:isselected?   Color(0xff24263B) :Color(0xff333244)  ,
            borderRadius: BorderRadius.circular(12),
          ),
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 19,
            children: [
              Image.asset(imgpath),
              Text(title,style: TextStyle(
                fontSize: 20 ,
                fontWeight: FontWeight.w400 ,
                color: Color(0xffBBBC9E),
              ),),
            ],
          ),
        ),
      ),
    );
  }
}


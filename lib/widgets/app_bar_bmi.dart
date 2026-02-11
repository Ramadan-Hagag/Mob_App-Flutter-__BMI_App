import 'package:flutter/material.dart';

class AppBarBmi extends StatelessWidget implements PreferredSizeWidget {
  const AppBarBmi({super.key, });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff24263B),
      centerTitle: true, //center title
      elevation: 10,     //to make shadow 
      shadowColor: Colors.black,
      title: Text( "BMI Calculator" , style: TextStyle(
        fontSize: 20,
        fontWeight:FontWeight.w500 ,
        color:Color(0xffFFFFFF) ,
      ),),
      iconTheme: IconThemeData(
        color:Color(0xffFFFFFF) ,
      ),
    );
  }
  
  @override
  
  Size get preferredSize => Size(double.infinity, 60);
}

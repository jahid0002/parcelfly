



import 'package:flutter/material.dart';
import 'package:parcelfly/const/color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hinttext, required this.controller, this.obscureText = false, this.icon}); 

  final String hinttext; 
  final TextEditingController controller; 
  final bool obscureText; 

  final Widget? icon;


  @override
  Widget build(BuildContext context) { 
  //   final size = MediaQuery.of(context).size;
    return TextFormField( 
      obscureText: obscureText,
         controller: controller, 
         decoration: InputDecoration(  
          isDense:true , 
         // isCollapsed: true,
          // ignore: prefer_if_null_operators, unnecessary_null_comparison, unnecessary_null_in_if_null_operators
          suffixIcon: icon?? null, 
    
          filled: true,  
          fillColor: AppColor.whiteColor,  
        contentPadding: EdgeInsets.only(top: 5, bottom: 5, left: 15), 
          hintText: hinttext, 
          hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColor.hintText), 
          border: OutlineInputBorder( 
            borderRadius: BorderRadius.circular(5),   
            borderSide: BorderSide(width: 1, color: AppColor.redColor), 
    
          ), 
          enabledBorder:  OutlineInputBorder( 
            borderRadius: BorderRadius.circular(5),   
            borderSide: BorderSide(width: 1, color: AppColor.blackColor.withOpacity(.1)), 
    
          ), 
          )
         
    );
  }
} 


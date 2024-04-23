


import 'package:flutter/material.dart';
import 'package:parcelfly/const/color.dart';

class AppTextTheme{


 static TextTheme textTheme = TextTheme(
   displayLarge: TextStyle(fontSize: 26, color: AppColor.blackColor, fontWeight: FontWeight.w600),  
      displayMedium:  TextStyle(fontSize: 16, color: AppColor.blackColor, fontWeight: FontWeight.w600),  
      displaySmall:  TextStyle(fontSize: 16, color: AppColor.blackColor, fontWeight: FontWeight.w400),  
    
      titleSmall:  TextStyle(fontSize: 14, color: AppColor.redColor, fontWeight: FontWeight.w400),  

      bodyLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.redColor ) ,
      bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.whiteColor )


 );


}
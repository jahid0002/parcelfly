


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parcelfly/const/color.dart';

class AppTextTheme{


 static TextTheme textTheme = TextTheme(
   displayLarge:  GoogleFonts.poppins(fontSize: 26, color: AppColor.blackColor, fontWeight: FontWeight.w600),  
      displayMedium:  GoogleFonts.poppins(fontSize: 16, color: AppColor.blackColor, fontWeight: FontWeight.w600),  
      displaySmall:   GoogleFonts.poppins(fontSize: 16, color: AppColor.blackColor, fontWeight: FontWeight.w400),  
    
      titleSmall:  GoogleFonts.poppins(fontSize: 14, color: AppColor.redColor, fontWeight: FontWeight.w400),  

      bodyLarge:  GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.redColor ) ,
      bodyMedium:  GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.whiteColor ),
       

      headlineMedium: GoogleFonts.inter( 
        fontSize: 16, 
        fontWeight: FontWeight.w400 

      ) 

 );


}
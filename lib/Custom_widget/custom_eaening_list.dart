


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parcelfly/const/color.dart';

class CustomEaringList extends StatelessWidget {
  const CustomEaringList({super.key, required this.svgImagePath, required this.type, required this.total}); 

 final String svgImagePath; 
 final String type; 
 final String total;

  @override
  Widget build(BuildContext context) { 
      final size = MediaQuery.of(context).size;
    return Column(
      children: [ 
           SvgPicture.asset(svgImagePath), 
          SizedBox(height: size.height * 0.01,),
          Text(type, style: Theme.of(context).textTheme.displaySmall, ), 
           SizedBox(height: size.height * 0.01,), 
             Text(total, style: Theme.of(context).textTheme.displayMedium!.copyWith(color: AppColor.textColor), ), 

      ],
    );
  }
}
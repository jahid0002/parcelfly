


import 'package:flutter/material.dart';
import 'package:parcelfly/const/color.dart';

class CustomEaringList extends StatelessWidget {
  const CustomEaringList({super.key, required this.symbol, required this.type, required this.total}); 

 final String symbol; 
 final String type; 
 final String total;

  @override
  Widget build(BuildContext context) { 
      final size = MediaQuery.of(context).size;
    return Column(
      children: [ 
        Container( 
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), 
            border: Border.all(width: 1, color: AppColor.blackColor.withOpacity(.5))
          ),
          
          child: Padding(
            padding: const EdgeInsets.only(top:5.0, bottom: 5, left: 8, right: 8),
            child: Text(symbol,style:  Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 20)),
          )),  
          SizedBox(height: size.height * 0.01,),
          Text(type, style: Theme.of(context).textTheme.displaySmall, ), 
           SizedBox(height: size.height * 0.01,), 
             Text(total, style: Theme.of(context).textTheme.displayMedium!.copyWith(color: AppColor.textColor), ), 

      ],
    );
  }
}




import 'package:flutter/material.dart';

class CustomOverviewcart extends StatelessWidget {
  const CustomOverviewcart({super.key, required this.backGroundColor, required this.borderColor, required this.imagePath, required this.parcelLoaction, required this.cuntity, required this.lineImagePath}); 

  final Color backGroundColor;
  final Color borderColor;  
  final String imagePath; 
  final String parcelLoaction; 
  final String cuntity; 
  final String lineImagePath;

  @override
  Widget build(BuildContext context) { 
    final size = MediaQuery.of(context).size;
    return Container( 
      height: size.height * 0.12, 
      width: size.width / 2.2, 

      decoration: BoxDecoration( 
        color: backGroundColor, 
        borderRadius: BorderRadius.circular(15), 
        border: Border.all(width: 2, color: borderColor), 

      ), 
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
          
         
         
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Image.asset(imagePath), 
                     Image.asset(lineImagePath),
                 ],
               ), 
               Text(parcelLoaction, style: Theme.of(context).textTheme.displaySmall,), 
               Text(cuntity, style: Theme.of(context).textTheme.displayMedium,)

            
             

          ],
        ),
      ),
    );
  }
}
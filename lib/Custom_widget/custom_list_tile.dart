import 'package:flutter/material.dart';
import 'package:parcelfly/const/color.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.imagePath,
      required this.productName,
      required this.productSize,
      required this.productPrice});

  final String imagePath;
  final String productName;
  final String productSize;
  final String productPrice;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Card( 
          shadowColor: AppColor.blackColor,
          elevation: 1,
          child: Container(
            
            height: size.height * 0.09,
            width: size.width, 
            decoration: BoxDecoration( 
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.circular(10),
            
              ), 
              
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Row(
                    children: [
                      Image.asset(imagePath), 
                      SizedBox(width: size.height* 0.01,),
                      Column(
                       
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productName,
                            style: Theme.of(context).textTheme.displayMedium,
                          ), 
                          SizedBox(height: size.width * 0.01,),
                          Text(
                            productSize,
                            style: Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 12),
                          ),
                           SizedBox(height: size.width * 0.01,),
                          Text(
                            productPrice,
                            style: Theme.of(context).textTheme.displayMedium!.copyWith(color: AppColor.textColor),
                          ),
                        ],
                      )
                    ],
                  ),
                ), 
               
              ],
            ),
          ),
        ), 
          SizedBox(height: size.height * 0.01,),
      ],
    );
  }
}

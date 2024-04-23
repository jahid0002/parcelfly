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
          elevation: 1,
          child: Container(
            color: AppColor.whiteColor,
            height: size.height * 0.09,
            width: size.width,
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(imagePath), 
                    SizedBox(width: size.height* 0.01,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productName,
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        Text(
                          productSize,
                          style: Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 12),
                        ),
                        Text(
                          productPrice,
                          style: Theme.of(context).textTheme.displayMedium!.copyWith(color: AppColor.textColor),
                        ),
                      ],
                    )
                  ],
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

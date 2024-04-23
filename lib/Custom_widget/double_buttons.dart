import 'package:flutter/material.dart';
import 'package:parcelfly/const/color.dart';

class Doublebuttons extends StatelessWidget {
  const Doublebuttons(
      {super.key,
      required this.firstButtonName,
      required this.secondButtonName,
      required this.firstbuttonTap,
      required this.secondButtonsTap});
  final String firstButtonName;
  final String secondButtonName;
  final VoidCallback firstbuttonTap;
  final VoidCallback secondButtonsTap;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Material( 
          clipBehavior: Clip.hardEdge,
          color: AppColor.redColor.withOpacity(.06),
          borderRadius: BorderRadius.circular(15),
          child: InkWell(
            onTap: firstbuttonTap,
            child: SizedBox(
              height: size.height * 0.05,
              width: size.width / 2.5,
              child: Center(
                  child: Text(
                firstButtonName,
                style: Theme.of(context).textTheme.bodyLarge,
              )),
            ),
          ),
        ),
        Material(
          color: AppColor.redColor,
          borderRadius: BorderRadius.circular(15), 
         clipBehavior: Clip.hardEdge,
          child: InkWell(
            onTap: secondButtonsTap,
            child: SizedBox(
              height: size.height * 0.05,
              width: size.width / 2.5,
              child: Center(
                  child: Text(
                secondButtonName,
                style: Theme.of(context).textTheme.bodyMedium,
              )),
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:parcelfly/const/color.dart';

class SingelButton extends StatelessWidget {
  const SingelButton({super.key, required this.buttonName, required this.buttonsTap});
final String buttonName; 
final VoidCallback buttonsTap;
  @override
  Widget build(BuildContext context) { 
    final size = MediaQuery.of(context).size;
    return  Material(
          color: AppColor.redColor,
          borderRadius: BorderRadius.circular(15), 
         clipBehavior: Clip.hardEdge,
          child: InkWell(
            onTap: buttonsTap,
            child: SizedBox(
              height: size.height * 0.055,
              width: size.width,
              child: Center(
                  child: Text(
                buttonName,
                style: Theme.of(context).textTheme.bodyMedium,
              )),
            ),
          ),
        );
  }
}
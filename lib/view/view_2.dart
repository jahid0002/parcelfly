import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parcelfly/Custom_widget/double_buttons.dart';
import 'package:parcelfly/const/color.dart';

class ViewTwo extends StatelessWidget {
  const ViewTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: PageView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('assets/images/percelMotor.png'),
                  SizedBox(
                    height: size.height * 0.07,
                  ), 
                  Center(
                    child: Container(height: size.height * 0.04,  
                    width: size.height * 0.06,
                    
                    alignment: Alignment.center,
                     child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, i){
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(radius: 3,
                          backgroundColor: index == i ? AppColor.redColor : AppColor.redColor.withOpacity(0.06), 
                                       
                          ), 
                          SizedBox(width: size.width * 0.02,)
                        ],
                      );
                      }),
                     
                     ),
                  ),
                  Text(
                    'Get started on',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(color: AppColor.blackColor),
                  ), 
                   Text(
                    'Ordering your Food',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(color: AppColor.blackColor),
                  ), 
                    SizedBox(
                    height: size.height * 0.017,
                  ), 
                   Text(
                    'Please create an account or sign in to your',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: AppColor.blackColor),
                  ), 
                   Text(
                    'existing account to start parcel delivery.',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: AppColor.blackColor),
                  ),  
                  SizedBox(
                    height: size.height * 0.07,
                  ), 
                  Doublebuttons(firstButtonName: 'Skip', secondButtonName: 'Continue', firstbuttonTap: (){
                  Get.toNamed('/LoginPage');
                  }, secondButtonsTap: (){})
                ],
              );
            }),
      ),
    );
  }
}

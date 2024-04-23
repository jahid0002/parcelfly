

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parcelfly/Custom_widget/custom_textfield.dart';
import 'package:parcelfly/Custom_widget/singal_buttons.dart';
import 'package:parcelfly/const/color.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) { 
    final size = MediaQuery.of(context).size; 
    final emaiController =TextEditingController();
    return Scaffold( 
      backgroundColor: AppColor.whiteColor,
       
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [ 
              SizedBox(height: size.height*0.19,),
              Image.asset('assets/images/logo_2.png'),   Text(
                        'Login to your account & start delivering',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(color: AppColor.blackColor.withOpacity(.8), fontSize: 16, fontWeight: FontWeight.w400),
                      ),  
               SizedBox(height: size.height*0.03,), 
               CustomTextField(hinttext: 'Enter Your Email', controller: emaiController), 
                SizedBox(height: size.height*0.01,),
                CustomTextField(hinttext: 'Enter Your Password', controller: emaiController ,
                obscureText: true, 
                icon: InkWell(
                  onTap: (){}, 
                  child: Icon(Icons.visibility_off_outlined, size: 20, color: AppColor.hintText,),
                ),
                ), 
            SizedBox(height: size.height*0.01,), 
            Row
            
            (
             mainAxisAlignment: MainAxisAlignment.spaceBetween, 
              children: [ 
              const SizedBox(), 
              Text('Forgot Password?', style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w600),)
            ],)
            ],
          ),
        ),
      ), 
      bottomNavigationBar: Container( 
        color: AppColor.whiteColor, 
        height: size.height * 0.12, 
        width: size.width, 
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              children: [ 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                    Icon(Icons.call, size: 16,color: AppColor.redColor,),
                    Text('Login with phone number', style: Theme.of(context).textTheme.displaySmall!.copyWith(color: AppColor.redColor),),
                   
                  ],
                ), 
                SizedBox(height: size.height*0.01,),
                 SingelButton(buttonName: 'Login', buttonsTap: (){
                  Get.toNamed('/NavView');
                 })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
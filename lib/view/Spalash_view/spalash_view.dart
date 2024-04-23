


import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parcelfly/const/color.dart';

class SpalashView extends StatefulWidget {
  const SpalashView({super.key});

  @override
  State<SpalashView> createState() => _SpalashViewState();
}

class _SpalashViewState extends State<SpalashView> { 
  @override
  void initState() {
    
    super.initState(); 
    Timer(const Duration(seconds: 3), () { 
      Get.offAllNamed('/ViewTwo');
    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: AppColor.backGroundColor,
      body: Center( child: Image.asset('assets/images/logo.png')
      ,),
    );
  }
}
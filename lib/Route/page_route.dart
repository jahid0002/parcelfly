import 'package:flutter/material.dart';
import 'package:parcelfly/view/Login_view/login_view.dart';
import 'package:parcelfly/view/Nav_view/nav_view.dart';
import 'package:parcelfly/view/Spalash_view/spalash_view.dart';
import 'package:parcelfly/view/view_2.dart';

class AppRoute{


 static Map<String, Widget Function(BuildContext)> routes ={
     '/': (context) => const SpalashView(),  
     '/ViewTwo' :(context) => const ViewTwo(), 
        '/LoginPage' : (context)=> const LoginPage(), 
        '/NavView' : (context)=> const NavView(), 
  };
}
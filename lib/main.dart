import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:parcelfly/Route/page_route.dart';
import 'package:parcelfly/const/color.dart';
import 'package:parcelfly/utils/text_theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit( 
      designSize: const Size(390, 844),
      builder:(context, child)=> GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'parcelfly',
        theme: ThemeData( 
          bottomAppBarTheme: BottomAppBarTheme(color: AppColor.whiteColor),
         textTheme: AppTextTheme.textTheme,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColor.redColor),
          useMaterial3: true,
        ),
        initialRoute: '/', 
        routes: AppRoute.routes,
      ),
    );
  }
}

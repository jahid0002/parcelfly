import 'package:flutter/material.dart';
import 'package:parcelfly/const/color.dart';
import 'package:parcelfly/view/Dashborad/dashborad.dart';

class NavView extends StatefulWidget {
  const NavView({super.key});

  @override
  State<NavView> createState() => _NavViewState();
}

class _NavViewState extends State<NavView> {
  List<Widget> view = [
    const Dashbroad(),
    const Center(
        child: Center(
            child: Text(
      'Payment',
    ))),
    const Center(child: Text('Parcel')),
    const Center(child: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold( 
      backgroundColor: AppColor.whiteColor,
      body: view[0],
      bottomNavigationBar: Container( 
        color: AppColor.whiteColor,
        height: size.height * 0.08, 
        width: size.width,
        child: BottomNavigationBar(
         
          useLegacyColorScheme: false,
          currentIndex: 0,
          backgroundColor: AppColor.whiteColor,
          elevation: 2, 

          onTap: (value) {},
          selectedItemColor: AppColor.redColor,
          unselectedItemColor: AppColor.blackColor,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          unselectedLabelStyle:
              TextStyle(fontSize: 12, color: AppColor.blackColor),
          showUnselectedLabels: true, 
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard_outlined), label: 'Dashborad'),
            BottomNavigationBarItem(
                icon: Icon(Icons.paid_outlined), label: 'Payment'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket_outlined), label: 'Parcel'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'Profile'),
          ],),
      )
    );
  }
}

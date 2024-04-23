

import 'package:flutter/material.dart';
import 'package:parcelfly/const/color.dart';
import 'package:parcelfly/view/Dashborad/dashborad.dart';

class NavView extends StatefulWidget {
  const NavView({super.key});

  @override
  State<NavView> createState() => _NavViewState();
}

class _NavViewState extends State<NavView> {
 List<Widget> view = [const Dashbroad(), Center(child: Center(child: const Text('Payment', ))),  Center(child: Text('Parcel')),  Center(child: Text('Profile')),];

   
     
  @override
  Widget build(BuildContext context) {
    return Scaffold( 

     body: view[0],
      bottomNavigationBar: BottomNavigationBar( 
       
        currentIndex: 0, 
        backgroundColor: AppColor.whiteColor, 
        elevation: 10, 
        onTap: (value) {
          
        },
          selectedItemColor: AppColor.redColor, 
          unselectedItemColor: AppColor.blackColor,
          selectedFontSize: 12, 
          unselectedFontSize: 12, 
          unselectedLabelStyle: TextStyle(fontSize: 12, color: AppColor.blackColor),
          showUnselectedLabels: true,
        
        items: const [  
        BottomNavigationBarItem(icon: Icon(Icons.dashboard_outlined) , label: 'Dashborad'), 
         BottomNavigationBarItem(icon: Icon(Icons.paid_outlined) , label: 'Payment'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket_outlined) , label: 'Parcel'),
           BottomNavigationBarItem(icon: Icon(Icons.person_outline) , label: 'Profile'),
      ],),
    );
  }
}
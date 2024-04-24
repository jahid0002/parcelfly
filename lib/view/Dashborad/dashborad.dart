import 'package:flutter/material.dart';
import 'package:parcelfly/Custom_widget/custom_eaening_list.dart';
import 'package:parcelfly/Custom_widget/custom_list_tile.dart';
import 'package:parcelfly/Custom_widget/custom_overview_cart.dart';
import 'package:parcelfly/const/color.dart';

class Dashbroad extends StatelessWidget {
  const Dashbroad({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: AppColor.backGroundColor,
                    child: SafeArea(
                        child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [ 
                          SizedBox(height: size.height * 0.01,),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundColor: AppColor.whiteColor,
                            ),
                            title: Text(
                              'Jenny wilson',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: AppColor.profileNameColor),
                            ),
                            subtitle: Text(
                              'Delivari Man',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.whiteColor),
                            ),
                            trailing: Icon(
                              Icons.notification_add_outlined,
                              size: 24,
                              color: AppColor.notificationIconColor,
                            ),
                          ),
                        ],
                      ),
                    )),
                  )),
              Expanded(
                flex: 3,
                child: Container(
                  color: AppColor.whiteColor,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: size.height * 0.10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Overview',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(color: AppColor.blackColor),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1,
                                      color: AppColor.blackColor.withOpacity(.05)),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Monthly',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall!
                                          .copyWith(
                                              color: AppColor.blackColor,
                                              fontSize: 12),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down_outlined,
                                      size: 14,
                                      color: AppColor.blackColor,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Row( 
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomOverviewcart( 
                              lineImagePath: 'assets/images/pandinLine.png',
                                backGroundColor:
                                    AppColor.parcelPanding.withOpacity(.06),
                                borderColor: AppColor.parcelPanding,
                                imagePath: 'assets/images/pendingParcel.png',
                                parcelLoaction: 'Pending Parcels',
                                cuntity: '505'), 
                                 CustomOverviewcart( 
                                  lineImagePath: 'assets/images/delivariLine.png',
                                backGroundColor:
                                    AppColor.delivaryParcelColor.withOpacity(.06),
                                borderColor: AppColor.delivaryParcelColor,
                                imagePath: 'assets/images/delivariParcel.png',
                                parcelLoaction: 'Delivered Parcels',
                                cuntity: '107'),
                          ],
                        ), 
                        SizedBox(
                          height: size.height * 0.01,
                        ), 
                          Row( 
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomOverviewcart( 
                              lineImagePath: 'assets/images/partialDelivariLine.png',
                                backGroundColor:
                                    AppColor.parcelPartialDelivaryColor.withOpacity(.06),
                                borderColor: AppColor.parcelPartialDelivaryColor,
                                imagePath: 'assets/images/partialDelivariParcel.png',
                                parcelLoaction: 'Partial Delivered Parcels',
                                cuntity: '05'), 
                                 CustomOverviewcart(
                                  lineImagePath: 'assets/images/returnLine.png',
                                backGroundColor:
                                    AppColor.returnParcelColor.withOpacity(.06),
                                borderColor: AppColor.returnParcelColor,
                                imagePath: 'assets/images/returnParcel.png',
                                parcelLoaction: 'Return Parcels',
                                cuntity: '107'),
                          ],
                        ), 
          
                           SizedBox(
                          height: size.height * 0.02,
                        ),  
          
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Panding Parcels',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(color: AppColor.blackColor),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1,
                                      color: AppColor.blackColor.withOpacity(.05)),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  'View All',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(
                                          color: AppColor.blackColor,
                                          fontSize: 12),
                                ),
                              ),
                            ),
                          ],
                        ), 
          
                        Expanded(
                          
                          child: ListView.builder (    
                            clipBehavior: Clip.hardEdge,
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index){ 
                            return CustomListTile(imagePath: 'assets/images/Rectangle 814225.png', productName: 'Exclusive Cotton Fiber Head Pillow', productSize: 'Size: 34”, Weight: 2.5K', productPrice: '\$1254.89');
                          }),
                        )
                      ], 
          
                      
                    ),
                  ),
                ),
              )
            ],
          ), 
          
     Positioned( 
      top:size.height * 0.17 , 
      right: size.height * 0.03, 
      left: size.height * 0.03, 
       child: Card( 
        elevation: 2,
         child: Container( 
               
              height: size.height * 0.15, 
              width: size.width /1.2,  
              decoration: BoxDecoration( 
                borderRadius: BorderRadius.circular(15), 
                color: AppColor.whiteColor,
              ), 
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column( 
                  crossAxisAlignment: CrossAxisAlignment.center, 
                  children: [ 
                    Text('Total Earning', style: Theme.of(context).textTheme.displayMedium!.copyWith(fontWeight: FontWeight.w700),), 
                    SizedBox(height: size.height * 0.02,), 
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     CustomEaringList(svgImagePath: 'assets/images/dollar-square.svg', type: 'Earning', total: '\$560'), 
                     
                    CustomEaringList(svgImagePath: 'assets/images/percentage-square.svg', type: 'Collection', total: '\$360'),
                    CustomEaringList(svgImagePath: 'assets/images/wallet.svg', type: 'Balance', total: '\$5060'),
                   ],)
                  ],
                ),
              ),
            ),
       ),
     )  
        ],
      ),
    );
  }
}

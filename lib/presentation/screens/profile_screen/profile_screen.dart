import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/util/app_colors/app_colors.dart';
import '../../../core/util/app_images/app_images.dart';
import '../../../core/util/clipper/clip.dart';
import '../../../core/util/component/screens_component.dart';
import '../hotel_details/hotel_details.dart';
import '../my_booking_screen/my_book_details.dart';
import '../my_booking_screen/my_booking_screen.dart';

class ProfileScreen extends StatelessWidget {
   ProfileScreen({Key? key}) : super(key: key);

  List<String> images=[
    AppImages.hotel1Image,
    AppImages.hotel2Image,
  ];
  List<String> titles=[
    "The Bentley",
    "Royal Lancaster",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Profile")),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(height: MediaQuery.of(context).size.height/2.2,),
                ClipPath(
                  clipper: CustomPath(),
                  child:Image.asset(AppImages.homeScreenImage,) ,
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 150.h,
                    width: 220.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage(AppImages.profileImage),
                      fit: BoxFit.cover)
                    ),
                  ),
                )

              ],
            ),
            SizedBox(height: 15.sp,),
            Center(
              child: Text("Micro Solution",style: Theme.of(context).textTheme.headline2!.copyWith(
                fontSize: 18.sp
              ),),
            ),
            SizedBox(height: 15.sp,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                         top: BorderSide(color: Colors.black),
                         right: BorderSide(color: Colors.black),
                         bottom: BorderSide(color: Colors.black),
                      )
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(12.r),
                      child: Column(
                        children: [
                          Text("Email"),
                          Text("ahmed@gmail.com",style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 14.sp
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                         top: BorderSide(color: Colors.black),
                         right: BorderSide(color: Colors.black),
                         bottom: BorderSide(color: Colors.black),
                      )
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(12.r),
                      child: Column(
                        children: [
                          Text("Phone No"),
                          Text("+01022945770",style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 14.sp
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.sp,),
            Padding(
              padding:  EdgeInsets.only(left: 25.r),
              child: Text("Favorite Hotel",style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold
              ),),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 25.r),
              child: Container(
                height: 120.h,

                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>InkWell(
                    onTap: (){
                      navigateTo(context, HotelDetails());
                    },
                    child: Image(
                      image: AssetImage(images[index]),
                      fit: BoxFit.cover,),
                  ),
                  separatorBuilder: (context, index) =>SizedBox(width: 10.w,),
                  itemCount: images.length,),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 25.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Booking",style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold
                  ),),
                 TextButton(onPressed: (){
                   navigateTo(context, MyBookingScreen());
                 }, child:  Text("See All",style: TextStyle(
                     fontSize: 14.sp,
                     fontWeight: FontWeight.bold
                 ),),)
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 25.r),
              child: Container(
                height: 120.h,

                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>InkWell(
                    onTap: (){
                      navigateTo(context, MyBookDetails());
                    },
                    child: Image(
                      image: AssetImage(images[index]),
                      fit: BoxFit.cover,),
                  ),
                  separatorBuilder: (context, index) =>SizedBox(width: 10.w,),
                  itemCount: images.length,),
              ),
            )
          ],
        ),
      ),
    );
  }
}

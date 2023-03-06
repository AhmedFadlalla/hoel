import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_book/core/util/app_images/app_images.dart';
import 'package:hotel_book/presentation/screens/my_booking_screen/my_book_details.dart';

import '../../../core/util/component/screens_component.dart';
import '../../../core/util/fonts/app_fonts/app_fonts.dart';
import '../../../core/util/widget/app_bar_component.dart';

class MyBookingScreen extends StatelessWidget {
   MyBookingScreen({Key? key}) : super(key: key);
  var searchController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarComponent(context: context,
        title:Text("My Booking",
          style: Theme.of(context).textTheme.headline2,),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_outlined)),
      ),
      body: Padding(
        padding:  EdgeInsets.all(12.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSearchWithShadow(
                controller: searchController,
                height: 36.h),
            SizedBox(height: 20.h,),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                  itemBuilder: (context,index)=>InkWell(
                    onTap: (){
                      navigateTo(context, MyBookDetails());
                    },
                    child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                    Image(image: AssetImage(AppImages.myBook1Image),fit: BoxFit.fitWidth,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 35.r),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 130.w,
                            height: 30.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      offset: Offset(3, 2.5),
                                      spreadRadius: 0.1
                                  )
                                ],
                                borderRadius: BorderRadius.circular(25.r)
                            ),
                            child: Center(
                              child: Text( "Order ID:1",style: Theme.of(context).textTheme.headline2!.copyWith(
                                  fontSize: 14.sp,
                                  fontFamily: AppFonts.poppinsMediumFont
                              ),),
                            ),
                          ),
                          Container(
                            width: 130.w,
                            height: 30.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      offset: Offset(3, 2.5),
                                      spreadRadius: 0.1
                                  )
                                ],
                                borderRadius: BorderRadius.circular(25.r)
                            ),
                            child: Center(
                              child: Text( "Date:2 jan-2023",style: Theme.of(context).textTheme.headline2!.copyWith(
                                  fontSize: 14.sp,
                                  fontFamily: AppFonts.poppinsMediumFont
                              ),),
                            ),
                          )
                        ],
                      ),
                    )
                ],
              ),
                  ), separatorBuilder: (context,index)=>SizedBox(height: 12.h,), itemCount: 5),
            )






          ],
        ),
      ),

    );
  }
}

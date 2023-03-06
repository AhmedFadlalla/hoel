import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_book/core/util/app_images/app_images.dart';
import 'package:hotel_book/core/util/component/screens_component.dart';
import 'package:hotel_book/presentation/screens/my_booking_screen/my_booking_screen.dart';

class RebookSuccessScreen extends StatelessWidget {
  const RebookSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppImages.doneImage,fit: BoxFit.cover,),
              SizedBox(
                height: 20.h,
              ),
              Text("Re-Booking",style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontSize: 25.sp
              ),),
              SizedBox(
                height: 20.h,
              ),
              Text("Thank you for using app we wish you a happy and comfortable holiday with family and relative",

                style: Theme.of(context).textTheme.caption,
                textAlign: TextAlign.center,),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15.r),
                child: defaultButton(context: context, function: (){
                  navigateTo(context, MyBookingScreen());
                }, text: "Processed"),
              )



            ],
          ),
        ),
      ),
    );
  }
}

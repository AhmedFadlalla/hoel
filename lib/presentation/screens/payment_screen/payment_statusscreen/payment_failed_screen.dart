import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_book/core/util/component/screens_component.dart';
import 'package:hotel_book/presentation/screens/home_screen/home_screen.dart';

class PaymentFailedScreen extends StatelessWidget {
  const PaymentFailedScreen({Key? key}) : super(key: key);

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
              Text("Oops!",style: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: 35.sp
              ),),
              SizedBox(
                height: 20.h,
              ),
              Text("Payment Fail",style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontSize: 25.sp
              ),),
              SizedBox(
                height: 15.h,
              ),
              Text("Add Something to make me happy",

                style: Theme.of(context).textTheme.caption!.copyWith(
                  fontSize: 20.sp
                ),
                textAlign: TextAlign.center,),
              SizedBox(
                height: 25.h,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.r),
                child: defaultButton(context: context, function: (){
                  navigateAndFinish(context, HomeScreen());
                }, text: "Back To Home"),
              )



            ],
          ),
        ),
      ),
    );
  }
}

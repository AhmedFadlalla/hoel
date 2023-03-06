import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_book/core/util/component/screens_component.dart';
import 'package:hotel_book/core/util/widget/app_bar_component.dart';
import 'package:hotel_book/presentation/screens/payment_screen/payment_statusscreen/payment_failed_screen.dart';
import 'package:hotel_book/presentation/screens/payment_screen/payment_statusscreen/payment_success_screen.dart';

import '../../../core/util/app_colors/app_colors.dart';
import '../../../core/util/widget/rating_bar_component.dart';

class ReviewPaymentDetails extends StatelessWidget {
  const ReviewPaymentDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarComponent(context: context,title: Center(child: Text("Credit Card"),)),
      body: Padding(
        padding:  EdgeInsets.all(15.r),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Contact info",
              style: Theme.of(context).textTheme.headline2,),
              SizedBox(height: 16.h,),
              Text("Full Name",style: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: 18.sp
              ),),
              SizedBox(height: 15.h,),
              Text("Ahmed Fadlallah",
                style: Theme.of(context).textTheme.headline2,),
              SizedBox(height: 16.h,),
              Text("Phone Number",style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 18.sp
              ),),
              SizedBox(height: 10.h,),
              Text("+201022945770",
                style: Theme.of(context).textTheme.headline2,),
              SizedBox(height: 16.h,),
              myDivider(),
              SizedBox(height: 16.h,),
              Text("Cardholder Name",style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 18.sp
              ),),
              SizedBox(height: 15.h,),
              Text("Ahmed Fadlallah",
                style: Theme.of(context).textTheme.headline2,),
              SizedBox(height: 15.h,),
              Text("Card Number",style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 18.sp
              ),),
              SizedBox(height: 15.h,),
              Text("123 456 789 102",
                style: Theme.of(context).textTheme.headline2,),
              SizedBox(height: 15.h,),
              Padding(
                padding:  EdgeInsets.only(right: 25.r),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("CVV",style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 18.sp
                        ),),
                        SizedBox(height: 15.h,),
                        Text("111",
                          style: Theme.of(context).textTheme.headline2,),

                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Expiration Date",style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 18.sp
                        ),),
                        SizedBox(height: 15.h,),
                        Text("2/22",
                          style: Theme.of(context).textTheme.headline2,),

                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h,),
              myDivider(),
              SizedBox(height: 16.h,),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Royal Lancaster",style: Theme.of(context).textTheme.headline2,),
                        SizedBox(height: 10.h,),
                        Text("Lancaster Terrace,",style: Theme.of(context).textTheme.caption,),
                        Text("Bayswater,London W2 sTY,UK",style: Theme.of(context).textTheme.caption,),
                        SizedBox(height: 10.h,),
                        RatingBarComponent(),

                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("22 Review",style: Theme.of(context).textTheme.headline2,),
                      SizedBox(height: 5.h,),
                      Text("Excellent",style: Theme.of(context).textTheme.caption!.copyWith(
                          fontSize: 18.sp
                      ),),


                    ],
                  ),

                ],
              ),
              SizedBox(height: 20.h,),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(25.r),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.shadowColor.withOpacity(0.2),
                          offset: Offset(0.0, 1.0),
                          blurRadius: 5),
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.r),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Check In",
                            style:
                            Theme.of(context).textTheme.headline3,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            "16-Oct-2022",
                            style:
                            Theme.of(context).textTheme.headline3,
                          ),
                        ],
                      ),
                      Container(
                        height: 80.h,
                        width: 1,
                        color: Colors.white,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Check Out",
                            style:
                            Theme.of(context).textTheme.headline3,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            "20-Oct-2022",
                            style:
                            Theme.of(context).textTheme.headline3,
                          ),
                        ],
                      ),
                      Container(
                        height: 80.h,
                        width: 1,
                        color: Colors.white,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Room Type",
                            style:
                            Theme.of(context).textTheme.headline3,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            "double Room",
                            style:
                            Theme.of(context).textTheme.headline3,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.r),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total Price",style: Theme.of(context).textTheme.headline2!.copyWith(
                        fontSize: 23.sp
                    ),),
                    Text("\$7,500",style: Theme.of(context).textTheme.headline2!.copyWith(
                        fontSize: 23.sp
                    )),
                  ],
                ),
              ),
              SizedBox(height: 25.h,),
              defaultButton(
                  context: context,
                  function: () {
                    navigateTo(context, PaymentSuccessScreen());
                    //navigateTo(context, PaymentFailedScreen());
                  },
                  text: "Continue")



            ],
          ),
        ),
      ),
    );
  }
}

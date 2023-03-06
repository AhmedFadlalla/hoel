import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_book/core/util/widget/app_bar_component.dart';
import 'package:hotel_book/presentation/screens/payment_screen/credit_card.dart';

import '../../../core/util/app_colors/app_colors.dart';
import '../../../core/util/component/screens_component.dart';
import '../../../core/util/widget/rating_bar_component.dart';

class PaymentScreen extends StatelessWidget {
   PaymentScreen({Key? key}) : super(key: key);

  var fullNameController=TextEditingController();
  var phoneController=TextEditingController();
  var emailController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarComponent(context: context,title: Center(child: Text("Payment"))),
      body: Padding(
        padding:  EdgeInsets.all(15.r),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              SizedBox(height: 20.h,),
              Text("Contact Info",style: Theme.of(context).textTheme.headline1,),
              SizedBox(height: 20.h,),
              Text("Full Name",style: Theme.of(context).textTheme.headline2,),
              buildLoginFormFieldWithoutBorder(controller: fullNameController),
              SizedBox(height: 20.h,),
              Text("Phone Number",style: Theme.of(context).textTheme.headline2,),
              buildLoginFormFieldWithoutBorder(controller: phoneController,
              keyboardType: TextInputType.phone),
              SizedBox(height: 20.h,),
              Text("Email Address",style: Theme.of(context).textTheme.headline2,),
              buildLoginFormFieldWithoutBorder(controller: emailController),
              SizedBox(height: 20.h,),
              Text("Select Payment Method",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontSize: 24.sp
                ),),
              SizedBox(height: 20.h,),
              InkWell(
                onTap: (){
                  navigateTo(context, CreditCardScreen());
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: AppColors.mainColor
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.r,vertical: 5.r),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Credit Card",style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.white
                        ),),
                        IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.white,))
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset:Offset(0, 1.0),
                      blurRadius: 5,
                      color: AppColors.shadowColor.withOpacity(0.2)
                    )
                  ]
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.r,vertical: 5.r),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Bank Transfer",style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black
                      ),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,))
                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

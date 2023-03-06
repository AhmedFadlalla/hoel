import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/util/app_images/app_images.dart';
import '../../../../../core/util/component/screens_component.dart';
import '../enter_verficiation_code/verfication_code_screen.dart';

class EnterPhoneNumberScreen extends StatelessWidget {
   EnterPhoneNumberScreen({Key? key}) : super(key: key);

   var phoneNumberController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(25.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Image(image: AssetImage(
                  AppImages.enterPhoneImage),
                fit: BoxFit.cover,),
              SizedBox(height: 20.h,),
              Text("Verify Your Number",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontFamily: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.sp
                  ).fontFamily
                ),),
              SizedBox(height: 20.h,),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 25.r),
                child: Text("Please enter your phone number to verified your account",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,),
              ),
              SizedBox(height: 40.h,),

              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [


                      Text("Phone Number"),
                      buildLoginFormFieldWithoutBorder(
                        keyboardType: TextInputType.phone,
                          controller: phoneNumberController),

                    ],
                  ),
                ),
              ),
              Center(child: defaultButton(
                  context: context, function: (){
                    navigateTo(context, VerificationCodeScreen());
              },
                  text: "Send"),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

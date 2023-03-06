import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

import '../../../../../core/util/app_colors/app_colors.dart';
import '../../../../../core/util/app_images/app_images.dart';
import '../../../../../core/util/component/screens_component.dart';
import '../../../home_screen/home_screen.dart';

class VerificationCodeScreen extends StatelessWidget {
   VerificationCodeScreen({Key? key}) : super(key: key);

  PinTheme defaultPinTheme = PinTheme(
    width: 54.w,
    height: 56.h,
    textStyle: TextStyle(
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
      color: AppColors.pinColor,
      borderRadius: BorderRadius.
      circular(35.r),
    ),
  );

  PinTheme focusedPinTheme = PinTheme(
    width: 54.w,
    height: 56.h,
    textStyle: TextStyle(
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
        color:AppColors.pinColor,

      borderRadius: BorderRadius.
      circular(35.r),
    ),
  );

  PinTheme submittedPinTheme = PinTheme(
    width: 54.w,
    height: 56.h,

    textStyle: TextStyle(
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
      color:AppColors.pinColor,

      borderRadius: BorderRadius.
      circular(35.r),
    ),
  );
   String otp = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundVerify,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(25.r),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text("Verification Code",
                    style: Theme.of(context).textTheme.bodyText1,),
                ),
                SizedBox(height: 25.h,),
                Center(
                  child: Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Container(
                        height: 243.h,
                        width: double.infinity,
                      ),
                      Image(
                        image: AssetImage(
                          AppImages.verifyPhoneBackground),
                        fit: BoxFit.cover,),
                      Positioned(
                        bottom: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
                                Container(
                                  height: 180.h,
                                  width: 128.w,
                                ),
                                Image(image: AssetImage(
                                    AppImages.verifyPhone1),
                                  fit: BoxFit.cover,),
                                Image(image: AssetImage(
                                    AppImages.verifyPhone2),
                                  fit: BoxFit.cover,),
                                Image(image: AssetImage(

                                    AppImages.verifyPhone3),
                                  fit: BoxFit.cover,),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Image(image: AssetImage(AppImages.verifyPhone6),
                                    fit: BoxFit.cover,),
                                ),

                              ],
                            ),
                            Image(image: AssetImage(AppImages.verifyPhone5))
                          ],
                        ),
                      ),



                    ],
                  )
                ),
                SizedBox(height: 20.h,),
                Text("Enter Your Verification Code",
                  style: Theme.of(context)
                      .textTheme.headline2!.copyWith(
                    fontSize: 22.sp,
                    fontFamily: GoogleFonts.poppins(
                        fontWeight: FontWeight.normal,
                      fontSize: 25
                    ).fontFamily
                  ),),
                SizedBox(height: 40.h,),
                Pinput(
                  length: 4,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: focusedPinTheme,
                  submittedPinTheme: submittedPinTheme,
                  showCursor: true,
                  onCompleted: (pin) {
                    debugPrint(pin);
                    otp = pin;
                    // _sendOTP(pin);
                  },
                ),
                SizedBox(height: 20.h,),
                TextButton(onPressed: (){},
                    child: Text("Resend(30)",style: TextStyle(
                      color: AppColors.mainColor
                    ),)),
                SizedBox(height: 20.h,),

                defaultButton(
                    context: context,
                    function: (){
                      navigateTo(context, HomeScreen());
                    },
                    text: "Verify"),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

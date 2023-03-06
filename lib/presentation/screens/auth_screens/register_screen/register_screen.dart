import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/app_colors/app_colors.dart';
import '../../../../core/util/app_images/app_images.dart';
import '../../../../core/util/component/screens_component.dart';
import '../login_screen/login_screen.dart';
import '../verfiy_phone_screen/enter_phone_number/enter_phone_number_screen.dart';

class RegisterScreen extends StatelessWidget {
   RegisterScreen({Key? key}) : super(key: key);
  var userNameController=TextEditingController();
  var passwordController=TextEditingController();
  var emailIdController=TextEditingController();
  var phoneNumberController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(25.r),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text("Create Account",
                    style: Theme.of(context).textTheme.bodyText1,),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(image: AssetImage(
                          AppImages.authImage),
                        fit: BoxFit.cover,),
                      SizedBox(height: 8.h,),
                      Text("User Name"),
                      buildLoginFormFieldWithoutBorder(controller: userNameController),
                      SizedBox(height: 15.h,),
                      Text("Password"),
                      buildLoginFormFieldWithoutBorder(controller: passwordController),
                      SizedBox(height: 15.h,),
                      Text("Email Id"),
                      buildLoginFormFieldWithoutBorder(
                          keyboardType: TextInputType.number,
                          controller: emailIdController),
                      SizedBox(height: 15.h,),
                      Text("Phone Number"),
                      buildLoginFormFieldWithoutBorder(
                          keyboardType: TextInputType.phone,
                          controller: phoneNumberController),
                    ],
                  ),
                ),
                Center(child: defaultButton(
                    context: context, function: (){
                      navigateTo(context, EnterPhoneNumberScreen());
                },
                    text: "Submit"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have ana account",style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.mainColor
                    ),),
                    TextButton(
                        onPressed: (){
                          navigateTo(context, LoginScreen());
                        },
                        child: Text("Sign In?",
                          style: TextStyle(
                              color: Colors.red
                          ),))

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

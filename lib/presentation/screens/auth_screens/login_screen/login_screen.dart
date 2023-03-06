import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_book/core/util/app_images/app_images.dart';
import 'package:hotel_book/core/util/component/screens_component.dart';
import 'package:hotel_book/presentation/screens/home_screen/home_screen.dart';

import '../../../../core/util/app_colors/app_colors.dart';
import '../register_screen/register_screen.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);

  var userNameController=TextEditingController();
  var passwordController=TextEditingController();
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
                SizedBox(height: 25.h,),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text("Welcome Back",
                  style: Theme.of(context).textTheme.bodyText1,),
                ),
                Center(
                  child: Image(image: AssetImage(
                      AppImages.authImage),
                    fit: BoxFit.cover,),
                ),
                SizedBox(height: 40.h,),
                Text("User Name"),
                buildLoginFormFieldWithoutBorder(controller: userNameController),
                SizedBox(height: 15.h,),
                Text("Password"),
                buildLoginFormFieldWithoutBorder(controller: passwordController),
                SizedBox(height: 40.h,),
                Center(child: defaultButton(
                    context: context, function: (){
                      navigateTo(context, HomeScreen());
                },
                    text: "Submit"),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don\'t have an account",style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.mainColor
                    ),),
                    TextButton(
                        onPressed: (){
                          navigateTo(context, RegisterScreen());
                        },
                        child: Text("Sign Up?",
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

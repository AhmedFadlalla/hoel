import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_book/presentation/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:hotel_book/presentation/screens/payment_screen/credit_card.dart';
// import 'package:hotel_booking/core/util/screen_util_component/screen_util_component.dart';
// import 'package:hotel_booking/presentation/screens/auth_screens/login_screen/login_screen.dart';
// import 'package:hotel_booking/presentation/screens/auth_screens/verfiy_phone_screen/enter_verficiation_code/verfication_code_screen.dart';
// import 'package:hotel_booking/presentation/screens/home_screen/home_screen.dart';
// import 'package:hotel_booking/presentation/screens/on_boarding_screen/on_boarding_screen.dart';
// import 'package:hotel_booking/presentation/screens/payment_screen/credit_card.dart';
// import 'package:hotel_booking/presentation/screens/popular_hotel_in_london_screen/popular_hotel_in_london_.dart';

import 'core/helper/cach_helper/cach_helper.dart';
import 'core/injector/injector.dart';
import 'core/util/app_colors/app_colors.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CachHelper.init();
  ServiceLocator().init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context,widget)=>MaterialApp(
      title: 'Flutter Demo',

      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        scaffoldBackgroundColor: AppColors.backgroundVerify,
        primarySwatch: Colors.blue,
        tabBarTheme: TabBarTheme(
            labelColor: AppColors.blueColor,
            labelStyle: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold
            )
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedIconTheme: IconThemeData(
                color: AppColors.backgroundColor
            ),
            unselectedIconTheme: IconThemeData(
                color: Colors.grey
            ),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: AppColors.backgroundColor,
            unselectedItemColor: Colors.grey
        ),
        fontFamily: GoogleFonts.poppins(
          fontWeight: FontWeight.w600
        ).fontFamily,
        iconTheme: IconThemeData(
            color: Colors.black
        ),
        appBarTheme: AppBarTheme(
          elevation: 0,
            color: Colors.white,
            titleTextStyle: TextStyle(
              fontSize: 20.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
            iconTheme: IconThemeData(
                color: Colors.black,
              size: 30
            )
        ),

        textTheme: TextTheme(
            labelMedium: TextStyle(
                fontSize: 47.sp,
                color: AppColors.textGreyColor,
                fontWeight: FontWeight.w500),

            headline1: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.mainColor),
            headline2: TextStyle(
                fontSize: 18.sp,
                color: Colors.black,
                height: 1.5,
                fontWeight: FontWeight.bold),
            headline3: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
                color: AppColors.textWhiteColor),
            headline4: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26.sp,
                color: AppColors.textWhiteColor),
            headline5: TextStyle(
                fontSize: 18.sp,
                color: Colors.white,
                height: 1.5,
                fontWeight: FontWeight.bold),
            bodyText1: TextStyle(
        color: AppColors.mainColor,
        fontSize: 20.sp
    ),
            caption: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.captionColor
            ),
            headlineLarge: TextStyle(
              fontSize: 20.sp,
              color: Colors.black,
            )
        ),
      ),
      home: OnBoardingScreen(),
    ));
  }
}



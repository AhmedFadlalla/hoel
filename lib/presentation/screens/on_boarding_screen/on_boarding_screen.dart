import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_book/core/util/component/screens_component.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/util/app_colors/app_colors.dart';
import '../../../core/util/app_images/app_images.dart';
import '../../../core/util/screen_util_component/screen_util_component.dart';
import '../welcome_screen/welcome_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController(keepPage: true);

  List<String> screens = [
    AppImages.onBoard1Image,
    AppImages.onBoard2Image,
  ];
  List<String> text = [
    "Booking Hotel Anytime",
    "Choose Favourite Hotel",
  ];
  List<String> description = [
    "You can book your favourite hotel any time and any place",
    "Thousands of hotels and villas world wide",
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Padding(
                padding: EdgeInsets.only(top: 80),
                child: Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height *0.68,
                  child: PageView.builder(
                      allowImplicitScrolling: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      pageSnapping: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: screens.length,
                      controller: controller,
                      onPageChanged: (index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      itemBuilder: (_, index) {
                        return Column(
                          children: [
                            Image(
                                image: AssetImage(
                                  screens[index],
                                ),
                                fit: BoxFit.fitWidth),
                            SizedBox(
                              height: 30.h,
                            ),
                            Text(
                              text[index],
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .bodyText1,
                            ),
                            SizedBox(
                              height: 18.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 44.r, right: 60.r),
                              child: Text(
                                description[index],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                  fontFamily: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500
                                  ).fontFamily
                                    ),
                                textAlign: TextAlign.center,
                              ),
                            ),



                          ],
                        );
                      }),
                ),
              ),
              SmoothPageIndicator(
                controller: controller,
                count: 2,
                effect: ScrollingDotsEffect(
                  radius: 10.r,
                  dotWidth: 12.w,
                  dotHeight: 12.w,
                  dotColor: Colors.black38,
                  activeDotColor: AppColors.mainColor,
                ),

              ),
              SizedBox(
                height: 28,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 25.r),
                child: defaultButton(context: context, function: (){
                  navigateTo(context, WelcomeScreen());
                }, text: "Skip"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_book/presentation/screens/auth_screens/register_screen/register_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/util/app_colors/app_colors.dart';
import '../../../core/util/app_images/app_images.dart';
import '../../../core/util/component/screens_component.dart';
import '../auth_screens/login_screen/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List<String> screens = [
    AppImages.welcome,
    AppImages.welcome,
    AppImages.welcome,
  ];
  final controller = CarouselController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 35),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.62,
                  child: CarouselSlider.builder(
                    carouselController: controller,
                    options:
                        CarouselOptions(
                            height: 400.h,
                            viewportFraction: 0.75,
                          autoPlay: true,
                          onPageChanged: (index,_){
                              setState(() {
                                currentIndex=index;
                              });
                          }
                        ),
                    itemCount: screens.length,

                    itemBuilder:
                        (BuildContext context, int index, int realIndex) =>
                            Image(
                                image: AssetImage(screens[index]),
                                fit: BoxFit.fitHeight),
                  ),
                ),
              ),
              DotsIndicator(
                dotsCount: screens.length,
                position: currentIndex.toDouble(),
                decorator: DotsDecorator(
                  size:  const Size.square(12),
                  activeColor: AppColors.mainColor,
                  activeSize:  Size(14.w, 12.h),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.
                    circular(15.r),
                    side: BorderSide(
                      color: AppColors.mainColor,

                    )
                  ),
                  activeShape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.
                      circular(15.r)),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 25.r),
                child: defaultButton(
                    context: context,
                    function: () {
                      navigateTo(context, LoginScreen());
                    },
                    text: "Sign In"),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 25.r),
                child: defaultButton(
                    context: context,
                    function: () {
                      navigateTo(context, RegisterScreen());
                    }, text: "Sign Up"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

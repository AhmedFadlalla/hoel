import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_book/core/util/widget/grid_view_second_component.dart';

import '../../../../../core/util/app_colors/app_colors.dart';
import '../../../../../core/util/app_images/app_images.dart';
import '../../../../../core/util/component/screens_component.dart';
import '../../../../../core/util/widget/rating_bar_component.dart';
import '../../../payment_screen/payment_screen.dart';
import '../select_room_component/grid_view_item_component.dart';

class DetailsAndRateUsComponent extends StatefulWidget {
  const DetailsAndRateUsComponent({Key? key}) : super(key: key);

  @override
  State<DetailsAndRateUsComponent> createState() =>
      _DetailsAndRateUsComponentState();
}

class _DetailsAndRateUsComponentState extends State<DetailsAndRateUsComponent> {
  bool isDetailsClicked = true;
  bool isRateUsClicked = false;

  List<String> images=[
    AppImages.wifiImage,
    AppImages.spaImage,
    AppImages.swimImage,
    AppImages.wifiImage,
    AppImages.spaImage,
    AppImages.swimImage,
    AppImages.spaImage,
    AppImages.swimImage,

  ];
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.r),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.60,
            ),
            if(isDetailsClicked)
              Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.56,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.r),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.shadowColor.withOpacity(0.2),
                          offset: Offset(0.0, 1.0),
                          blurRadius: 5),
                    ]),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.r, vertical: 10.r),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 19.h,
                      ),
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
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "Provide Facility",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                              fontSize: 15.sp,
                            ),
                      ),
                      SizedBox(
                        height: 11.h,
                      ),
                      MainGridViewComponent(
                        count: 4,
                        function: (index)=>Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(child: Image(image: AssetImage(images[index]))),
                            Text("Spa")
                          ],
                        ),
                        length: 8,
                        aspectRatio: 19 / 16,
                      ),
                      Spacer(),
                      defaultButton(
                          context: context, function: () {
                            navigateTo(context, PaymentScreen());
                      }, text: "Book Now")
                    ],
                  ),
                ),
              ),
            ),
            if(isRateUsClicked)
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.56,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.r),
                      boxShadow: [
                        BoxShadow(
                            color: AppColors.shadowColor.withOpacity(0.2),
                            offset: Offset(0.0, 1.0),
                            blurRadius: 5),
                      ]),
                  child: Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 15.r, vertical: 10.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 19.h,
                        ),
                        Row(
                          children: [
                            Container(
                              height:120.h,
                              width: 120.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18.r),
                                color: AppColors.mainColor
                              ),
                              child: Padding(
                                padding:  EdgeInsets.all(20.r),
                                child: Stack(
                                  children: [
                                    Container(
                                      height:200.h,
                                      width:200.w,
                                      child: CircularProgressIndicator(
                                        value: 0.75,
                                        strokeWidth: 5.5.w,

                                        backgroundColor: Colors.white,
                                        color: Color(0xffff643d),
                                        semanticsLabel: "75%",
                                        semanticsValue: "75%",
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                        child: Text("75%",style: TextStyle(
                                          fontSize: 25.sp,
                                          color: Colors.white
                                        ),)),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 15.w,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Text("75 / 100",style: Theme.of(context).textTheme.headline2!.copyWith(
                                  fontSize: 25.sp
                                ),),

                                Text("Rating Status",style: Theme.of(context).textTheme.headline2,),
                                Text("Totally 212 people reviewed",style: Theme.of(context).textTheme.headline2!.copyWith(
                                    fontSize: 13.sp
                                ),)
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0,1),
                                blurRadius: 5,
                                color: AppColors.shadowColor.withOpacity(0.2)
                              )
                            ]
                          ),
                          child: Padding(
                            padding:  EdgeInsets.all(12.r),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Excellent Services",style: Theme.of(context).textTheme.headline2,),
                                    Text("92%",style: Theme.of(context).textTheme.headline2,),
                                  ],
                                ),
                                Text("Very Excelent Services The house keeping staff was polite over all it was a febulous services",
                                  style: Theme.of(context).textTheme.caption,)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0,1),
                                blurRadius: 5,
                                color: AppColors.shadowColor.withOpacity(0.2)
                              )
                            ]
                          ),
                          child: Padding(
                            padding:  EdgeInsets.all(12.r),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Excellent Services",style: Theme.of(context).textTheme.headline2,),
                                    Text("100%",style: Theme.of(context).textTheme.headline2,),
                                  ],
                                ),
                                Text("Very Excelent Services The house keeping staff was polite over all it was a febulous services",
                                  style: Theme.of(context).textTheme.caption,)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            Positioned(
              top: 200.h,
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: AppColors.shadowColor.withOpacity(0.2),
                      offset: Offset(0.0, 1.0),
                      blurRadius: 5),
                ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        if (isDetailsClicked == false) {
                          setState(() {
                            isDetailsClicked = true;
                            isRateUsClicked = false;
                          });
                        }
                      },
                      child: Container(
                        height: 45.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            color: isDetailsClicked
                                ? AppColors.mainColor
                                : Color(0xffffffff),
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(25.r))),
                        child: Center(
                            child: Text(
                          "Detail",
                          style: TextStyle(
                              color: isDetailsClicked
                                  ? Colors.white
                                  : Colors.black),
                        )),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (isRateUsClicked == false) {
                          setState(() {
                            isDetailsClicked = false;
                            isRateUsClicked = true;
                          });
                        }
                      },
                      child: Container(
                        height: 45.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            color: isRateUsClicked
                                ? AppColors.mainColor
                                : Color(0xffffffff),
                            borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(25.r))),
                        child: Center(
                            child: Text(
                          "Rate Us",
                          style: TextStyle(
                              color: isRateUsClicked
                                  ? Colors.white
                                  : Colors.black),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

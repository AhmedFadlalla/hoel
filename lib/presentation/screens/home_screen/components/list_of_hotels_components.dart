import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_book/core/util/app_images/app_images.dart';
import 'package:hotel_book/core/util/component/screens_component.dart';
import 'package:hotel_book/core/util/fonts/app_fonts/app_fonts.dart';
import 'package:hotel_book/presentation/screens/hotel_details/hotel_details.dart';

import '../../../../core/util/app_colors/app_colors.dart';
import '../../popular_hotel_in_london_screen/popular_hotel_in_london_.dart';

class ListOfHotelsComponent extends StatelessWidget {
   ListOfHotelsComponent({Key? key}) : super(key: key);

  List<String> images=[
    AppImages.hotel1Image,
    AppImages.hotel2Image,
  ];
   List<String> titles=[
     "The Bentley",
     "Royal Lancaster",
   ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.r,bottom: 20.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Popular Hotel in London", style: Theme
                  .of(context)
                  .textTheme
                  .headline2,),
              Padding(
                padding:  EdgeInsets.only(right: 8.r),
                child: TextButton(
                  onPressed: (){
navigateTo(context, PopularHotelInLondonScreen());
                  }, child: Text("See All",style: TextStyle(
                    color: AppColors.mainColor
                )),),
              )
            ],
          ),

          Container(
            height: 165.h,

            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>InkWell(
                onTap: (){
                  navigateTo(context, HotelDetails());
                },
                child: Container(
                  height: 100.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        height:100.h ,

                      ),
                      Image(
                        height: 150.h,
                        image: AssetImage(images[index]),
                      fit: BoxFit.fitWidth,),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 150.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: AppColors.shadowColor.withOpacity(0.2),
                                    offset: Offset(0, 1),
                                    blurRadius: 0.1
                                )
                              ],
                            borderRadius: BorderRadius.circular(25.r)
                          ),
                          child: Center(
                            child: Text(titles[index],style: Theme.of(context).textTheme.headline2!.copyWith(
                              fontSize: 16.sp,
                              fontFamily: AppFonts.poppinsMediumFont
                            ),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              separatorBuilder: (context, index) =>SizedBox(width: 10.w,),
              itemCount: images.length,),
          )
        ],
      ),
    );
  }
}

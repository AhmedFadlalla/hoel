import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/util/app_colors/app_colors.dart';
import '../../../../../core/util/app_images/app_images.dart';
import '../../../../../core/util/component/screens_component.dart';
import '../../../../../core/util/widget/grid_view_second_component.dart';
import '../../../../../core/util/widget/rating_bar_component.dart';
import '../details_data_component.dart';
import 'grid_view_item_component.dart';
class SelectRoomContainer extends StatelessWidget {
  final CarouselController controller;
   SelectRoomContainer({Key? key,
   required this.controller}) : super(key: key);

  List<String> images=[
    AppImages.bedImage,
    AppImages.doubleRoomImage,
    AppImages.groupRoomImage,
    AppImages.familyRoomImage,
  ];
   List<String> text=[
     'Single Room',
     'Double Room',
     'Group Room',
     'Family Room',

   ];
  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.r),
        child: Container(
          height: MediaQuery.of(context).size.height*0.56,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25.r),
              boxShadow: [
                BoxShadow(
                    color: AppColors.shadowColor.withOpacity(0.2),
                    offset: Offset(0.0, 1.0),
                    blurRadius: 5
                ),
              ]
          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 15.r,vertical: 10.r),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DetailsDataComponent(),
                  SizedBox(height: 8.h,),
                  Center(
                    child: Text("Select Room",style: TextStyle(
                        fontSize: 18.sp
                    ),),
                  ),
                  SizedBox(height: 8.h,),
                  MainGridViewComponent(
                      function: (index) {
                        return GridViewItemComponent(
                          image: images[index], name: text[index],
                        );
                      },
                      length: 4,
                      aspectRatio: 16/5.8),
                  SizedBox(height: 12.h,),
                  defaultButton(context: context, function: (){
                    controller.animateToPage(2);
                  }, text: "Apply")


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

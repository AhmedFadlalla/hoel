//aboutUs screen
//training_course screen
//other services
//syndicate special offer


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildContainerWidgetItem({
  required context,
  required String image,
  required String title,
  required String details,
   double? imageSize,
  VoidCallback? onImageTapped,
})=>Container(
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.r),
      color: Colors.white),
  child: Padding(
    padding: EdgeInsets.all(10.r),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontSize: 20.sp),
              ),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.w),
                child: Container(
                  width: 225.w,
                  child: Text(
                    details,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(
                        fontSize: 15.sp,
                        fontWeight:
                        FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),
        ),
        imageSize==null?InkWell(
          onTap:onImageTapped,
          child: Image(
              fit: BoxFit.cover,
              image:
              AssetImage(image)),
        ):InkWell(
          onTap:onImageTapped,
          child: Image(
            height: imageSize.h,
              image:
              AssetImage(image)),
        ),
      ],
    ),
  ),
);
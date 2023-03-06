import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_colors/app_colors.dart';
import 'drop_down_menu.dart';

Future<dynamic> buildBottomSheet({

required context,
required List<Widget> columnList,
  required onApplyTap,

})=>showModalBottomSheet(context: context,
    backgroundColor: Colors.white,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(

      borderRadius: BorderRadius.only(
          topRight: Radius.circular(25.r),
          topLeft: Radius.circular(25.r)),
    ),
    builder: (context){
      return Padding(
        padding:  EdgeInsets.all(15.r),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon:  Icon(Icons.close,
                    color: Colors.black,size: 28,)),
                  Expanded(
                    child: Center(
                      child: Text("Search Filter",style: Theme.of(context).textTheme.headline1!.copyWith(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.h,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: columnList,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap:(){
                      Navigator.pop(context);
                    },
                    child: Container(
                      height:45.h,
                      width: 74.w,
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.blueColor),
                          borderRadius: BorderRadius.circular(15.r)
                      ),
                      child: Center(
                        child: Text("Clear",style: TextStyle(
                            color: AppColors.blueColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding:  EdgeInsets.all(25.r),
                      child: Container(
                          height: 45.h,
                          width:190.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                                color: AppColors.backgroundColor
                          ),
                          child: MaterialButton(
                            onPressed: onApplyTap,
                            child: Text("Apply Filter",style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold
                            ),),)),
                    ),
                  )

                ],
              )


            ],
          ),
        ),
      );
    });
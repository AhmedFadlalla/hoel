import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_book/core/util/component/screens_component.dart';
import 'package:hotel_book/presentation/screens/hotel_details/hotel_details.dart';

import '../../../../../core/util/fonts/app_fonts/app_fonts.dart';
import '../../../../../domain/entities/base_hotel_data/base_hotel_data.dart';
class GridViewItem extends StatelessWidget {
   final BaseHotelData hotel;
  const GridViewItem({Key? key,
  required this.hotel,
  required }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        navigateTo(context, HotelDetails());
      },
      child: Container(
        height: 50.h,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height:50.h ,
            ),
            Image(

              image: AssetImage(hotel.image),
              fit: BoxFit.fitHeight,),
            Positioned(
              bottom: 10,
              child: Container(
                width: 130.w,
                height: 40.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          offset: Offset(3, 2.5),
                          spreadRadius: 0.1
                      )
                    ],
                    borderRadius: BorderRadius.circular(25.r)
                ),
                child: Center(
                  child: Text( hotel.name,style: Theme.of(context).textTheme.headline2!.copyWith(
                      fontSize: 16.sp,
                      fontFamily: AppFonts.poppinsMediumFont
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

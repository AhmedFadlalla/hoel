import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_book/presentation/screens/popular_hotel_in_london_screen/component/grid_view_component/grid_view_item.dart';

import '../../../../../core/util/app_images/app_images.dart';
import '../../../../../core/util/fonts/app_fonts/app_fonts.dart';
import '../../../../../domain/entities/base_hotel_data/base_hotel_data.dart';
class GridViewComponent extends StatelessWidget {
   GridViewComponent({Key? key}) : super(key: key);

  List<BaseHotelData> hotels=[
    BaseHotelData(image: AppImages.fourSeasonImage, name: "Four Season"),
    BaseHotelData(image: AppImages.hotel3Image, name: "Bentley"),
    BaseHotelData(image: AppImages.hotel4Image, name: "Royal Lancaster"),
    BaseHotelData(image: AppImages.fourSeasonImage, name: "Four Season"),
    BaseHotelData(image: AppImages.hotel3Image, name: "Bentley"),
    BaseHotelData(image: AppImages.hotel4Image, name: "Royal Lancaster"),
    BaseHotelData(image: AppImages.fourSeasonImage, name: "Four Season"),
    BaseHotelData(image: AppImages.hotel3Image, name: "Bentley"),
    BaseHotelData(image: AppImages.hotel4Image, name: "Royal Lancaster"),
    BaseHotelData(image: AppImages.fourSeasonImage, name: "Four Season"),
    BaseHotelData(image: AppImages.hotel3Image, name: "Bentley"),
    BaseHotelData(image: AppImages.hotel4Image, name: "Royal Lancaster"),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 4.w,
        mainAxisSpacing: 8.h,
        childAspectRatio: 0.86,
        shrinkWrap: true,
        children: List.generate(hotels.length,
                (index) => GridViewItem(hotel: hotels[index])),),
    );
  }
}

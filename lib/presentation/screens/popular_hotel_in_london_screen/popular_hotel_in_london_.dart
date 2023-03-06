import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_book/core/util/component/screens_component.dart';

import '../../../core/util/app_images/app_images.dart';
import '../../../core/util/fonts/app_fonts/app_fonts.dart';
import '../../../core/util/widget/app_bar_component.dart';
import 'component/grid_view_component/grid_view_component.dart';

class PopularHotelInLondonScreen extends StatelessWidget {
   PopularHotelInLondonScreen({Key? key}) : super(key: key);

   var searchController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarComponent(context: context,
        title:Center(child: Text("Popular Hotel In London",
          style: Theme.of(context).textTheme.headline2,),),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_outlined)),
      ),
      body: Padding(
        padding:  EdgeInsets.all(12.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSearchWithShadow(
                controller: searchController,
                height: 50),
            SizedBox(height: 20.h,),
            GridViewComponent()




          ],
        ),
      ),

    );
  }
}

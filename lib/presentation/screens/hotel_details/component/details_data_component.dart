import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/widget/rating_bar_component.dart';
class DetailsDataComponent extends StatelessWidget {
  const DetailsDataComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Royal Lancaster",style: Theme.of(context).textTheme.headline2,),
              SizedBox(height: 10.h,),
              Text("Lancaster Terrace,",style: Theme.of(context).textTheme.caption,),
              Text("Bayswater,London W2 sTY,UK",style: Theme.of(context).textTheme.caption,),
              SizedBox(height: 10.h,),
              RatingBarComponent(),

            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("22 Review",style: Theme.of(context).textTheme.headline2,),
            SizedBox(height: 5.h,),
            Text("Excellent",style: Theme.of(context).textTheme.caption!.copyWith(
                fontSize: 18.sp
            ),),


          ],
        ),

      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/util/app_images/app_images.dart';
class GridViewItemComponent extends StatelessWidget {
  final String image;
  final String name;
  GridViewItemComponent({Key? key,
  required this.name,
  required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Image(image: AssetImage(
              image)),
        ),
        Text(name,style: TextStyle(
            fontSize: 10.sp
        ),)
      ],
    );
  }
}

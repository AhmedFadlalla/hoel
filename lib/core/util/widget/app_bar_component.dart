import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_book/core/util/component/screens_component.dart';

import '../../../presentation/screens/profile_screen/profile_screen.dart';
import '../app_colors/app_colors.dart';
import '../app_images/app_images.dart';

PreferredSizeWidget buildAppBarComponent({
  Widget? title,required context,
  List<Widget>? actions,
  Widget? leading
})=>AppBar(
  title: title,
  actions: [
    InkWell(
      onTap: (){
        navigateTo(context, ProfileScreen());
      },
      child: Image(
        image: AssetImage(
            AppImages.userImage),),
    )
  ],
  leading: leading,
);

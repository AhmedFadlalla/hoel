import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_book/presentation/screens/home_screen/components/stack/stack_Container.dart';

import '../../../../../core/util/app_images/app_images.dart';
import '../../../../../core/util/component/screens_component.dart';
import '../../../../../core/util/fonts/app_fonts/app_fonts.dart';
import '../../../../../core/util/widget/counter_widget.dart';
class StackComponent extends StatelessWidget {
   StackComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery
          .of(context)
          .size
          .height * 0.75,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery
                .of(context)
                .size
                .height * 0.75,
          ),
          Image(
            width: double.infinity,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.48,
            image: AssetImage(AppImages.homeScreenImage),
            fit: BoxFit.cover,),
          StackContainer()

        ],
      ),
    );
  }
}

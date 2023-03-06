import 'package:flutter/cupertino.dart';
import "package:flutter_screenutil/flutter_screenutil.dart";

class ScreenUtilComponent extends StatelessWidget {
   Widget startWidget;
   ScreenUtilComponent({super.key,required this.startWidget});

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,

      builder: ((BuildContext context,
          Widget? widget) => startWidget),
    );
  }
}

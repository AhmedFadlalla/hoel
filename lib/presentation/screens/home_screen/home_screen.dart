import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_book/core/util/widget/alert_dialog_component.dart';
import 'package:hotel_book/core/util/widget/app_bar_component.dart';
import 'package:hotel_book/core/util/widget/custom_alert.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../core/util/app_images/app_images.dart';
import '../../../core/util/component/screens_component.dart';
import '../../../core/util/fonts/app_fonts/app_fonts.dart';
import '../../../core/util/widget/counter_widget.dart';
import 'components/list_of_hotels_components.dart';
import 'components/stack/stack_component.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarComponent(context: context,
      title:Center(child: Text("Home"),),
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StackComponent(),
            SizedBox(height: 20.h,),
            ListOfHotelsComponent()
          ],
        ),
      ),
    );
  }
}

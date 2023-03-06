
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_colors/app_colors.dart';

class MainGridViewComponent extends StatelessWidget {
  final dynamic function;
  final double aspectRatio;
  int? count;
  final int length;
  MainGridViewComponent({Key? key,
  required this.function,
    required this.length,
    this.count,
  required this.aspectRatio}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   GridView.count(
        crossAxisCount: count??2,
        crossAxisSpacing: 15.w,
        mainAxisSpacing: 15.h,
        physics: const ScrollPhysics(),
        childAspectRatio: aspectRatio,
        shrinkWrap: true,
        children:  List.generate(length,function));
  }
  Widget buildItem({
    required context,
    required String backgroundImage,
    required String image,
    required String text,

  })=>InkWell(
    onTap: (){
    },
    child: Container(
      width: 151.w,
      height: 179.3.h,

      decoration: BoxDecoration(
          color: Color(0xffFFE7EE),
          boxShadow: [
            BoxShadow(
                offset:   Offset(3, 4),
                color: Colors.black.withOpacity(0.1)
            )
          ],
          borderRadius: BorderRadius.circular(25.r)
      ),
      child: Padding(
        padding:  EdgeInsets.all(15.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: 120.w,
                child: Text(
                  "Product Design v1.0",
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(
                      fontSize: 18.sp,
                      fontFamily: GoogleFonts.poppins(
                          fontSize: 40.sp,
                          fontWeight: FontWeight.bold)
                          .fontFamily),
                )),
            SizedBox(height: 25.h,),
            Container(
              width: 135.w,
              child: LinearProgressIndicator(
                value: 0.60,

                minHeight: 6,
                color: Colors.orange,
                backgroundColor: Colors.grey.withOpacity(0.2),
                semanticsLabel: 'Linear progress indicator',
              ),
            ),
            SizedBox(height: 15.h,),
            Text("Completed",style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w400
            ),),
            SizedBox(height: 8.h,),
            Row(
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("14",style: Theme.of(context).textTheme.headline2,),
                      Text("/24",style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15.sp
                      ),),

                    ],
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  radius: 25.r,
                  backgroundColor: Color(0xffEC7B9C),
                  child: Icon(
                    Icons.play_arrow,
                    size: 32,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),


    ),
  );
}

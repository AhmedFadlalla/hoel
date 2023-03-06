import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_colors/app_colors.dart';
import '../app_images/app_images.dart';
class CounterWidget extends StatefulWidget {
  int counter;
   CounterWidget({Key? key,
  required this.counter}) : super(key: key);

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: (){
            setState(() {
              widget.counter--;
            });
          },
          child: Container(
            height: 28.h,
            width: 30.w,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey)
            ),
            child: Image(
              width: 40.w,
              image: AssetImage(AppImages.minusIcon),
            color: Colors.grey,),
          ),
        ),
        SizedBox(width: 12.w,),
        Text("${widget.counter}",style: Theme.of(context).textTheme.headline2!.copyWith(
            fontSize: 20.sp
        ),),
        SizedBox(width: 12.w,),
        InkWell(
          onTap: (){
            setState(() {
              widget.counter++;
            });
          },
          child: Container(
            height: 28.h,
            width: 30.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey)
            ),
            child: Icon(Icons.add,size: 23,color: Colors.grey,),
          ),
        ),
      ],
    );
  }
}

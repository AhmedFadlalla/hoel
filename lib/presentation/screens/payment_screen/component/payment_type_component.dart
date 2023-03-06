import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/app_images/app_images.dart';
class PaymentTypeComponent extends StatefulWidget {
  const PaymentTypeComponent({Key? key}) : super(key: key);

  @override
  State<PaymentTypeComponent> createState() => _PaymentTypeComponentState();
}

class _PaymentTypeComponentState extends State<PaymentTypeComponent> {
  bool isVisaClick=true;
  bool isMasterClick=false;
  bool isPayPalClick=false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: (){
            setState(() {
              isVisaClick=true;
              isMasterClick=false;
              isPayPalClick=false;
            });
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 60.h,
                width: 85.h,

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(14.r),
                ),
              ),
              Container(
                height: 50.h,
                width: 85.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.r),
                    border: Border.all(color: Colors.black)
                ),
                child: Image.asset(AppImages.visaImage),
              ),
              if(isVisaClick)
                 Positioned(
                top: 0,
                right:0,
                child: Container(
                  decoration: BoxDecoration(
                      color:Colors.white ,
                      border: Border.all(color: Colors.black),
                      shape: BoxShape.circle
                  ),
                  child: Icon(Icons.done,color: Colors.green,),
                ),
              )
            ],
          ),
        ),
        InkWell(
          onTap: (){
            setState(() {
              isVisaClick=false;
              isMasterClick=true;
              isPayPalClick=false;
            });
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 60.h,
                width: 85.h,

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(14.r),
                ),
              ),
              Container(
                height: 50.h,
                width: 85.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.r),
                    border: Border.all(color: Colors.black)
                ),
                child: Image.asset(AppImages.masterImage),
              ),
              if(isMasterClick)
                Positioned(
                  top: 0,
                  right:0,
                  child: Container(
                    decoration: BoxDecoration(
                        color:Colors.white ,
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.circle
                    ),
                    child: Icon(Icons.done,color: Colors.green,),
                  ),
                )
            ],
          ),
        ),
        InkWell(
          onTap: (){
            setState(() {
              isVisaClick=false;
              isMasterClick=false;
              isPayPalClick=true;
            });
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 60.h,
                width: 85.h,

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(14.r),
                ),
              ),
              Container(
                height: 50.h,
                width: 85.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.r),
                    border: Border.all(color: Colors.black)
                ),
                child: Image.asset(AppImages.paypalImage),
              ),
              if(isPayPalClick)
                Positioned(
                  top: 0,
                  right:0,
                  child: Container(
                    decoration: BoxDecoration(
                        color:Colors.white ,
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.circle
                    ),
                    child: Icon(Icons.done,color: Colors.green,),
                  ),
                )
            ],
          ),
        ),

      ],
    );
  }
}

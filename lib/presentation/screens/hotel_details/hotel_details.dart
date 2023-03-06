import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_book/core/util/app_colors/app_colors.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:hotel_book/core/util/component/screens_component.dart';
import 'package:hotel_book/core/util/widget/grid_view_second_component.dart';
import '../../../core/util/app_images/app_images.dart';
import '../../../core/util/widget/app_bar_component.dart';
import '../../../core/util/widget/rating_bar_component.dart';
import 'component/details_and_ratus_component/details_and_rateus_component.dart';
import 'component/select_room_component/select_room_container.dart';

class HotelDetails extends StatefulWidget {
  const HotelDetails({Key? key}) : super(key: key);

  @override
  State<HotelDetails> createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {

  List<String> screens = [
    AppImages.hotelDetailsImage,
    AppImages.hotelDetails2Image,
    AppImages.hotelDetails3Image,
  ];
  final controller = CarouselController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarComponent(context: context,
        title:Center(child: Text("Hotel Name",
          style: Theme.of(context).textTheme.headline2,),),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_outlined)),
      ),
      body: Stack(
        clipBehavior: Clip.hardEdge,
        fit: StackFit.loose,
        alignment: Alignment.topCenter,
        children: [

          CarouselSlider.builder(
            carouselController: controller,
            options:
            CarouselOptions(
                height: MediaQuery.of(context).size.height*0.50,
                viewportFraction: 1,
                autoPlay: false,
                onPageChanged: (index,_){
                  print(index);
                  setState(() {
                    currentIndex=index;
                  });
                }
            ),
            itemCount: screens.length,

            itemBuilder:
                (BuildContext context, int index, int realIndex) =>
                Image(
                    image: AssetImage(screens[index]),
                    fit: BoxFit.fitWidth),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height*0.15,
            width: MediaQuery.of(context).size.width,
            child: Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    setState(() {
                      controller.animateToPage(currentIndex-1);

                    });
                  },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        size: 28,
                        color: Colors.white,)),

                  IconButton(onPressed: (){
                    setState(() {
                      controller.animateToPage(currentIndex+1);
                    });
                  },
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        size: 28,
                        color: Colors.white,)),
                ],
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.all(12.r),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Royal Lancaster",style: Theme.of(context).textTheme.headline2!.copyWith(
                  color: currentIndex!=1?Colors.white:Colors.black
              ),),
            ),
          ),
          if(currentIndex==0)
             Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.r),
              child: Container(
                height: MediaQuery.of(context).size.height*0.56,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.r),
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.shadowColor.withOpacity(0.2),
                        offset: Offset(0.0, 1.0),
                        blurRadius: 5
                    ),
                  ]
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.r,vertical: 10.r),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
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
                      ),
                      SizedBox(height: 8.h,),
                      Center(
                        child: Text("Price Detail",style: TextStyle(
                          fontSize: 18.sp
                        ),),
                      ),
                      SizedBox(height: 8.h,),
                      buildItem(name: "Single Room",price: "5,500"),
                      buildItem(name: "Double Room",price: "7,500"),
                      buildItem(name: "Group Room",price: "10,500"),
                      buildItem(name: "Family Room",price: "9,500"),
                      Spacer(),
                      defaultButton(context: context, function: (){
                        controller.animateToPage(currentIndex+1);
                      }, text: "Select Room")


                    ],
                  ),
                ),
              ),
            ),
          ),
          if(currentIndex==1)
            SelectRoomContainer(controller: controller),
          if(currentIndex==2)
            DetailsAndRateUsComponent()


        ],
      ),
    );
  }
  Widget buildItem({
  required String name,
  required String price,

})=>Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(name,style: Theme.of(context).textTheme.caption!.copyWith(
          fontSize: 18.sp
      ),),
      Row(
        children: [
          Text('\$ $price',style: Theme.of(context).textTheme.headline2,),
          SizedBox(width: 4.w),
          Text('24 hrs'),
        ],
      )

    ],
  );
}

// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// class CarouselSliderComponent extends StatelessWidget {
//   const CarouselSliderComponent({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return CarouselSlider.builder(
//       carouselController: controller,
//       options:
//       CarouselOptions(
//           height: 400.h,
//           viewportFraction: 0.7,
//           autoPlay: true,
//           onPageChanged: (index,_){
//             setState(() {
//               currentIndex=index;
//             });
//           }
//       ),
//       itemCount: screens.length,
//
//       itemBuilder:
//           (BuildContext context, int index, int realIndex) =>
//           Image(
//               image: AssetImage(screens[index]),
//               fit: BoxFit.fitHeight),
//     );
//   }
// }

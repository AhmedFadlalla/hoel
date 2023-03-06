import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../component/screens_component.dart';


Widget gridViewItem({
  required context,
  required List<String> images,
  required List<String> text,
  required List<String> backgroundImages,
  required int gridViewLength,
  required List<Widget> navigatedWidget,
}) =>
    GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 12.w,
        physics: ScrollPhysics(),
        childAspectRatio: 0.828,
        shrinkWrap: true,
        children: List.generate(
          gridViewLength,
          (index) {
            return buildMainGridViewComponent(
                navigatedWidget: navigatedWidget[index],
                context: context,
                image: images[index],
                backgroundImage: backgroundImages[index],
                text: text[index]);
          },
        ));

Widget buildMainGridViewComponent(
        {required context,
        required String backgroundImage,
        required String image,
        required String text,
        required Widget navigatedWidget}) =>
    InkWell(
      onTap: () {
        navigateTo(context, navigatedWidget);
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(3, 4), color: Colors.black.withOpacity(0.1))
            ],
            borderRadius: BorderRadius.circular(15.r)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(backgroundImage))),
                  ),
                  Image(
                      width: 120.w, height: 250.6.h, image: AssetImage(image)),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            )
          ],
        ),
      ),
    );

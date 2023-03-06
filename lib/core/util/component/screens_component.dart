import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:fluttertoast/fluttertoast.dart';

import '../../../core/util/app_colors/app_colors.dart';

Widget buildSearchWithShadow({
  required TextEditingController controller,
  required double height,
})=>Container(
  height: height.h,

  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.r),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
            color: AppColors.shadowColor.withOpacity(0.2),
            offset: Offset(0.0, 1.0),
            blurRadius: 5
        ),

      ]
  ),
  child: TextFormField(
    decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: IconButton(onPressed: () {},
            icon: Icon(Icons.search,
              color: Colors.grey.withOpacity(0.5),)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.r),
            borderSide: BorderSide(
                color: Colors.white
            )
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.r),
            borderSide: BorderSide(
                color: Colors.white
            )
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.r),
            borderSide: BorderSide(
                color: Colors.white
            )
        )
    ),
  ),
);

Color backgroundGreyColor=Color(0xfff3f3f3);
Widget buildLoginFormFieldWithoutBorder(
{
  required TextEditingController controller,
  TextInputType? keyboardType
}
    )=> TextFormField(
  controller:controller,
  keyboardType: keyboardType??TextInputType.text,
  decoration: InputDecoration(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.black),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.black),
    ),
  ),
);
Widget defaultButton({
  double width = double.infinity,
 // Color background = AppColors.backgroundColor,
  Color? color,
  required context,
  required var function,
  required String text,
  var fontSize,
  bool isUpperCase = true,
  double radius = 10.0,
}) =>
    Container(
      width: double.infinity,
      height: 48.7.h,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.r),
        color: AppColors.mainColor,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
              color: AppColors.textWhiteColor),
        ),
      ),
    );
Widget secondButton({
  double width = double.infinity,
  // Color background = AppColors.backgroundColor,
  Color? color,
  required var function,
  required String text,
  var fontSize,
  bool isUpperCase = true,
  double radius = 10.0,
}) =>
    Container(
      width: 130.8.h,
      height: 51.7.h,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.r),
        color: AppColors.secondBottomColor,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
              color: AppColors.textWhiteColor),
        ),
      ),
    );


Widget logButton({
  double width = double.infinity,
 // Color background = AppColors.backgroundColor,
  required var function,
  required String text,
  var fontSize,
  bool isUpperCase = true,
  double radius = 10.0,
  required String icon
}) =>
    Container(
      width: width,
      height: 60.0,
      margin: EdgeInsets.all(40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: Color(0xffF2F3F2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Image.asset(icon),
            SizedBox(width: 60.w,),
            MaterialButton(
              onPressed: function,
              child: Text(
                text,
                style: TextStyle(
                    color: AppColors.backgroundColor,
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );

Widget defaultAuthButton({
  double width = double.infinity,
  //Color background = AppColors.backgroundColor,
  required var function,
  required String text,
  required Color color,
  required Color textColor,
  var fontSize=18,
  String? image,
  IconButton? icon,
  bool isUpperCase = true,
  double radius = 25.0,
}) =>
    ScreenUtilInit(
      builder:(context,Widget? widget)=> Container(
        width: width,
        height: 45.0.h,
        margin: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.horizontal(
              right: Radius.circular(100.r)
              ,left: Radius.circular(25.r) ),

        ),
        child: MaterialButton(
          color: color,
          onPressed: function,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 100.w,
              ),
              Image(image: AssetImage(image??""),width: 35,),
              SizedBox(
                width: 25.w,
              ),
              Expanded(
                child: Text(
                  isUpperCase ? text.toUpperCase() : text,
                  style: TextStyle(
                      color: textColor,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
Widget defaultTextButton(
    {
      required String text,
      required var pressedFunction,
      Color color=Colors.black
    }) =>
    TextButton(
        onPressed: pressedFunction,
        child: Text(
          text,
          style:  TextStyle(
              fontWeight: FontWeight.bold, fontSize: 17.sp,
              color: color
          ),
        ));

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  var onsubmit,
  Color? filledColor,
  IconData? widget,
  var onChange,
  var onTap,
  IconData? suffixIcon2,
  required String hintText,
  var prefixIconTapFunction,
  required var validator,
   String? label,
  IconData? prefixIcon,
  var suffixIcon,
  bool keyBoardApper=true,
  bool isPassword = false,
  var sufixPressed,
  var sufixPressed2,
}) =>
    Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          boxShadow: [
            BoxShadow(
                offset:   Offset(2, 3),
                color: Colors.grey.withOpacity(0.08)
            )
          ]
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        obscureText:isPassword?true:false ,
        validator: validator,
        decoration: InputDecoration(
            hintText: hintText,

            helperStyle: TextStyle(
                fontSize: 25.sp
            ),
            filled: true,
            suffixIcon:IconButton(onPressed: sufixPressed, icon: Icon(suffixIcon,size: 28,)) ,

            fillColor: filledColor??Colors.white,
            prefixIcon: Icon(prefixIcon),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.r),
                borderSide: BorderSide(
                    color: Colors.white
                )
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.r),
                borderSide: BorderSide(
                    color: Colors.white
                )
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.r),
                borderSide: BorderSide(
                    color: Colors.white
                )
            )
        ),
      ),
    );
Widget defaultSearchPageField({
  required TextEditingController controller,
  required TextInputType type,
  var onsubmit,
  IconData? widget,
  var onChange,
  var onTap,
  IconData? suffixIcon2,
  String? hintText,
  var prefixIconTapFunction,
  required var validator,
  String? label,
  IconData? prefixIcon,
  var suffixIcon,
  bool keyBoardApper=true,
  bool isPassword = false,
  var sufixPressed,
  var sufixPressed2,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: onsubmit,
      onChanged: onChange,
      validator: validator,
      obscureText: isPassword,
      onTap: onTap,

      style: const TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
          labelText: label,
          filled: true,
          constraints: BoxConstraints(
              maxHeight: 40 .h
          ),
          prefixIcon: prefixIcon!=null?Icon(prefixIcon,size: 22,color: Colors.grey,):null,
          fillColor: Color(0xFFF2F3F2),
          hintText: hintText,
          hintStyle:  TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.bold),
          labelStyle: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.normal
          ),
          suffixIcon: IconButton(onPressed: sufixPressed, icon: Icon(suffixIcon)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: const BorderSide(
                color: Colors.white30,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: const BorderSide(
                color: Colors.white30,
              )),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: const BorderSide(
                color: Colors.white30,
              ))),
    );
Widget defaultSearchField({
  required TextEditingController controller,
  required TextInputType type,
  var onsubmit,
  var onChange,
  var onTap,
  String? hintText,
  var prefixIconTapFunction,
  required var validator,
  String? label,
  var prefixIcon,
  var suffixIcon,
  bool isPassword = false,
  var sufixPressed,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: onsubmit,
      onChanged: onChange,
      validator: validator,
      obscureText: isPassword,
      onTap: onTap,
      decoration: InputDecoration(
          labelText: label,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.black),
          labelStyle: const TextStyle(color: Colors.black),
          prefixIcon: InkWell(
            onTap: prefixIconTapFunction,
            child:prefixIcon,
          ),
          suffixIcon: suffixIcon != null
              ? IconButton(
              onPressed: sufixPressed,
              icon: Icon(
                suffixIcon,
              ))
              : null,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),

              borderSide: const BorderSide(
                color: Colors.grey,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(
                color: Colors.grey,
              )),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide:  BorderSide(
              //  color: lightTextColor,
              ))),
    );

Widget defultLoginField({
  required TextEditingController controller,
  required TextInputType inputType,
  required String labelText,
  required IconData preIcon,
  required var tabFunction,
  required var validation,
}) =>
    TextFormField(
      decoration: InputDecoration(
        labelText: '$labelText',
        labelStyle: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.bold,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        prefixIcon: Icon(
          preIcon,
        ),
      ),
      keyboardType: inputType,
      controller: controller,
      onTap: tabFunction,
      validator: validation,
    );

Widget materialBottomLogin({
  required var pressFunction,
  required String bottomText,
  Color backgroundColor = Colors.white24,
  double radius = 20.0,
  double width = double.infinity,
  Color textColor = Colors.black,
}) {
  return Container(
    width: width,
    child: MaterialButton(
      onPressed: pressFunction,
      child: Text(
        '$bottomText',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20.0, color: textColor),
      ),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      color: backgroundColor,
    ),
  );
}

Widget defaultSocialLogo({
  required String image,
  Color? color,
  var onTap,
}) =>
    InkWell(
      onTap: onTap,
      child: Container(
        height: 45,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey.withOpacity(0.2)),
        child: Image(
          image: AssetImage(image),
          color: color,
        ),
      ),
    );

Widget myDivider() => Padding(
  padding: EdgeInsets.only(left: 12.r,right: 12.r),
  child: Container(
    width: double.infinity,
    height: 1,
    color: Colors.grey[300],
  ),
);

void navigateTo(context, widget) => Navigator.push(
    context, MaterialPageRoute(builder: (BuildContext context) => widget));

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => widget),
        (Route<dynamic> route) => false);

// void showToast({required String text, required ToastStates state}) =>
//     Fluttertoast.showToast(
//         msg: text,
//         toastLength: Toast.LENGTH_LONG,
//         gravity: ToastGravity.BOTTOM,
//         timeInSecForIosWeb: 1,
//         backgroundColor: chooseToastColor(state),
//         textColor: Colors.white,
//         fontSize: 16.0);

enum ToastStates { SUCCESS, ERROR, WARNING }

Color chooseToastColor(ToastStates state) {
  Color color;
  switch (state) {
    case ToastStates.SUCCESS:
      color = Colors.green;
      break;
    case ToastStates.ERROR:
      color = Colors.red;
      break;
    case ToastStates.WARNING:
      color = Colors.amber;
      break;
  }
  return color;
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;

    final path = Path();

    path.lineTo(0, height - 40);
    path.quadraticBezierTo(
      width / 4,
      height,
      width / 2,
      height,
    );
    path.quadraticBezierTo(
      width - (width / 4),
      height,
      width,
      height - 40,
    );
    path.lineTo(width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
Widget showBottom({
  required context,
  required VoidCallback onTapFunction
})=>Container(
  width: 120.w,
  height: 60.h,
  child: defaultButton(
      context: context,
      function: onTapFunction,
      text: "Details"),
);
Widget buildSearchFormField(
{
  required TextEditingController searchController,
  required  context,
  required var validator,
   VoidCallback? suffixOnTap,
  IconData? suffixIcon,
}
    )=>Container(
  width: 320.w,
  height: 55.h,
  child: TextFormField(
    controller: searchController,
    decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,

        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: BorderSide(color: Colors.white)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: BorderSide(color: Colors.white)),
        prefixIcon: Icon(
          Icons.search,
          size: 30,
        ),
        suffixIcon:suffixIcon!=null? IconButton(onPressed: suffixOnTap,
            icon: Icon(
          suffixIcon,
          size: 30,
        )):null,

        hintText: "Search here",
        helperStyle: Theme.of(context).textTheme.labelMedium),
    keyboardType: TextInputType.text,
    validator:validator,
  ),
);
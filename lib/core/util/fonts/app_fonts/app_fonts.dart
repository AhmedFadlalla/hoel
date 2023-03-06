import 'dart:ui';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts{

  static  var poppinsBoldFont=
      GoogleFonts.poppins(
        fontWeight: FontWeight.bold,
        fontSize: 22.sp
      ).fontFamily;
  static  var poppinsMediumFont=
      GoogleFonts.poppins(
          fontWeight: FontWeight.w400,
          fontSize: 14.sp
      ).fontFamily;
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app_2/core/utils/colors_manager.dart';
import 'package:new_app_2/my_app.dart';
class AppStyle {
  static final TextStyle appBar=GoogleFonts.exo(
    fontWeight: FontWeight.w700,
    fontSize: 22.sp,
    color: ColorsManager.white,

  );
  static final TextStyle DrawerTitle=GoogleFonts.poppins(
    fontWeight: FontWeight.w700,
    fontSize: 24.sp,
    color: ColorsManager.white,

  );
  static final TextStyle Draweritem=GoogleFonts.poppins(
    fontWeight: FontWeight.w700,
    fontSize: 18.sp,
    color: ColorsManager.blackAccunt,

  );
  static final TextStyle PicCatagory=GoogleFonts.poppins(
    fontWeight: FontWeight.w700,
    fontSize: 18.sp,
    color: ColorsManager.gray,

  );
  static final TextStyle catagoryTitle=GoogleFonts.exo(
    fontWeight: FontWeight.w700,
    fontSize: 22.sp,
    color: ColorsManager.white,

  );






}
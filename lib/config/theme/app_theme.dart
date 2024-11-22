

import 'package:flutter/material.dart';
import 'package:new_app_2/core/utils/colors_manager.dart';

class AppTheme{
  static final ThemeData light=ThemeData(
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: ColorsManager.white,
      ),
      color: ColorsManager.green
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor: ColorsManager.white,
      scrimColor: Colors.black.withOpacity(0.6)
    ),
    scaffoldBackgroundColor: Colors.transparent,

  );
}
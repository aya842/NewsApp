
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app_2/config/theme/app_theme.dart';
import 'package:new_app_2/core/utils/route_magager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(412,870),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,child)=> MaterialApp(
        debugShowCheckedModeBanner: false,
      onGenerateRoute:  routeManger.router,
      initialRoute: routeManger.splash ,
      theme:AppTheme.light ,
      themeMode:ThemeMode.light ,
    ),


    );

  }
}

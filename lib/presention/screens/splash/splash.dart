
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app_2/core/utils/assest-manager.dart';
import 'package:new_app_2/core/utils/colors_manager.dart';
import 'package:new_app_2/core/utils/route_magager.dart';



class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration (seconds: 3) ,(){
      Navigator.pushReplacementNamed(context, routeManger.home);
    });    // TODO: implement initState

  }

   //Splash ({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Container(
            color: ColorsManager.white,
            child: Image.asset(assetsManager.bgPattern,width: double.infinity,height: double.infinity,fit:BoxFit.cover,),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Spacer(),
             Image.asset(assetsManager.splashLogo
               ,width: 199.w,height: 208.h),
              Spacer(),
              Image.asset(assetsManager.routeLogo
                  ,width: 213.w,height:123.h),

            ],
          )

        ],
      ),

    );
  }
}

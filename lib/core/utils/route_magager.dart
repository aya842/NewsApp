
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../presention/screens/home/home.dart';
import '../../presention/screens/splash/splash.dart';

class routeManger {
  static const String splash = 'Splahe';

  static const String home = 'home';
  static Route?router(RouteSettings settings){
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case home:
        return MaterialPageRoute(builder: (context) => Home());
      default:
        return null;
    }
  }


}
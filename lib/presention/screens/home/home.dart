
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app_2/config/theme/app-style.dart';
import 'package:new_app_2/core/utils/assest-manager.dart';
import 'package:new_app_2/core/utils/colors_manager.dart';
import 'package:new_app_2/presention/screens/home/home_drawer/home_drawer.dart';
import 'package:new_app_2/presention/screens/home/tabs/catagorys/catagorys.dart';
import 'package:new_app_2/presention/screens/home/tabs/settings/settings.dart';

class Home extends StatefulWidget {
   Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   Widget selectedWidget=Catagorys();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.white,
        image: DecorationImage(
            image:AssetImage(
            assetsManager.bgPattern))
      ),
      child: Scaffold(
        appBar: AppBar(
          title:Text('New App' ),
          titleTextStyle: AppStyle.appBar,
          centerTitle: true,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(50.r),
            ),
          ),

        ),
        drawer: HomeDrawer(onMenuClicked:onMenuItemClicked),
        body: selectedWidget,

      ),
    );
  }

  // void onMenuItemClicked(int pos ){
  //   Navigator.pop(context);
  //   if (pos==HomeDrawer.Catagory){
  //     selectedWidget=Catagorys();
  //   }
  //   else if (pos==HomeDrawer.Settings_app){
  //     selectedWidget=Settings();
  //   }
  //    setState(() {
  //
  //    });
  //
  // }
   void onMenuItemClicked(MenuItem Item ){
     switch(Item){
       case MenuItem.Catagory:
         selectedWidget=Catagorys();

       case MenuItem.Settings_app:
         selectedWidget=Settings();

     }
     Navigator.pop(context);
     setState(() {

     });

   }

}

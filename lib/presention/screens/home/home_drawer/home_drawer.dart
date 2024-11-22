
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app_2/config/theme/app-style.dart';
import 'package:new_app_2/core/utils/colors_manager.dart';
typedef OnMenuClicked =  void Function( MenuItem );
class HomeDrawer extends StatelessWidget {
   HomeDrawer({super.key ,required this.onMenuClicked});
  OnMenuClicked onMenuClicked;
 static const int Catagory=0;
   static const int Settings_app=1;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width*0.7,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 110.h,
            color: ColorsManager.green,
            child: Text('News App!',style: AppStyle.DrawerTitle,),
          ),
          Padding(
            padding:  REdgeInsets.all(8.0),
            child: Column(

              children: [
                InkWell(
                  onTap: (){
                    onMenuClicked(MenuItem.Catagory);
                  },
                  child: Row(
                    children: [
                      Icon(Icons.list,size: 33.sp,),
                      SizedBox(width: 8.w,),
                      Text('Catagory', style: AppStyle.Draweritem,),

                    ],



                  ),
                ),
                SizedBox(width: 12.w,),
                InkWell(
                  onTap: (){
                    onMenuClicked( MenuItem.Settings_app);
                  },

                  child: Row(
                    children: [
                      Icon(Icons.settings,size: 33.sp,),
                      SizedBox(width: 8.w,),
                      Text('Settings', style: AppStyle.Draweritem,),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),

    );

  }

}
enum MenuItem{
  Catagory,
  Settings_app,

}

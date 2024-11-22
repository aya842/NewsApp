
import 'package:flutter/material.dart';
import 'package:new_app_2/core/utils/assest-manager.dart';
import 'package:new_app_2/core/utils/colors_manager.dart';
import 'package:new_app_2/core/utils/constant_manager.dart';
class CatagoryDM{
  String backendId;
  String title;
  Color bgColor;
  String imagePath;
  CatagoryDM({required this.title,required this.imagePath,
  required this.bgColor,required this.backendId});

   static List<CatagoryDM> getCatagoryList()=>[
    CatagoryDM(title:'Sports', imagePath:assetsManager.Sports ,
        bgColor: ColorsManager.Red, backendId: ApiConstManager.SportsId),
    CatagoryDM(title:'Politics', imagePath: assetsManager.politics,
        bgColor: ColorsManager.Darkblue, backendId: ApiConstManager.gereralId),
    CatagoryDM(title:'Health', imagePath:assetsManager.Health ,
        bgColor: Colors.pink, backendId: ApiConstManager.healthId),
    CatagoryDM(title:'Business', imagePath:assetsManager.business ,
        bgColor: ColorsManager.Brown, backendId: ApiConstManager.businessId),
    CatagoryDM(title:'Environment', imagePath:assetsManager.envioronment ,
        bgColor: ColorsManager.Blue, backendId: ApiConstManager.entertainmentId),
    CatagoryDM(title:'Technology', imagePath:assetsManager.tech ,
        bgColor: ColorsManager.Yallow, backendId: ApiConstManager.techId),

  ];


}

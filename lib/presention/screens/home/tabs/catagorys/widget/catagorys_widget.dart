
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app_2/config/theme/app-style.dart';
import 'package:new_app_2/data_model/Catagory_DM.dart';

class CatagorysItem extends StatelessWidget {
   CatagorysItem ({super.key,required this.index,required this.catagoryDM});
   CatagoryDM catagoryDM;
  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: catagoryDM.bgColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18.r),
          topRight: Radius.circular(18.r),
          bottomLeft: Radius.circular(index.isEven?25.r:0.r),
          bottomRight: Radius.circular(index.isEven?0.r:25.r),


        ),
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(catagoryDM.imagePath,width:142.w, height:126.h),
          Text(catagoryDM.title,style: AppStyle.catagoryTitle,)
        ],
      )
    ) ;
  }
}

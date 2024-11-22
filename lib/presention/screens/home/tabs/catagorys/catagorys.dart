
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app_2/config/theme/app-style.dart';
import 'package:new_app_2/data_model/Catagory_DM.dart';
import 'package:new_app_2/presention/screens/home/tabs/catagorys/widget/catagorys_widget.dart';

class Catagorys extends StatelessWidget {
  Catagorys({super.key});
  List<CatagoryDM>catagoryList=CatagoryDM.getCatagoryList();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  REdgeInsets.all(8.0),
      child: Column(
        children: [
          Text('Pick your category  of\n'
              ' interest',style: AppStyle.PicCatagory,
          ),
          Expanded(child:GridView.builder(gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 25.h,
              mainAxisSpacing: 25.h
          ),itemBuilder:(context,index)=>CatagorysItem(index: index, catagoryDM:catagoryList[index])

          ,itemCount: catagoryList.length,
          ),)
        ],
      ),
    );
  }
}

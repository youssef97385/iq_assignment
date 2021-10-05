import 'package:flutter/material.dart';
import 'package:iq_sample_app/core/app_widgets/base_text.dart';
import 'package:iq_sample_app/utils/size_util/flutter_screenutil.dart';
import '../constent.dart';

Widget sectionTitle({String title}){
 return Padding(
    padding: const EdgeInsets.only(
        left: 16.0, bottom: 16,right: 16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        baseText(title: title??"",size: 16.sp),
        baseText(title: "More" ,color: AppColor.greenColor , size: 16.sp)

      ],
    ),
  );
}
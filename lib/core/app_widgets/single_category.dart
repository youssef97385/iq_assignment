import 'package:flutter/material.dart';
import 'package:iq_sample_app/utils/size_util/flutter_screenutil.dart';
import 'package:iq_sample_app/core/app_widgets/base_text.dart';
Widget singleCategory({String title, String image}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.white,
          shape: BoxShape.circle,

          // border: Border.all(color: Color(0xff707070))
        ),
        height: 55,
        width: 55,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(100)),
          child:
          image.isEmpty?Image.asset("assets/images/placeholder-image.png"):
          Image.network(
            image,
            fit: BoxFit.fill,
          ),
        ),
      ),
      SizedBox(
        height: 8,
      ),
      Container(
          width: 55,
          child:
          baseText(title: title.length>8?title.substring(0,8):title,textAlign: TextAlign.center,size: 12.sp)
      )
    ],
  );
}
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iq_sample_app/core/decorations/decorations.dart';
import 'package:iq_sample_app/model/item_model/item_model.dart';
import 'package:iq_sample_app/utils/size_util/flutter_screenutil.dart';

import '../constent.dart';

class ProductItem extends StatelessWidget {
  final ItemModel product;
  const ProductItem({Key key,this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: itemBoxDecoration(),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.h,
            ),
            product.image == "null"
                ? Container(
                height: 96.h,
                width: 96.w,
                child: Image.asset("assets/images/image_placeholder.png"))
                : Container(
              height: 96.h,
              width: 96.w,
              child: CachedNetworkImage(
                imageUrl: product.image,
                placeholder: (context, url) => Container(),
                errorWidget: (context, url, error) =>
                    Image.asset("assets/images/image_placeholder.png"),
              ),
            ),

            Container(
              height: 17.h,
              child: Text(
                product.title,
                style:
                TextStyle(fontSize: 10.sp, color: AppColor.textGreyColor),
                maxLines: 1,
              ),
            ),
            Container(
              height: 34.h,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [

                        Container(
                          height: 17.h,
                          child: Text(

                             product.price,
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Color(0xff3072BF)),
                          ),
                        ),

                      ],
                    ),
                    Container(
                      height: 17.h,
                      child: Text(
                        "${product.currency}",
                        style: TextStyle(
                            fontSize: 10.sp, color: AppColor.textGreyColor),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(height: 5.h,),
          ],
        ),
      ),
    );
  }
}

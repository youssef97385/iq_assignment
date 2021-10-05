import 'package:flutter/material.dart';
import 'package:iq_sample_app/core/app_widgets/section_title.dart';
import 'package:iq_sample_app/core/app_widgets/base_text.dart';

import 'package:iq_sample_app/core/constent.dart';
import 'package:iq_sample_app/model/item_model/item_model.dart';
import 'package:iq_sample_app/utils/size_util/flutter_screenutil.dart';
import 'package:built_collection/built_collection.dart';
class BestProductsSection extends StatelessWidget {
  final BuiltList<ItemModel> products;
  final String title;
  const BestProductsSection({Key key,this.products , this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
         Padding(
      padding:
      const EdgeInsets.only(bottom: 16.0),
      child: Container(

        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            sectionTitle(title: title),
            Container(
              height: 160.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder:
                    (BuildContext context,
                    int index) {
                  return Padding(
                    padding:
                    const EdgeInsets.symmetric(
                        horizontal: 8.0),
                    child: GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        width: 160.w,
                        height: 160.h,
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.all(
                              Radius.circular(
                                  12)),
                          color: Colors.white24,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(
                                  0.1),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0,
                                  1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment
                              .start,
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets
                                  .only(
                                  bottom:
                                  8.0),
                              child: Container(
                                  width: 160.w,
                                  height: 100.h,
                                  child:
                                  ClipRRect(
                                    borderRadius:
                                    BorderRadius.all(
                                        Radius.circular(
                                            12)),
                                    child: Hero(
                                      tag: "${products[
                                      index]
                                          .title}",
                                      child: Image
                                          .network(

                                      products[index]
                                            .image??"",
                                        fit: BoxFit
                                            .fill,
                                      ),
                                    ),
                                  )),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets
                                  .only(
                                  left: 8.0),
                              child: Text(

                                products[
                                index]
                                    .title,
                                style: TextStyle(
                                    color: Color(
                                        0xff393741),
                                    fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets
                                  .only(
                                  left: 8.0,
                                  top: 8,
                                  right: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Text(
                                      products[
                                      index]
                                          .price??"" +
                                          "\$",
                                      style: TextStyle(
                                          color: Color(
                                              0xff393741),
                                          fontSize:
                                          15,
                                          )),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

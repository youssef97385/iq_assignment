import 'package:flutter/material.dart';
import 'package:built_collection/built_collection.dart';
import 'package:iq_sample_app/core/app_widgets/section_title.dart';
import 'package:iq_sample_app/core/constent.dart';
import 'package:iq_sample_app/model/item_model/item_model.dart';
import 'package:iq_sample_app/utils/size_util/flutter_screenutil.dart';

class BestOfTheBestProducts extends StatelessWidget {
  final BuiltList<ItemModel> bestProducts;
 final String title;
  const BestOfTheBestProducts({Key key,this.title,this.bestProducts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sectionTitle(title: title),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment:
            MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: 8.0),
                child: Column(
                  children: [
                    Padding(
                        padding:
                        const EdgeInsets.only(
                            bottom: 8.0),
                        child: GestureDetector(
                          onTap: () {

                          },
                          child: Stack(
                            children: [

                              Container(
                                height: 136,
                                width: size.width *
                                    0.45,
                                decoration:
                                BoxDecoration(

                                  image: DecorationImage(
                                    colorFilter:  ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
                                    image: NetworkImage(bestProducts[0].image??""),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius
                                      .all(Radius
                                      .circular(
                                      12)),
                                  color: Color(
                                      0xffF1F0EE),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors
                                          .grey
                                          .withOpacity(
                                          0.5),
                                      spreadRadius:
                                      2,
                                      blurRadius: 5,
                                      offset: Offset(
                                          0,
                                          3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment
                                      .start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets
                                          .only(
                                          left:
                                          8.0),
                                      child:
                                      Container(
                                        height: 24,
                                        child: Text(
                                          bestProducts[0].title,
                                          style: TextStyle(
                                              fontSize:
                                              22,
                                              color:
                                              Color(0xff393741)),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                            ],
                          ),
                        )),
                    GestureDetector(
                      onTap: () {

                      },
                      child: Stack(
                        children: [
                          Container(
                              height: 136,
                              width:
                              size.width * 0.45,
                              decoration:
                              BoxDecoration(
                                image: DecorationImage(
                                  colorFilter:  ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
                                  image: NetworkImage(bestProducts[1].image??""),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius:
                                BorderRadius
                                    .all(Radius
                                    .circular(
                                    12)),
                                color: Color(
                                    0xffF1F0EE),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors
                                        .grey
                                        .withOpacity(
                                        0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0,
                                        3), // changes position of shadow
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
                                        left:
                                        8.0),
                                    child:
                                    Container(
                                      height: 24,
                                      child: Text(
                                     bestProducts[
                                            1]
                                                .title,
                                        style: TextStyle(
                                            fontSize:
                                            22,
                                            color: Color(
                                                0xff393741)),
                                      ),
                                    ),
                                  ),

                                ],
                              )),


                        ],
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {

                },
                child: Container(
                  height: 280,
                  width: size.width * 0.45,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
                      image: NetworkImage(bestProducts[2].image??""),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(12)),
                    color: Color(0xffF1F0EE),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey
                            .withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0,
                            3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        child: Text(
                          bestProducts[2]
                                  .title,
                          style: TextStyle(
                            fontSize: 22,
                            color:
                            Color(0xff393741),
                          ),
                          textAlign:
                          TextAlign.center,
                        ),
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

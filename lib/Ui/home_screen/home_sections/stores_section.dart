import 'package:flutter/material.dart';
import 'package:iq_sample_app/core/app_widgets/section_title.dart';
import 'package:iq_sample_app/core/constent.dart';
import 'package:iq_sample_app/model/item_model/item_model.dart';
import 'package:iq_sample_app/utils/size_util/flutter_screenutil.dart';
import 'package:built_collection/built_collection.dart';

class StoresSection extends StatelessWidget {
 final BuiltList<ItemModel> stores;
  final String title;
  const StoresSection({Key key ,this.title,this.stores}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       sectionTitle(title: title),
        Container(

          height: 90.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: stores.length,
            itemBuilder:
                (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 8.0),
                child: GestureDetector(
                  onTap: () {

                  },
                  child: Column(
                    children: [
                      Container(
                        width: 200.w,
                        height: 90.h,
                        decoration: BoxDecoration(
                          // color: Colors.red,
                          borderRadius: BorderRadius.all(
                              Radius.circular(12)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0.1,-0.3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: ClipRRect(
                            borderRadius:
                            BorderRadius.all(
                                Radius.circular(12)),
                            child: Image.network(

                              stores[index]
                                  .image??"",
                              fit: BoxFit.fill,
                            )),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

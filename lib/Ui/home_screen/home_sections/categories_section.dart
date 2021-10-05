import 'package:flutter/material.dart';
import 'package:built_collection/built_collection.dart';
import 'package:iq_sample_app/core/app_widgets/single_category.dart';
import 'package:iq_sample_app/core/app_widgets/base_text.dart';
import 'package:iq_sample_app/model/item_model/item_model.dart';
import 'package:iq_sample_app/utils/size_util/flutter_screenutil.dart';
class CategoriesSection extends StatelessWidget {
final  BuiltList<ItemModel> categories;
  final String title;
  const CategoriesSection({Key key,this.title,this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 16.0, bottom: 16),
            child:
            baseText(title: title,size: 18.sp ),

          ),
          Container(
            height: 115,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder:
                  (BuildContext context,
                  int index) {
                return Padding(
                  padding: const EdgeInsets
                      .symmetric(
                      horizontal: 16.0,
                      vertical: 8),
                  child: GestureDetector(
                    onTap: () {

                    },
                    child: singleCategory(
                        title:categories[index]
                            .title,
                        image: categories[index]
                            .image??""),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

}

import 'package:iq_sample_app/core/constent.dart';
import 'package:iq_sample_app/model/item_model/item_model.dart';
import 'package:iq_sample_app/utils/size_util/flutter_screenutil.dart';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderSection extends StatelessWidget {

  final BuiltList<ItemModel> sliderItems;
 final PageController controller;
 final int currentIndex;
  

  const SliderSection({Key key , this.sliderItems ,this.controller,this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          // color: Colors.red,
          height: 210,
          // width: 100,
          child: Center(
            child: PageView(
              controller: controller,
              children: List.generate(
                  3,
                      (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal:8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.all(
                              Radius.circular(
                                  12))),

                      // color:index == 0 ?Colors.green : index == 1 ?Colors.yellow: Colors.pink,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        child: sliderItems[currentIndex]==null?Container():Image.network(
                          sliderItems[currentIndex].image??"http://placeimg.com/640/480",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  )
                // _makePage(context, index, slider)
              ),
            ),
          ),
        ),
        SizedBox(height: 16),

        Center(
          child: Padding(
            padding:
            const EdgeInsets.only(top: 8.0, bottom: 8),
            child: Container(
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: AppColor.greenColor,
                  dotColor:
                  AppColor.greenColor.withOpacity(0.5),
                  expansionFactor: 4,
                  dotHeight: 8,
                  dotWidth: 8,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

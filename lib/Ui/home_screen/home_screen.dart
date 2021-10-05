import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iq_sample_app/Ui/home_screen/bloc/home_event.dart';
import 'package:iq_sample_app/Ui/home_screen/home_sections/best_of_the_best_products.dart';
import 'package:iq_sample_app/Ui/home_screen/home_sections/best_products_section.dart';
import 'package:iq_sample_app/Ui/home_screen/home_sections/categories_section.dart';
import 'package:iq_sample_app/Ui/home_screen/home_sections/slider_section.dart';
import 'package:iq_sample_app/Ui/home_screen/home_sections/stores_section.dart';
import 'package:iq_sample_app/core/app_widgets/appBar.dart';
import 'package:iq_sample_app/core/constent.dart';
import 'package:iq_sample_app/injectoin.dart';
import 'package:iq_sample_app/utils/size_util/flutter_screenutil.dart';
import 'bloc/home_bloc.dart';
import 'bloc/home_state.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _bloc = sl<HomeBloc>();
  final controller = PageController(viewportFraction: 1, initialPage: 1);
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bloc.add(GetHomeData());
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      controller.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocBuilder(
        bloc: _bloc,
        builder: (context, HomeState state) {
          return Scaffold(
            // backgroundColor: Colors.white,
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Container(
                    width: size.width,
                    child: Directionality(
                      textDirection: TextDirection.ltr,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          baseAppBar(size, context, "IQ Ecommerce App"),
                          SizedBox(height: 16),
                          state.sliderSection == null
                              ? Container(
                                  height: 210,
                                )
                              : state.sliderSection.items.isEmpty
                                  ? Container()
                                  : SliderSection(
                                      controller: controller,
                                      currentIndex: _currentPage,
                                      sliderItems: state.sliderSection.items,
                                    ),
                          SizedBox(
                            height: 20.h,
                          ),

                          ///categories
                          ( state.categoriesSection == null || state.categoriesSection.items.isEmpty)
                              ? Container(
                                  height: 120.h,
                                )
                              : CategoriesSection(
                                  categories: state.categoriesSection.items,
                                  title: state.categoriesSection.sectionTitle,
                                ),


                          ///best of the best
                          (state.bestProductsSection == null ||
                              state.bestProductsSection.items.isEmpty)?Container():
                          BestOfTheBestProducts(
                            title: state.bestProductsSection.sectionTitle,
                            bestProducts: state.bestProductsSection.items,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),

                          ///stores
                          (state.storesSection == null ||
                                  state.storesSection.items.isEmpty)
                              ? Container()
                              : StoresSection(
                                  stores: state.storesSection.items,
                                  title: state.storesSection.sectionTitle,
                                ),

                          ///best products
                          (state.productsSection == null ||
                              state.productsSection.items.isEmpty)?Container():
                          SizedBox(height: 20.h),
                          BestProductsSection(
                            products: state.productsSection.items,
                            title: state.productsSection.sectionTitle,
                          ),
                          SizedBox(height: 30.h)
                        ],
                      ),
                    ),
                  ),
                ),
                state.isLoading
                    ? Center(
                        child: CircularProgressIndicator(
                          color: Colors.green,
                        ),
                      )
                    : Container()
              ],
            ),
          );
        });
  }
}

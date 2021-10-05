library home_state;

import 'package:built_value/built_value.dart';
import 'package:iq_sample_app/model/section_model/section_model.dart';

part 'home_state.g.dart';


abstract class HomeState
implements Built<HomeState, HomeStateBuilder> {

  //fields go here

  bool get isLoading;

  SectionModel get sliderSection;
  SectionModel get categoriesSection;
  SectionModel get storesSection;
  SectionModel get productsSection;
  SectionModel get bestProductsSection;

  HomeState._();

  factory HomeState([updates(HomeStateBuilder b)]) = _$HomeState;
  factory HomeState.initial(){
    return HomeState((b)=>b..isLoading=false
    ..productsSection = null
    ..storesSection = null
    ..sliderSection = null
    ..categoriesSection = null
    ..bestProductsSection = null


    );
  }
}
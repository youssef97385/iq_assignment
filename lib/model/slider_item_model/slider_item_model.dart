library slider_item_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:iq_sample_app/model/serializer/serializer.dart';

part 'slider_item_model.g.dart';

abstract class SliderItemModel implements Built<SliderItemModel, SliderItemModelBuilder> {
  // fields go here

  String get title;

  String get subtitle;
@nullable
  String get image;
@nullable
  String get price;


  SliderItemModel._();

  factory SliderItemModel([updates(SliderItemModelBuilder b)]) = _$SliderItemModel;

  String toJson() {
    return json.encode(serializers.serializeWith(SliderItemModel.serializer, this));
  }

  static SliderItemModel fromJson(String jsonString) {
    return serializers.deserializeWith(SliderItemModel.serializer, json.decode(jsonString));
  }

  static Serializer<SliderItemModel> get serializer => _$sliderItemModelSerializer;
}
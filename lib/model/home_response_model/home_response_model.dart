library home_response_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:iq_sample_app/model/section_model/section_model.dart';
import 'package:iq_sample_app/model/serializer/serializer.dart';

part 'home_response_model.g.dart';

abstract class HomeResponseModel implements Built<HomeResponseModel, HomeResponseModelBuilder> {
  // fields go here
  @nullable
  BuiltList<SectionModel> get sections;

  HomeResponseModel._();

  factory HomeResponseModel([updates(HomeResponseModelBuilder b)]) = _$HomeResponseModel;

  String toJson() {
    return json.encode(serializers.serializeWith(HomeResponseModel.serializer, this));
  }

  static HomeResponseModel fromJson(String jsonString) {
    return serializers.deserializeWith(HomeResponseModel.serializer, json.decode(jsonString));
  }

  static Serializer<HomeResponseModel> get serializer => _$homeResponseModelSerializer;
}
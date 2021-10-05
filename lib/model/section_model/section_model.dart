library section_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:iq_sample_app/model/category_item_model/category_item_model.dart';
import 'package:iq_sample_app/model/item_model/item_model.dart';
import 'package:iq_sample_app/model/serializer/serializer.dart';
import 'package:iq_sample_app/model/slider_item_model/slider_item_model.dart';

part 'section_model.g.dart';

abstract class SectionModel implements Built<SectionModel, SectionModelBuilder> {
  // fields go here
  @nullable
  String get sectionType;
  @nullable
  String get sectionTitle;

  @BuiltValueField(wireName: "items")
  BuiltList<ItemModel> get items;


  SectionModel._();

  factory SectionModel([updates(SectionModelBuilder b)]) = _$SectionModel;

  String toJson() {
    return json.encode(serializers.serializeWith(SectionModel.serializer, this));
  }

  static SectionModel fromJson(String jsonString) {
    return serializers.deserializeWith(SectionModel.serializer, json.decode(jsonString));
  }

  static Serializer<SectionModel> get serializer => _$sectionModelSerializer;
}
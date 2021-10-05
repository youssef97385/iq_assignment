library category_item_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:iq_sample_app/model/serializer/serializer.dart';

part 'category_item_model.g.dart';

abstract class CategoryItemModel implements Built<CategoryItemModel, CategoryItemModelBuilder> {
  // fields go here
  @nullable
  String get title;
  @nullable
  String get image;

  CategoryItemModel._();

  factory CategoryItemModel([updates(CategoryItemModelBuilder b)]) = _$CategoryItemModel;

  String toJson() {
    return json.encode(serializers.serializeWith(CategoryItemModel.serializer, this));
  }

  static CategoryItemModel fromJson(String jsonString) {
    return serializers.deserializeWith(CategoryItemModel.serializer, json.decode(jsonString));
  }

  static Serializer<CategoryItemModel> get serializer => _$categoryItemModelSerializer;
}
library store_item_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:iq_sample_app/model/serializer/serializer.dart';

part 'store_item_model.g.dart';


abstract class StoreItemModel implements Built<StoreItemModel, StoreItemModelBuilder> {
  // fields go here
  @nullable
  String get item;
  @nullable
  String get image;

  StoreItemModel._();

  factory StoreItemModel([updates(StoreItemModelBuilder b)]) = _$StoreItemModel;

  String toJson() {
    return json.encode(serializers.serializeWith(StoreItemModel.serializer, this));
  }

  static StoreItemModel fromJson(String jsonString) {
    return serializers.deserializeWith(StoreItemModel.serializer, json.decode(jsonString));
  }

  static Serializer<StoreItemModel> get serializer => _$storeItemModelSerializer;
}
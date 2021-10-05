library item_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:iq_sample_app/model/serializer/serializer.dart';
import 'package:iq_sample_app/model/store_info_model/store_info_model.dart';

part 'item_model.g.dart';


abstract class ItemModel implements Built<ItemModel, ItemModelBuilder> {
  // fields go here



  @nullable
  String get title;
  @nullable
  String get subtitle;
  @nullable
  String get image;
  @nullable
  String get price;
  @nullable
  String get currency;
  @nullable
  String get attributes;
  @nullable
  @BuiltValueField(wireName: "is_warranty")
  bool get isWarranty;
  @nullable
  @BuiltValueField(wireName: "warranty_length")
  String get warrantyLength;
  @nullable
  @BuiltValueField(wireName: "warranty_duration")
  int get warrantyDuration;
  @nullable

  String get galleries;

  @nullable
  @BuiltValueField(wireName: "months_of_deduction")
  int get monthsOfDeduction;

  @nullable

  @BuiltValueField(wireName: "store_info")
  StoreInfoModel get storeInfo;
  ItemModel._();

  factory ItemModel([updates(ItemModelBuilder b)]) = _$ItemModel;

  String toJson() {
    return json.encode(serializers.serializeWith(ItemModel.serializer, this));
  }

  static ItemModel fromJson(String jsonString) {
    return serializers.deserializeWith(ItemModel.serializer, json.decode(jsonString));
  }

  static Serializer<ItemModel> get serializer => _$itemModelSerializer;
}
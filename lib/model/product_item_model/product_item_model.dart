library product_item_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:iq_sample_app/model/serializer/serializer.dart';

part 'product_item_model.g.dart';

abstract class ProductItemModel implements Built<ProductItemModel, ProductItemModelBuilder> {
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
  @BuiltValueField(wireName: "is_warranty")
  @nullable
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







  ProductItemModel._();

  factory ProductItemModel([updates(ProductItemModelBuilder b)]) = _$ProductItemModel;

  String toJson() {
    return json.encode(serializers.serializeWith(ProductItemModel.serializer, this));
  }

  static ProductItemModel fromJson(String jsonString) {
    return serializers.deserializeWith(ProductItemModel.serializer, json.decode(jsonString));
  }

  static Serializer<ProductItemModel> get serializer => _$productItemModelSerializer;
}
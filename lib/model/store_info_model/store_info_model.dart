library store_info_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:iq_sample_app/model/contact_model/contact_model.dart';
import 'package:iq_sample_app/model/serializer/serializer.dart';

part 'store_info_model.g.dart';

abstract class StoreInfoModel implements Built<StoreInfoModel, StoreInfoModelBuilder> {
  // fields go here
  @nullable
  String get name;
  @nullable
  String get picture;
  @nullable
  String get cover;
  @nullable
  String get website;
  @nullable
  String get email;
  @nullable
  @BuiltValueField(wireName: "phone_number")
  String get phoneNumber;
  @nullable
  String get bio;

  ContactModel get contact;

  StoreInfoModel._();

  factory StoreInfoModel([updates(StoreInfoModelBuilder b)]) = _$StoreInfoModel;

  String toJson() {
    return json.encode(serializers.serializeWith(StoreInfoModel.serializer, this));
  }

  static StoreInfoModel fromJson(String jsonString) {
    return serializers.deserializeWith(StoreInfoModel.serializer, json.decode(jsonString));
  }

  static Serializer<StoreInfoModel> get serializer => _$storeInfoModelSerializer;
}
library contact_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:iq_sample_app/model/serializer/serializer.dart';

part 'contact_model.g.dart';

abstract class ContactModel implements Built<ContactModel, ContactModelBuilder> {
  // fields go here

  String get address;
  String get location;
  String get long;
  String get lat;
  @BuiltValueField(wireName: "open_day")
  String get openDay;
  @BuiltValueField(wireName: "close_day")
  String get closedDay;
  @BuiltValueField(wireName: "open_hour")
  String get openHour;
  @BuiltValueField(wireName: "close_hour")
  String get closeHour;

  ContactModel._();

  factory ContactModel([updates(ContactModelBuilder b)]) = _$ContactModel;

  String toJson() {
    return json.encode(serializers.serializeWith(ContactModel.serializer, this));
  }

  static ContactModel fromJson(String jsonString) {
    return serializers.deserializeWith(ContactModel.serializer, json.decode(jsonString));
  }

  static Serializer<ContactModel> get serializer => _$contactModelSerializer;
}
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:iq_sample_app/model/home_response_model/home_response_model.dart';
import 'package:iq_sample_app/model/section_model/section_model.dart';

abstract class IHttpHelper {
  Future<bool> checkInternetConnection();
   Future<BuiltList<SectionModel>> getHomeSections();
}


import 'package:built_collection/built_collection.dart';
import 'package:iq_sample_app/data/db/models/item_model.dart';
import 'package:iq_sample_app/model/item_model/item_model.dart';
import 'package:iq_sample_app/model/section_model/section_model.dart';


abstract class IRepository {
  Future<bool> getIsLogin();

  Future<int> getAppLanguage();
  Future<void> setAppLanguage(int value);

  Future<BuiltList<SectionModel>> getHomeSections();




}

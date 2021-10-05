import 'package:built_collection/src/list.dart';
import 'package:iq_sample_app/data/db/models/item_model.dart';

import 'package:iq_sample_app/data/http_helper/Ihttp_helper.dart';
import 'package:iq_sample_app/data/prefs_helper/iprefs_helper.dart';

import 'package:iq_sample_app/data/db/db/db_services.dart';
import 'package:iq_sample_app/model/item_model/item_model.dart';
import 'package:iq_sample_app/model/section_model/section_model.dart';

import 'irepository.dart';

class Repository implements IRepository {
  IHttpHelper _ihttpHelper;
  IPrefsHelper _iprefHelper;

  DBService dbServices;

  Repository(this._ihttpHelper, this._iprefHelper, this.dbServices);

  @override
  Future<int> getAppLanguage() {
    // TODO: implement getAppLanguage
    throw UnimplementedError();
  }

  @override
  Future<bool> getIsLogin() async {
    return await false;
  }

  @override
  Future<void> setAppLanguage(int value) {
    // TODO: implement setAppLanguage
    throw UnimplementedError();
  }

  @override
  Future<BuiltList<SectionModel>> getHomeSections() async {
    var data = await _ihttpHelper.getHomeSections();
    for (SectionModel section in data) {
      dbServices.insertSection(section);
      insertItemBySectionType(sectionType: section.sectionType , sections: data);
    }

    return data;
  }

  Future<bool> insertItemBySectionType(
      {BuiltList<SectionModel> sections, String sectionType}) async {
    var inserted = false;
    var items = sections.firstWhere((data) => data.sectionType == sectionType);

    for (ItemModel item in items.items) {
      inserted = await dbServices.insertItem(item, sectionType);
    }

    return inserted;
  }


}

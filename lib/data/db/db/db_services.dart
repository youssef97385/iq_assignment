
import 'package:iq_sample_app/data/db/models/item_model.dart';
import 'package:iq_sample_app/model/item_model/item_model.dart';
import 'package:iq_sample_app/model/section_model/section_model.dart';

import 'db.dart';

class DBService {
  Future<List<Item>> getItems(
      {String sectionType}) async {
    try {
      await DB.init();
      List<Map<String, dynamic>> items = await DB.getItemsBySectionType(
          sectionType: sectionType);

      List<Item> itemsDemo =items.map((item) => Item.fromJson(item)).toList();

      print("tssst $itemsDemo");
      return itemsDemo;
    } catch (e) {
      print("db services $e");
      throw Exception();

    }
  }

  Future<bool> insertItem(ItemModel model, String sectionType) async {
    await DB.init();

    bool isSaved = false;

    if (model != null) {
      int inserted =
      await DB.insertItem(sectionType: sectionType,item: model);

      isSaved = inserted == 1;
    }

    return isSaved;
  }

  Future<bool> insertSection (SectionModel model) async {
    await DB.init();

    bool isSaved = false;

    if (model != null) {
      int inserted =
      await DB.insertSection(section: model);

      isSaved = inserted == 1;
    }

    return isSaved;
  }


}

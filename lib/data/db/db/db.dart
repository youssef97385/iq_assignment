import 'dart:async';

import 'package:iq_sample_app/model/item_model/item_model.dart';
import 'package:iq_sample_app/model/section_model/section_model.dart';
import 'package:path/path.dart' as p;
import 'package:sqflite/sqflite.dart';

abstract class DB {
  static Database _db;

  static int get _version => 1;

  static Future<void> init() async {
    if (_db != null) {
      return;
    }

    try {
      var databasesPath = await getDatabasesPath();
      String _path = p.join(databasesPath, 'crud.db');
      _db = await openDatabase(_path, version: _version, onCreate: onCreate);
    } catch (ex) {
      print(ex);
    }
  }

  static void onCreate(Database db, int version) async {
    await db.execute('CREATE TABLE sections ('
        'sectionId INTEGER PRIMARY KEY AUTOINCREMENT, '
        'sectionType TEXT ,'
        ' sectionTitle TEXT)');

    await db.execute('CREATE TABLE items ('
        'id INTEGER PRIMARY KEY AUTOINCREMENT, '
        ' title TEXT , '
        'subtitle TEXT ,'
        ' image TEXT ,'
        ' price TEXT , '
        'currency TEXT ,'
        ' sectionType TEXT)');
  }

  static Future<int> insertSection({SectionModel section}) async {
    String query =
        "INSERT INTO sections (sectionType , sectionTitle ) VALUES('${section.sectionType}' , '${section.sectionTitle}')";
    await _db.rawInsert(query);
    return await _db.rawInsert(query);
  }

  static Future<int> insertItem({ItemModel item, String sectionType}) async {
    String query =
        "INSERT INTO items (title , subtitle , image ,price ,currency , sectionType ) VALUES('${item.title}' , '${item.subtitle}' ,'${item.image}' , '${item.price}' , '${item.currency}' , '$sectionType')";
    await _db.rawInsert(query);
    return await _db.rawInsert(query);
  }


  static getAllSections() async {


    String query = "SELECT * FROM sections";

    List<Map> result = await _db.rawQuery(query);

    return result;
  }

  static getItemsBySectionType({String sectionType}) async {
    String query =
        "SELECT * FROM items where lower(sectionType) = '${sectionType.toLowerCase()}'";
    List<Map> result = await _db.rawQuery(query);
    return result;
  }
}

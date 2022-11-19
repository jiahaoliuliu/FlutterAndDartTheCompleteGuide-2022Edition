import 'package:sqflite/sqflite.dart' as sql;
// import 'package:sqflite/sql.dart';
import 'package:path/path.dart' as path;
// import 'package:sqflite_common/sql.dart' show ConflictAlgorithm;
// import 'package:sqflite/src/compat.dart';
// import 'package:sqflite/src/constant.dart';
// import 'package:sqflite/src/factory_impl.dart' show databaseFactory;
// import 'package:sqflite/src/sqflite_impl.dart';
// import 'package:sqflite/src/utils.dart' as impl;
// import 'package:sqflite/utils/utils.dart' as utils;

import 'package:sqflite/sqlite_api.dart';

class DBHelper {
  static Future<Database> database() async {
    // Open the dabase
    final dbPath = await sql.getDatabasesPath();
    // If the database does not exists, create it
    return sql.openDatabase(path.join(dbPath, 'places.db'),
        onCreate: (db, version) {
      return db.execute(
          'CREATE TABLE user_places(id TEXT PRIMARY KEY, title TEXT, image TEXT)');
    }, version: 1);
  }

  static Future<void> insert(String table, Map<String, Object> data) async {
    // Insert item into the database
    final db = await DBHelper.database();
    db.insert(
      table,
      data,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<Map<String, dynamic>>> getData(String table) async {
    final db = await DBHelper.database();
    return db.query(table);
  }
}

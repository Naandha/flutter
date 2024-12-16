import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart' as sql;

class SqfHelper {
  static Future<sql.Database> regData() async {
    return sql.openDatabase(
      'regData.db',
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await createTable(database);
      },
    );
  }

  static Future<void> createTable(sql.Database database) async {
    await database.execute('''
      CREATE TABLE RegData(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        name TEXT,
        username TEXT,
        password TEXT,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )
    ''');
  }



  static Future<void> Admin(sql.Database database) async {
    const String adminUsername = 'admin@gmail.com';
    const String adminPassword = 'admin1';

    await database.insert('RegData', {
      'username': adminUsername,
      'password': adminPassword,
    }, conflictAlgorithm: sql.ConflictAlgorithm.replace);
  }



  static Future<int> addUser(
      String name, String username, String password) async {
    final db = await SqfHelper.regData();
    final data = {'name': name, 'username': username, 'password': password};
    final id = await db.insert('RegData', data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }
  // DB.QUERY
  // static Future<List<Map<String, dynamic>>> getUser() async {
  //   final db = await SqfHelper.regData();
  //   return db.query('RegData', orderBy: 'id');
  // }

  // RAW QUERY
  static Future<List<Map<String, dynamic>>> getUser() async {
    final db = await SqfHelper.regData();
    return db.rawQuery('SELECT * FROM RegData ORDER BY id');
  }

  static Future<bool> UserExists(String username) async {
    final db = await SqfHelper.regData();
    final result =
    await db.query('RegData', where: "username = ?", whereArgs: [username]);
    return result.isNotEmpty;
  }

  static Future<Map<String, dynamic>?> checkUser(String username, String password) async {
    final db = await SqfHelper.regData();
    final List<Map<String, dynamic>> result = await db.query(
      'RegData',
      where: 'username = ? AND password = ?',
      whereArgs: [username, password],
    );
    return result.isNotEmpty ? result.first : null;
  }


  static Future<void> deleteUser(int id) async {
    final db = await SqfHelper.regData();
    try {
      await db.delete("RegData", where: 'id=?', whereArgs: [id]);
    }
    catch(err) {
      debugPrint("Something went wrong!");
    }
  }



}
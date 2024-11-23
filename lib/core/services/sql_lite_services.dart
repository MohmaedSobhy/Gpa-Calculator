import 'package:gpa_culator/core/services/column_keys.dart';
import 'package:gpa_culator/feature/subjects_grades/data/model/subject_model.dart';
import 'package:sqflite/sqflite.dart';

import 'package:path_provider/path_provider.dart';

import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';

class AppData {
  static Database? _db;

  //getter to initialize database if there's no initial database
  static Future<Database?> get db async {
    if (_db == null) {
      _db = await initialDB();
      return _db;
    } else {
      return _db;
    }
  }

  //initialize DB
  static initialDB() async {
    io.Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, "Task.db");
    var myDB = await openDatabase(path, version: 1, onCreate: _onCreate);
    return myDB;
  }

  //Create DB
  static _onCreate(Database db, int version) async {
    await db.execute('CREATE TABLE Task ('
        '${ColumnKey.id} INTEGER PRIMARY KEY AUTOINCREMENT, '
        '${ColumnKey.subjectName} TEXT NOT NULL, ${ColumnKey.subjectGrade} TEXT NOT NULL, ${ColumnKey.credits} INTEGER NOT NULL)');
  }

  //Insert in DB
  static Future<int> insertDB(Map<String, dynamic> data) async {
    Database? dbClient = await db;
    var result = await dbClient!.insert("Task", data);
    return result;
  }

  static Future<List<SubjectModel>> getAllSubjects() async {
    List<SubjectModel> subjects = [];
    Database? dbClient = await db;
    var result = await dbClient!.rawQuery("SELECT * FROM Task");
    for (var subject in result) {
      subjects.add(SubjectModel.fromJson(subject));
    }

    return subjects;
  }
}

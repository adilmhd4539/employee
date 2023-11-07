import 'package:employee__app/resources/app_constants.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbServices {
  static Future<Database> db() async {
    return openDatabase(join(await getDatabasesPath(), 'employeeDb.db'),
        onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE ${TableNames.employee}(id INTEGER PRIMARY KEY, name TEXT, role TEXT,fromDt NUMERIC,toDt NUMERIC)',
      );
    }, version: 1);
  }
}


import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseProvider {
  DatabaseProvider._();

  static DatabaseProvider db = DatabaseProvider._();
  Database? database;
  late String path;

  Future<Database?> get databasedetail async {
    if (database != null) {
      return database;
    }
    database = await CreateDatabase();
    return database;
  }

  String tablecreat = 'CREATE TABLE '
      'USER('
      'id INTEGER PRIMARY KEY AUTOINCREMENT,'
      'Uname TEXT,'
      'Email TEXT,'
      'Password TEXT,'
      'MobileNo TEXT)';

  Future<Database?> CreateDatabase() async {
    String dbpath = await getDatabasesPath();
    path = join(dbpath, 'demo.db');
    return await openDatabase(path, version: 1,
        onCreate: (Database database, int version) async {
      await database.execute(tablecreat);
    });
  }

}

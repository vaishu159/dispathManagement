import 'package:dispatch_management_system/database_helper/models/customer_details.dart';
import 'package:drift/drift.dart';
import 'package:drift/web.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [CustomerDetails])
class AppDatabase extends _$AppDatabase {
  AppDatabase._internal() : super(_openConnection());
  static final AppDatabase _instance = AppDatabase._internal();

  factory AppDatabase() => _instance;

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    if (kIsWeb) {
      return WebDatabase('my_database');
    } else {
      final dir = await getApplicationDocumentsDirectory();
      final dbPath = p.join(dir.path, 'app.db');

      final db = WebDatabase(dbPath);
      return db;
    }
  });
}

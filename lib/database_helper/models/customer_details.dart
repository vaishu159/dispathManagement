import 'package:dispatch_management_system/database_helper/app_database.dart';
import 'package:drift/drift.dart';

class CustomerDetails extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
}

class CustomerModelService {
  AppDatabase db = AppDatabase();

  Future<int> save(CustomerDetailsCompanion user) {
    return db.into(db.customerDetails).insert(user);
  }

  Future<List<CustomerDetail>> fetchAll() {
    return db.select(db.customerDetails).get();
  }
}

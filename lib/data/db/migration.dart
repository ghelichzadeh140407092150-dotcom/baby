// data/db/migration.dart
import 'package:drift/drift.dart';
import 'app_database.dart';

/// Run database migrations
Future<void> runMigrations(AppDatabase database) async {
  await database.migrator.migrate();
}

/// Migration helper for future schema versions
/// 
/// When upgrading schema version in app_database.dart, add migration logic here:
/// 
/// Example:
/// if (from < 2) {
///   await m.addColumn(children, children.newColumn);
/// }
/// if (from < 3) {
///   await m.createTable(newTable);
/// }
/// 
/// This function is called automatically by Drift's migration strategy.
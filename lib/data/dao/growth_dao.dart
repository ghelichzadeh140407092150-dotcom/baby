// data/dao/growth_dao.dart
import 'package:drift/drift.dart';
import '../db/app_database.dart';

part 'growth_dao.g.dart';

@DriftAccessor(tables: [GrowthEntries])
class GrowthDao extends DatabaseAccessor<AppDatabase> with _$GrowthDaoMixin {
  GrowthDao(super.db);

  /// Insert a growth entry
  Future<void> insertEntry(GrowthEntriesCompanion entry) => into(growthEntries).insert(entry);

  /// Get all growth entries for a child, ordered by date desc
  Future<List<GrowthEntry>> getEntriesForChild(String childId) =>
      (select(growthEntries)
        ..where((e) => e.childId.equals(childId))
        ..orderBy([(e) => OrderingTerm.desc(e.measuredAt)]))
          .get();

  /// Get latest growth entry for a child
  Future<GrowthEntry?> getLatestEntry(String childId) =>
      (select(growthEntries)
        ..where((e) => e.childId.equals(childId))
        ..orderBy([(e) => OrderingTerm.desc(e.measuredAt)])
        ..limit(1))
          .getSingleOrNull();

  /// Get growth entries for a specific metric
  Future<List<GrowthEntry>> getEntriesForMetric(
    String childId,
    String metric, // 'heightCm', 'weightKg', 'headCircumferenceCm'
  ) {
    final query = select(growthEntries)
      ..where((e) => e.childId.equals(childId))
      ..orderBy([(e) => OrderingTerm.asc(e.measuredAt)]);
    
    // Filter out null values for the specific metric
    switch (metric) {
      case 'heightCm':
        query.where((e) => e.heightCm.isNotNull());
        break;
      case 'weightKg':
        query.where((e) => e.weightKg.isNotNull());
        break;
      case 'headCircumferenceCm':
        query.where((e) => e.headCircumferenceCm.isNotNull());
        break;
    }
    
    return query.get();
  }

  /// Update entry
  Future<bool> updateEntry(GrowthEntriesCompanion entry) => 
      update(growthEntries).replace(entry);

  /// Delete entry
  Future<int> deleteEntry(String id) => 
      (delete(growthEntries)..where((e) => e.id.equals(id))).go();

  /// Watch entries for child
  Stream<List<GrowthEntry>> watchEntriesForChild(String childId) =>
      (select(growthEntries)
        ..where((e) => e.childId.equals(childId))
        ..orderBy([(e) => OrderingTerm.desc(e.measuredAt)]))
          .watch();
}
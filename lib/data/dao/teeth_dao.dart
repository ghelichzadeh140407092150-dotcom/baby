// data/dao/teeth_dao.dart
import 'package:drift/drift.dart';
import '../db/app_database.dart';

part 'teeth_dao.g.dart';

@DriftAccessor(tables: [Teeth])
class TeethDao extends DatabaseAccessor<AppDatabase> with _$TeethDaoMixin {
  TeethDao(super.db);

  /// Insert a tooth eruption record
  Future<void> insertTooth(TeethCompanion tooth) => into(teeth).insert(tooth);

  /// Get all teeth for a child
  Future<List<TeethData>> getTeethForChild(String childId) =>
      (select(teeth)
        ..where((t) => t.childId.equals(childId))
        ..orderBy([(t) => OrderingTerm.asc(t.eruptedAt)]))
          .get();

  /// Get a specific tooth
  Future<TeethData?> getTooth(String childId, String toothCode) =>
      (select(teeth)
        ..where((t) => t.childId.equals(childId) & t.toothCode.equals(toothCode)))
          .getSingleOrNull();

  /// Check if a tooth has erupted
  Future<bool> hasErupted(String childId, String toothCode) async {
    final tooth = await getTooth(childId, toothCode);
    return tooth != null;
  }

  /// Update eruption date
  Future<int> updateEruptionDate(String childId, String toothCode, DateTime date) =>
      (update(teeth)
        ..where((t) => t.childId.equals(childId) & t.toothCode.equals(toothCode)))
          .write(TeethCompanion(eruptedAt: Value(date)));

  /// Delete tooth record
  Future<int> deleteTooth(String childId, String toothCode) =>
      (delete(teeth)..where((t) => t.childId.equals(childId) & t.toothCode.equals(toothCode))).go();

  /// Watch teeth for child
  Stream<List<TeethData>> watchTeethForChild(String childId) =>
      (select(teeth)
        ..where((t) => t.childId.equals(childId))
        ..orderBy([(t) => OrderingTerm.asc(t.eruptedAt)]))
          .watch();
}
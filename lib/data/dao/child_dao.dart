// data/dao/child_dao.dart
import 'package:drift/drift.dart';
import '../db/app_database.dart';

part 'child_dao.g.dart';

@DriftAccessor(tables: [Children])
class ChildDao extends DatabaseAccessor<AppDatabase> with _$ChildDaoMixin {
  ChildDao(super.db);

  /// Insert a new child
  Future<void> insertChild(ChildrenCompanion child) => into(children).insert(child);

  /// Get child by ID
  Future<ChildrenData?> getChildById(String id) => 
      (select(children)..where((c) => c.id.equals(id))).getSingleOrNull();

  /// Get all children ordered by creation date
  Future<List<ChildrenData>> getAllChildren() => 
      (select(children)..orderBy([(c) => OrderingTerm.desc(c.createdAt)])).get();

  /// Update child
  Future<bool> updateChild(ChildrenCompanion child) => 
      update(children).replace(child);

  /// Delete child
  Future<int> deleteChild(String id) => 
      (delete(children)..where((c) => c.id.equals(id))).go();

  /// Watch all children as stream
  Stream<List<ChildrenData>> watchAllChildren() => 
      (select(children)..orderBy([(c) => OrderingTerm.desc(c.createdAt)])).watch();

  /// Watch single child
  Stream<ChildrenData?> watchChild(String id) => 
      (select(children)..where((c) => c.id.equals(id))).watchSingleOrNull();
}
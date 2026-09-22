// data/dao/milestone_dao.dart
import 'package:drift/drift.dart';
import '../db/app_database.dart';

@DriftAccessor(tables: [Milestones])
class MilestoneDao extends DatabaseAccessor<AppDatabase> with _$MilestoneDaoMixin {
  MilestoneDao(super.db);

  /// Insert a milestone
  Future<void> insertMilestone(MilestonesCompanion milestone) => into(milestones).insert(milestone);

  /// Insert multiple milestones
  Future<void> insertMilestones(List<MilestonesCompanion> milestonesList) => batch((batch) {
    batch.insertAll(milestones, milestonesList);
  });

  /// Get all milestones for a child
  Future<List<Milestone>> getMilestonesForChild(String childId) =>
      (select(milestones)
        ..where((m) => m.childId.equals(childId))
        ..orderBy([
          (m) => OrderingTerm.asc(m.expectedAgeMonthsMin),
          (m) => OrderingTerm.asc(m.milestoneCode),
        ]))
          .get();

  /// Get milestone by code
  Future<Milestone?> getMilestone(String childId, String milestoneCode) =>
      (select(milestones)
        ..where((m) => m.childId.equals(childId) & m.milestoneCode.equals(milestoneCode)))
          .getSingleOrNull();

  /// Mark milestone as achieved
  Future<bool> markAchieved(String childId, String milestoneCode, DateTime achievedAt) =>
      (update(milestones)
        ..where((m) => m.childId.equals(childId) & m.milestoneCode.equals(milestoneCode)))
          .write(MilestonesCompanion(achievedAt: Value(achievedAt)));

  /// Unmark milestone
  Future<bool> unmarkAchieved(String childId, String milestoneCode) =>
      (update(milestones)
        ..where((m) => m.childId.equals(childId) & m.milestoneCode.equals(milestoneCode)))
          .write(const MilestonesCompanion(achievedAt: Value.absent()));

  /// Watch milestones for child
  Stream<List<Milestone>> watchMilestonesForChild(String childId) =>
      (select(milestones)
        ..where((m) => m.childId.equals(childId))
        ..orderBy([(m) => OrderingTerm.asc(m.expectedAgeMonthsMin)]))
          .watch();
}
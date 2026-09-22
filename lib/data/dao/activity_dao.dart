// data/dao/activity_dao.dart
import 'package:drift/drift.dart';
import '../db/app_database.dart';

@DriftAccessor(tables: [ActivityLog])
class ActivityDao extends DatabaseAccessor<AppDatabase> with _$ActivityDaoMixin {
  ActivityDao(super.db);

  /// Insert an activity log entry
  Future<void> insertActivity(ActivityLogCompanion activity) => into(activityLog).insert(activity);

  /// Get activities for a child
  Future<List<ActivityLogData>> getActivitiesForChild(String childId, {int? limit}) =>
      (select(activityLog)
        ..where((a) => a.childId.equals(childId))
        ..orderBy([(a) => OrderingTerm.desc(a.completedAt)])
        ..limit(limit ?? 100))
          .get();

  /// Get activities by type
  Future<List<ActivityLogData>> getActivitiesByType(String childId, String contentType, {int? limit}) =>
      (select(activityLog)
        ..where((a) => a.childId.equals(childId) & a.contentType.equals(contentType))
        ..orderBy([(a) => OrderingTerm.desc(a.completedAt)])
        ..limit(limit ?? 100))
          .get();

  /// Get favorite activities
  Future<List<ActivityLogData>> getFavorites(String childId) =>
      (select(activityLog)
        ..where((a) => a.childId.equals(childId) & a.favorited.equals(true))
        ..orderBy([(a) => OrderingTerm.desc(a.completedAt)]))
          .get();

  /// Check if content was completed today
  Future<bool> wasCompletedToday(String childId, String contentId) async {
    final today = DateTime.now();
    final startOfDay = DateTime(today.year, today.month, today.day);
    final endOfDay = startOfDay.add(const Duration(days: 1));
    
    final activity = await (select(activityLog)
      ..where((a) => a.childId.equals(childId) 
        & a.contentId.equals(contentId)
        & a.completedAt.isBetweenValues(startOfDay, endOfDay))
      ..limit(1))
      .getSingleOrNull();
    
    return activity != null;
  }

  /// Toggle favorite
  Future<bool> toggleFavorite(String id, bool favorited) =>
      (update(activityLog)..where((a) => a.id.equals(id)))
          .write(ActivityLogCompanion(favorited: Value(favorited)));

  /// Watch activities for child
  Stream<List<ActivityLogData>> watchActivitiesForChild(String childId) =>
      (select(activityLog)
        ..where((a) => a.childId.equals(childId))
        ..orderBy([(a) => OrderingTerm.desc(a.completedAt)]))
          .watch();
}
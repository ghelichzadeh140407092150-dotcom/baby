// data/dao/sleep_feed_dao.dart
import 'package:drift/drift.dart';
import '../db/app_database.dart';

part 'sleep_feed_dao.g.dart';

@DriftAccessor(tables: [SleepFeedLog])
class SleepFeedDao extends DatabaseAccessor<AppDatabase> with _$SleepFeedDaoMixin {
  SleepFeedDao(super.db);

  /// Insert a sleep/feed log entry
  Future<void> insertLog(SleepFeedLogCompanion log) => into(sleepFeedLog).insert(log);

  /// Get logs for a child
  Future<List<SleepFeedLogData>> getLogsForChild(String childId, {int? limit}) =>
      (select(sleepFeedLog)
        ..where((l) => l.childId.equals(childId))
        ..orderBy([(l) => OrderingTerm.desc(l.startedAt)])
        ..limit(limit ?? 100))
          .get();

  /// Get logs by type
  Future<List<SleepFeedLogData>> getLogsByType(String childId, SleepFeedType type, {int? limit}) =>
      (select(sleepFeedLog)
        ..where((l) => l.childId.equals(childId) & l.type.equals(type.name))
        ..orderBy([(l) => OrderingTerm.desc(l.startedAt)])
        ..limit(limit ?? 100))
          .get();

  /// Get active sleep session (no end time)
  Future<SleepFeedLogData?> getActiveSleepSession(String childId) =>
      (select(sleepFeedLog)
        ..where((l) => l.childId.equals(childId) 
          & l.type.equals(SleepFeedType.sleep.name)
          & l.endedAt.isNull())
        ..orderBy([(l) => OrderingTerm.desc(l.startedAt)])
        ..limit(1))
          .getSingleOrNull();

  /// Get active feed session
  Future<SleepFeedLogData?> getActiveFeedSession(String childId) =>
      (select(sleepFeedLog)
        ..where((l) => l.childId.equals(childId) 
          & l.type.equals(SleepFeedType.feed.name)
          & l.endedAt.isNull())
        ..orderBy([(l) => OrderingTerm.desc(l.startedAt)])
        ..limit(1))
          .getSingleOrNull();

  /// End a session
  Future<int> endSession(String id, DateTime endedAt, {double? quantity}) =>
      (update(sleepFeedLog)..where((l) => l.id.equals(id)))
          .write(SleepFeedLogCompanion(
            endedAt: Value(endedAt),
            quantity: Value(quantity),
          ));

  /// Get weekly stats
  Future<Map<String, dynamic>> getWeeklyStats(String childId) async {
    final weekAgo = DateTime.now().subtract(const Duration(days: 7));
    
    final sleepLogs = await (select(sleepFeedLog)
      ..where((l) => l.childId.equals(childId) 
        & l.type.equals(SleepFeedType.sleep.name)
        & l.startedAt.isBiggerOrEqualValue(weekAgo))
      ..orderBy([(l) => OrderingTerm.asc(l.startedAt)]))
      .get();
    
    final feedLogs = await (select(sleepFeedLog)
      ..where((l) => l.childId.equals(childId) 
        & l.type.equals(SleepFeedType.feed.name)
        & l.startedAt.isBiggerOrEqualValue(weekAgo))
      ..orderBy([(l) => OrderingTerm.asc(l.startedAt)]))
      .get();
    
    double totalSleepHours = 0;
    for (final log in sleepLogs) {
      if (log.endedAt != null) {
        totalSleepHours += log.endedAt!.difference(log.startedAt).inMinutes / 60;
      }
    }
    
    int totalFeeds = feedLogs.length;
    double totalFeedVolume = feedLogs
        .where((l) => l.quantity != null)
        .fold(0, (sum, l) => sum + (l.quantity ?? 0));
    
    return {
      'totalSleepHours': totalSleepHours,
      'totalFeeds': totalFeeds,
      'totalFeedVolume': totalFeedVolume,
      'sleepSessions': sleepLogs.length,
    };
  }

  /// Watch logs for child
  Stream<List<SleepFeedLogData>> watchLogsForChild(String childId) =>
      (select(sleepFeedLog)
        ..where((l) => l.childId.equals(childId))
        ..orderBy([(l) => OrderingTerm.desc(l.startedAt)]))
          .watch();
}
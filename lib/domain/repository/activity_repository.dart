// domain/repository/activity_repository.dart
import 'package:hamrah_madaran/core/error/result.dart';
import '../entity/activity.dart';

abstract class ActivityRepository {
  Future<Result<ActivityLog>> logActivity(ActivityLog activity);
  Future<Result<List<ActivityLog>>> getActivities(String childId, {int? limit});
  Future<Result<List<ActivityLog>>> getActivitiesByType(String childId, String contentType, {int? limit});
  Future<Result<List<ActivityLog>>> getFavorites(String childId);
  Future<Result<bool>> wasCompletedToday(String childId, String contentId);
  Future<Result<ActivityLog>> toggleFavorite(String id, bool favorited);
  Stream<Result<List<ActivityLog>>> watchActivities(String childId);
}
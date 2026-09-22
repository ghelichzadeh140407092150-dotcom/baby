// data/repository/activity_repository_impl.dart
import 'package:hamrah_madaran/core/error/result.dart';
import 'package:hamrah_madaran/data/dao/activity_dao.dart';
import 'package:hamrah_madaran/domain/entity/activity.dart';
import 'package:hamrah_madaran/domain/repository/activity_repository.dart';

class ActivityRepositoryImpl implements ActivityRepository {
  final ActivityDao _dao;

  ActivityRepositoryImpl(this._dao);

  @override
  Future<Result<ActivityLog>> logActivity(ActivityLog activity) async {
    try {
      await _dao.insertActivity(ActivityLogCompanion.insert(
        id: activity.id,
        childId: activity.childId,
        contentId: activity.contentId,
        contentType: activity.contentType,
        completedAt: activity.completedAt,
        favorited: Value(activity.favorited),
      ));
      return Success(activity);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<List<ActivityLog>>> getActivities(String childId, {int? limit}) async {
    try {
      final activities = await _dao.getActivitiesForChild(childId, limit: limit);
      return Success(activities);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<List<ActivityLog>>> getActivitiesByType(
    String childId, 
    String contentType, 
    {int? limit}
  ) async {
    try {
      final activities = await _dao.getActivitiesByType(childId, contentType, limit: limit);
      return Success(activities);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<List<ActivityLog>>> getFavorites(String childId) async {
    try {
      final favorites = await _dao.getFavorites(childId);
      return Success(favorites);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<bool>> wasCompletedToday(String childId, String contentId) async {
    try {
      final completed = await _dao.wasCompletedToday(childId, contentId);
      return Success(completed);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<ActivityLog>> toggleFavorite(String id, bool favorited) async {
    try {
      await _dao.toggleFavorite(id, favorited);
      // Note: We'd need to fetch the updated activity to return it
      // For now, return a placeholder
      return Success(ActivityLog(
        id: id,
        childId: '',
        contentId: '',
        contentType: '',
        completedAt: DateTime.now(),
        favorited: favorited,
      ));
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Stream<Result<List<ActivityLog>>> watchActivities(String childId) {
    return _dao.watchActivitiesForChild(childId).map((activities) => Success(activities))
        .handleError((e) => Failure(e));
  }
}
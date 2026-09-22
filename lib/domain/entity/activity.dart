// domain/entity/activity.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity.freezed.dart';
part 'activity.g.dart';

@freezed
class ActivityLog with _$ActivityLog {
  const factory ActivityLog({
    required String id,
    required String childId,
    required String contentId,
    required String contentType, // game, story, craft
    required DateTime completedAt,
    @Default(false) bool favorited,
  }) = _ActivityLog;

  factory ActivityLog.fromJson(Map<String, dynamic> json) => _$ActivityLogFromJson(json);
}

@freezed
class SleepFeedLog with _$SleepFeedLog {
  const factory SleepFeedLog({
    required String id,
    required String childId,
    required String type, // sleep, feed
    required DateTime startedAt,
    DateTime? endedAt,
    double? quantity,
  }) = _SleepFeedLog;

  factory SleepFeedLog.fromJson(Map<String, dynamic> json) => _$SleepFeedLogFromJson(json);
}
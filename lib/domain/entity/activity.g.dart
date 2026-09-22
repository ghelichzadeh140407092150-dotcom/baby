// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityLogImpl _$$ActivityLogImplFromJson(Map<String, dynamic> json) =>
    _$ActivityLogImpl(
      id: json['id'] as String,
      childId: json['childId'] as String,
      contentId: json['contentId'] as String,
      contentType: json['contentType'] as String,
      completedAt: DateTime.parse(json['completedAt'] as String),
      favorited: json['favorited'] as bool? ?? false,
    );

Map<String, dynamic> _$$ActivityLogImplToJson(_$ActivityLogImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'childId': instance.childId,
      'contentId': instance.contentId,
      'contentType': instance.contentType,
      'completedAt': instance.completedAt.toIso8601String(),
      'favorited': instance.favorited,
    };

_$SleepFeedLogImpl _$$SleepFeedLogImplFromJson(Map<String, dynamic> json) =>
    _$SleepFeedLogImpl(
      id: json['id'] as String,
      childId: json['childId'] as String,
      type: json['type'] as String,
      startedAt: DateTime.parse(json['startedAt'] as String),
      endedAt: json['endedAt'] == null
          ? null
          : DateTime.parse(json['endedAt'] as String),
      quantity: (json['quantity'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SleepFeedLogImplToJson(_$SleepFeedLogImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'childId': instance.childId,
      'type': instance.type,
      'startedAt': instance.startedAt.toIso8601String(),
      'endedAt': instance.endedAt?.toIso8601String(),
      'quantity': instance.quantity,
    };

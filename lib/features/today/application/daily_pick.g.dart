// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_pick.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyPickResultImpl _$$DailyPickResultImplFromJson(
        Map<String, dynamic> json) =>
    _$DailyPickResultImpl(
      game: json['game'] == null
          ? null
          : Game.fromJson(json['game'] as Map<String, dynamic>),
      story: json['story'] == null
          ? null
          : Story.fromJson(json['story'] as Map<String, dynamic>),
      craft: json['craft'] == null
          ? null
          : Craft.fromJson(json['craft'] as Map<String, dynamic>),
      date: DateTime.parse(json['date'] as String),
      ageInDays: (json['ageInDays'] as num).toInt(),
      childId: json['childId'] as String,
    );

Map<String, dynamic> _$$DailyPickResultImplToJson(
        _$DailyPickResultImpl instance) =>
    <String, dynamic>{
      'game': instance.game,
      'story': instance.story,
      'craft': instance.craft,
      'date': instance.date.toIso8601String(),
      'ageInDays': instance.ageInDays,
      'childId': instance.childId,
    };

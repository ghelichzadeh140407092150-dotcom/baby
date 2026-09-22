// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'today_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodayStateImpl _$$TodayStateImplFromJson(Map<String, dynamic> json) =>
    _$TodayStateImpl(
      game: json['game'] == null
          ? null
          : Game.fromJson(json['game'] as Map<String, dynamic>),
      story: json['story'] == null
          ? null
          : Story.fromJson(json['story'] as Map<String, dynamic>),
      craft: json['craft'] == null
          ? null
          : Craft.fromJson(json['craft'] as Map<String, dynamic>),
      vaccineReminder: json['vaccineReminder'] as String?,
      measurementReminder: json['measurementReminder'] as String?,
      isLoading: json['isLoading'] as bool,
      error: json['error'] as String?,
      date: DateTime.parse(json['date'] as String),
      childAgeInDays: (json['childAgeInDays'] as num).toInt(),
      childAgeInMonths: (json['childAgeInMonths'] as num).toInt(),
      childName: json['childName'] as String,
    );

Map<String, dynamic> _$$TodayStateImplToJson(_$TodayStateImpl instance) =>
    <String, dynamic>{
      'game': instance.game,
      'story': instance.story,
      'craft': instance.craft,
      'vaccineReminder': instance.vaccineReminder,
      'measurementReminder': instance.measurementReminder,
      'isLoading': instance.isLoading,
      'error': instance.error,
      'date': instance.date.toIso8601String(),
      'childAgeInDays': instance.childAgeInDays,
      'childAgeInMonths': instance.childAgeInMonths,
      'childName': instance.childName,
    };

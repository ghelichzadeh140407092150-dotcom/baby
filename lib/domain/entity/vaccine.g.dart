// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaccine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VaccineDoseImpl _$$VaccineDoseImplFromJson(Map<String, dynamic> json) =>
    _$VaccineDoseImpl(
      id: json['id'] as String,
      childId: json['childId'] as String,
      vaccineCode: json['vaccineCode'] as String,
      doseNumber: (json['doseNumber'] as num).toInt(),
      scheduledAgeDays: (json['scheduledAgeDays'] as num).toInt(),
      dueDate: DateTime.parse(json['dueDate'] as String),
      administeredAt: json['administeredAt'] == null
          ? null
          : DateTime.parse(json['administeredAt'] as String),
      skipped: json['skipped'] as bool? ?? false,
      note: json['note'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$VaccineDoseImplToJson(_$VaccineDoseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'childId': instance.childId,
      'vaccineCode': instance.vaccineCode,
      'doseNumber': instance.doseNumber,
      'scheduledAgeDays': instance.scheduledAgeDays,
      'dueDate': instance.dueDate.toIso8601String(),
      'administeredAt': instance.administeredAt?.toIso8601String(),
      'skipped': instance.skipped,
      'note': instance.note,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$VaccineScheduleImpl _$$VaccineScheduleImplFromJson(
        Map<String, dynamic> json) =>
    _$VaccineScheduleImpl(
      vaccineCode: json['vaccineCode'] as String,
      farsiName: json['farsiName'] as String,
      doses: (json['doses'] as List<dynamic>)
          .map((e) => VaccineDoseInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VaccineScheduleImplToJson(
        _$VaccineScheduleImpl instance) =>
    <String, dynamic>{
      'vaccineCode': instance.vaccineCode,
      'farsiName': instance.farsiName,
      'doses': instance.doses,
    };

_$VaccineDoseInfoImpl _$$VaccineDoseInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$VaccineDoseInfoImpl(
      doseNumber: (json['doseNumber'] as num).toInt(),
      scheduledAgeDays: (json['scheduledAgeDays'] as num).toInt(),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$VaccineDoseInfoImplToJson(
        _$VaccineDoseInfoImpl instance) =>
    <String, dynamic>{
      'doseNumber': instance.doseNumber,
      'scheduledAgeDays': instance.scheduledAgeDays,
      'notes': instance.notes,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'growth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GrowthEntryImpl _$$GrowthEntryImplFromJson(Map<String, dynamic> json) =>
    _$GrowthEntryImpl(
      id: json['id'] as String,
      childId: json['childId'] as String,
      measuredAt: DateTime.parse(json['measuredAt'] as String),
      heightCm: (json['heightCm'] as num?)?.toDouble(),
      weightKg: (json['weightKg'] as num?)?.toDouble(),
      headCircumferenceCm: (json['headCircumferenceCm'] as num?)?.toDouble(),
      note: json['note'] as String?,
      source: json['source'] as String? ?? 'manual',
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$GrowthEntryImplToJson(_$GrowthEntryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'childId': instance.childId,
      'measuredAt': instance.measuredAt.toIso8601String(),
      'heightCm': instance.heightCm,
      'weightKg': instance.weightKg,
      'headCircumferenceCm': instance.headCircumferenceCm,
      'note': instance.note,
      'source': instance.source,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$GrowthPercentileImpl _$$GrowthPercentileImplFromJson(
        Map<String, dynamic> json) =>
    _$GrowthPercentileImpl(
      percentile: (json['percentile'] as num).toDouble(),
      status: json['status'] as String,
      metric: json['metric'] as String,
      measuredAt: DateTime.parse(json['measuredAt'] as String),
    );

Map<String, dynamic> _$$GrowthPercentileImplToJson(
        _$GrowthPercentileImpl instance) =>
    <String, dynamic>{
      'percentile': instance.percentile,
      'status': instance.status,
      'metric': instance.metric,
      'measuredAt': instance.measuredAt.toIso8601String(),
    };

_$GrowthTrendImpl _$$GrowthTrendImplFromJson(Map<String, dynamic> json) =>
    _$GrowthTrendImpl(
      metric: json['metric'] as String,
      dataPoints: (json['dataPoints'] as List<dynamic>)
          .map((e) => GrowthDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      slope: (json['slope'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$GrowthTrendImplToJson(_$GrowthTrendImpl instance) =>
    <String, dynamic>{
      'metric': instance.metric,
      'dataPoints': instance.dataPoints,
      'slope': instance.slope,
    };

_$GrowthDataPointImpl _$$GrowthDataPointImplFromJson(
        Map<String, dynamic> json) =>
    _$GrowthDataPointImpl(
      date: DateTime.parse(json['date'] as String),
      value: (json['value'] as num).toDouble(),
      percentile: (json['percentile'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$GrowthDataPointImplToJson(
        _$GrowthDataPointImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'value': instance.value,
      'percentile': instance.percentile,
    };

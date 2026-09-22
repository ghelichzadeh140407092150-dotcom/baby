// domain/entity/growth.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'growth.freezed.dart';
part 'growth.g.dart';

@freezed
class GrowthEntry with _$GrowthEntry {
  const factory GrowthEntry({
    required String id,
    required String childId,
    required DateTime measuredAt,
    double? heightCm,
    double? weightKg,
    double? headCircumferenceCm,
    String? note,
    @Default('manual') String source, // manual, clinic
    required DateTime createdAt,
  }) = _GrowthEntry;

  factory GrowthEntry.fromJson(Map<String, dynamic> json) => _$GrowthEntryFromJson(json);
}

@freezed
class GrowthPercentile with _$GrowthPercentile {
  const factory GrowthPercentile({
    required double percentile,
    required String status, // normal, check_with_doctor
    required String metric, // height, weight, head
    required DateTime measuredAt,
  }) = _GrowthPercentile;

  factory GrowthPercentile.fromJson(Map<String, dynamic> json) => _$GrowthPercentileFromJson(json);
}

@freezed
class GrowthTrend with _$GrowthTrend {
  const factory GrowthTrend({
    required String metric,
    required List<GrowthDataPoint> dataPoints,
    required double? slope, // per month
  }) = _GrowthTrend;

  factory GrowthTrend.fromJson(Map<String, dynamic> json) => _$GrowthTrendFromJson(json);
}

@freezed
class GrowthDataPoint with _$GrowthDataPoint {
  const factory GrowthDataPoint({
    required DateTime date,
    required double value,
    double? percentile,
  }) = _GrowthDataPoint;

  factory GrowthDataPoint.fromJson(Map<String, dynamic> json) => _$GrowthDataPointFromJson(json);
}
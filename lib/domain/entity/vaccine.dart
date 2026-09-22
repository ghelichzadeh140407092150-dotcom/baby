// domain/entity/vaccine.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vaccine.freezed.dart';
part 'vaccine.g.dart';

@freezed
class VaccineDose with _$VaccineDose {
  const factory VaccineDose({
    required String id,
    required String childId,
    required String vaccineCode,
    required int doseNumber,
    required int scheduledAgeDays,
    required DateTime dueDate,
    DateTime? administeredAt,
    @Default(false) bool skipped,
    String? note,
    required DateTime createdAt,
  }) = _VaccineDose;

  factory VaccineDose.fromJson(Map<String, dynamic> json) => _$VaccineDoseFromJson(json);
}

@freezed
class VaccineSchedule with _$VaccineSchedule {
  const factory VaccineSchedule({
    required String vaccineCode,
    required String farsiName,
    required List<VaccineDoseInfo> doses,
  }) = _VaccineSchedule;

  factory VaccineSchedule.fromJson(Map<String, dynamic> json) => _$VaccineScheduleFromJson(json);
}

@freezed
class VaccineDoseInfo with _$VaccineDoseInfo {
  const factory VaccineDoseInfo({
    required int doseNumber,
    required int scheduledAgeDays,
    String? notes,
  }) = _VaccineDoseInfo;

  factory VaccineDoseInfo.fromJson(Map<String, dynamic> json) => _$VaccineDoseInfoFromJson(json);
}

/// Vaccine status enum
enum VaccineStatus { done, due, upcoming, skipped }
// domain/repository/vaccine_repository.dart
import 'package:hamrah_madaran/core/error/result.dart';
import '../entity/vaccine.dart';

abstract class VaccineRepository {
  Future<Result<void>> generateSchedule(String childId, DateTime birthDate);
  Future<Result<List<VaccineDose>>> getSchedule(String childId);
  Future<Result<Map<String, List<VaccineDose>>>> getScheduleGrouped(String childId);
  Future<Result<VaccineDose>> markAdministered(String doseId, DateTime administeredAt);
  Future<Result<VaccineDose>> markSkipped(String doseId, String? note);
  Future<Result<VaccineDose>> updateNote(String doseId, String note);
  Stream<Result<List<VaccineDose>>> watchSchedule(String childId);
}
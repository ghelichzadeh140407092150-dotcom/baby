// data/dao/vaccine_dao.dart
import 'package:drift/drift.dart';
import '../db/app_database.dart';

part 'vaccine_dao.g.dart';

@DriftAccessor(tables: [VaccineDoses])
class VaccineDao extends DatabaseAccessor<AppDatabase> with _$VaccineDaoMixin {
  VaccineDao(super.db);

  /// Insert a vaccine dose
  Future<void> insertDose(VaccineDosesCompanion dose) => into(vaccineDoses).insert(dose);

  /// Insert multiple doses at once
  Future<void> insertDoses(List<VaccineDosesCompanion> doses) => batch((batch) {
    batch.insertAll(vaccineDoses, doses);
  });

  /// Get all vaccine doses for a child
  Future<List<VaccineDose>> getDosesForChild(String childId) =>
      (select(vaccineDoses)
        ..where((d) => d.childId.equals(childId))
        ..orderBy([
          (d) => OrderingTerm.asc(d.dueDate),
          (d) => OrderingTerm.asc(d.doseNumber),
        ]))
          .get();

  /// Get doses grouped by status
  Future<Map<String, List<VaccineDose>>> getDosesGroupedByStatus(String childId) async {
    final allDoses = await getDosesForChild(childId);
    final now = DateTime.now();
    
    return {
      'done': allDoses.where((d) => d.administeredAt != null).toList(),
      'due': allDoses.where((d) => d.administeredAt == null && !d.skipped && d.dueDate.isBefore(now.add(const Duration(days: 7)))).toList(),
      'upcoming': allDoses.where((d) => d.administeredAt == null && !d.skipped && d.dueDate.isAfter(now.add(const Duration(days: 7)))).toList(),
      'skipped': allDoses.where((d) => d.skipped).toList(),
    };
  }

  /// Get a specific dose
  Future<VaccineDose?> getDoseById(String id) =>
      (select(vaccineDoses)..where((d) => d.id.equals(id))).getSingleOrNull();

  /// Mark dose as administered
  Future<int> markAdministered(String id, DateTime administeredAt) =>
      (update(vaccineDoses)..where((d) => d.id.equals(id)))
          .write(VaccineDosesCompanion(
            administeredAt: Value(administeredAt),
            skipped: const Value(false),
          ));

  /// Mark dose as skipped
  Future<int> markSkipped(String id, {String? note}) =>
      (update(vaccineDoses)..where((d) => d.id.equals(id)))
          .write(VaccineDosesCompanion(
            skipped: const Value(true),
            note: Value(note),
          ));

  /// Update dose note
  Future<int> updateNote(String id, String note) =>
      (update(vaccineDoses)..where((d) => d.id.equals(id)))
          .write(VaccineDosesCompanion(note: Value(note)));

  /// Delete dose
  Future<int> deleteDose(String id) =>
      (delete(vaccineDoses)..where((d) => d.id.equals(id))).go();

  /// Watch doses for child
  Stream<List<VaccineDose>> watchDosesForChild(String childId) =>
      (select(vaccineDoses)
        ..where((d) => d.childId.equals(childId))
        ..orderBy([(d) => OrderingTerm.asc(d.dueDate)]))
          .watch();
}
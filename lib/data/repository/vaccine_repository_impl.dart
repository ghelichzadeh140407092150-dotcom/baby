// data/repository/vaccine_repository_impl.dart
import 'package:drift/drift.dart';
import 'package:hamrah_madaran/core/error/result.dart';
import 'package:hamrah_madaran/data/db/app_database.dart';
import 'package:hamrah_madaran/data/dao/vaccine_dao.dart';
import 'package:hamrah_madaran/data/dao/child_dao.dart';
import 'package:hamrah_madaran/domain/entity/vaccine.dart';
import 'package:hamrah_madaran/domain/repository/vaccine_repository.dart';
import 'package:uuid/uuid.dart';

class VaccineRepositoryImpl implements VaccineRepository {
  final VaccineDao _vaccineDao;
  final ChildDao _childDao;
  final _uuid = const Uuid();

  VaccineRepositoryImpl(this._vaccineDao, this._childDao);

  @override
  Future<Result<void>> generateSchedule(String childId, DateTime birthDate) async {
    try {
      // Load vaccine schedule from assets
      // For now, we'll use a hardcoded schedule matching Iran's national program
      // In production, this should load from assets/data/iran_vaccines_v2024.json
      final schedule = _getIranVaccineSchedule();
      
      final doses = <VaccineDosesCompanion>[];
      
      for (final vaccine in schedule) {
        for (final doseInfo in vaccine.doses) {
          final dueDate = birthDate.add(Duration(days: doseInfo.scheduledAgeDays));
          final id = _uuid.v4();
          
          doses.add(VaccineDosesCompanion.insert(
            id: id,
            childId: childId,
            vaccineCode: vaccine.vaccineCode,
            doseNumber: doseInfo.doseNumber,
            scheduledAgeDays: doseInfo.scheduledAgeDays,
            dueDate: dueDate,
            administeredAt: const Value.absent(),
            skipped: const Value(false),
            note: const Value.absent(),
            createdAt: DateTime.now(),
          ));
        }
      }
      
      await _vaccineDao.insertDoses(doses);
      return const Success(null);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<List<VaccineDose>>> getSchedule(String childId) async {
    try {
      final doses = await _vaccineDao.getDosesForChild(childId);
      return Success(doses);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<Map<String, List<VaccineDose>>>> getScheduleGrouped(String childId) async {
    try {
      final grouped = await _vaccineDao.getDosesGroupedByStatus(childId);
      return Success(grouped);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<VaccineDose>> markAdministered(String doseId, DateTime administeredAt) async {
    try {
      await _vaccineDao.markAdministered(doseId, administeredAt);
      final dose = await _vaccineDao.getDoseById(doseId);
      if (dose == null) return Failure(Exception('Dose not found'));
      return Success(dose);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<VaccineDose>> markSkipped(String doseId, String? note) async {
    try {
      await _vaccineDao.markSkipped(doseId, note: note);
      final dose = await _vaccineDao.getDoseById(doseId);
      if (dose == null) return Failure(Exception('Dose not found'));
      return Success(dose);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<VaccineDose>> updateNote(String doseId, String note) async {
    try {
      await _vaccineDao.updateNote(doseId, note);
      final dose = await _vaccineDao.getDoseById(doseId);
      if (dose == null) return Failure(Exception('Dose not found'));
      return Success(dose);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Stream<Result<List<VaccineDose>>> watchSchedule(String childId) {
    return _vaccineDao.watchDosesForChild(childId).map((doses) => Success(doses))
        .handleError((e) => Failure(e));
  }

  /// Iran's National Immunization Schedule (simplified)
  /// This should be loaded from assets/data/iran_vaccines_v2024.json in production
  List<VaccineSchedule> _getIranVaccineSchedule() {
    return [
      VaccineSchedule(
        vaccineCode: 'bcg',
        farsiName: 'B.C.G',
        doses: [
          VaccineDoseInfo(doseNumber: 1, scheduledAgeDays: 0),
        ],
      ),
      VaccineSchedule(
        vaccineCode: 'hepatitis_b',
        farsiName: 'هپاتیت B',
        doses: [
          VaccineDoseInfo(doseNumber: 1, scheduledAgeDays: 0),
          VaccineDoseInfo(doseNumber: 2, scheduledAgeDays: 60),
          VaccineDoseInfo(doseNumber: 3, scheduledAgeDays: 180),
        ],
      ),
      VaccineSchedule(
        vaccineCode: 'penta',
        farsiName: 'پنتاوالنت',
        doses: [
          VaccineDoseInfo(doseNumber: 1, scheduledAgeDays: 60),
          VaccineDoseInfo(doseNumber: 2, scheduledAgeDays: 120),
          VaccineDoseInfo(doseNumber: 3, scheduledAgeDays: 180),
        ],
      ),
      VaccineSchedule(
        vaccineCode: 'opv',
        farsiName: 'OPV (پولיו دهانی)',
        doses: [
          VaccineDoseInfo(doseNumber: 1, scheduledAgeDays: 60),
          VaccineDoseInfo(doseNumber: 2, scheduledAgeDays: 120),
          VaccineDoseInfo(doseNumber: 3, scheduledAgeDays: 180),
          VaccineDoseInfo(doseNumber: 4, scheduledAgeDays: 365),
        ],
      ),
      VaccineSchedule(
        vaccineCode: 'pneumococcal',
        farsiName: 'پنیوموکاک',
        doses: [
          VaccineDoseInfo(doseNumber: 1, scheduledAgeDays: 60),
          VaccineDoseInfo(doseNumber: 2, scheduledAgeDays: 120),
          VaccineDoseInfo(doseNumber: 3, scheduledAgeDays: 365),
        ],
      ),
      VaccineSchedule(
        vaccineCode: 'rotavirus',
        farsiName: 'روتاویرس',
        doses: [
          VaccineDoseInfo(doseNumber: 1, scheduledAgeDays: 60),
          VaccineDoseInfo(doseNumber: 2, scheduledAgeDays: 120),
        ],
      ),
      VaccineSchedule(
        vaccineCode: 'mmr',
        farsiName: 'MMR (مازیل، روبلا، epidemیک)',
        doses: [
          VaccineDoseInfo(doseNumber: 1, scheduledAgeDays: 365),
          VaccineDoseInfo(doseNumber: 2, scheduledAgeDays: 540),
        ],
      ),
      VaccineSchedule(
        vaccineCode: 'varicella',
        farsiName: 'آبله',
        doses: [
          VaccineDoseInfo(doseNumber: 1, scheduledAgeDays: 365),
        ],
      ),
      VaccineSchedule(
        vaccineCode: 'hepatitis_a',
        farsiName: 'هپاتیت A',
        doses: [
          VaccineDoseInfo(doseNumber: 1, scheduledAgeDays: 540),
          VaccineDoseInfo(doseNumber: 2, scheduledAgeDays: 720),
        ],
      ),
      VaccineSchedule(
        vaccineCode: 'tdap',
        farsiName: 'Tdap (دیفتری، تتانوس، کلامه)',
        doses: [
          VaccineDoseInfo(doseNumber: 1, scheduledAgeDays: 1460),
        ],
      ),
    ];
  }
}
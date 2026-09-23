// data/repository/growth_repository_impl.dart
import 'package:drift/drift.dart';
import 'package:hamrah_madaran/core/error/result.dart';
import 'package:hamrah_madaran/data/db/app_database.dart' as db;
import 'package:hamrah_madaran/data/dao/growth_dao.dart';
import 'package:hamrah_madaran/domain/entity/growth.dart';
import 'package:hamrah_madaran/domain/repository/growth_repository.dart';

class GrowthRepositoryImpl implements GrowthRepository {
  final GrowthDao _dao;

  GrowthRepositoryImpl(this._dao);

  @override
  Future<Result<GrowthEntry>> addMeasurement(GrowthEntry entry) async {
    try {
      await _dao.insertEntry(db.GrowthEntriesCompanion.insert(
        id: entry.id,
        childId: entry.childId,
        measuredAt: entry.measuredAt,
        heightCm: Value(entry.heightCm),
        weightKg: Value(entry.weightKg),
        headCircumferenceCm: Value(entry.headCircumferenceCm),
        note: Value(entry.note),
        source: Value(entry.source),
        createdAt: entry.createdAt,
      ));
      return Success(entry);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<List<GrowthEntry>>> getMeasurements(String childId) async {
    try {
      final entries = await _dao.getEntriesForChild(childId);
      return Success(entries);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<GrowthEntry?>> getLatestMeasurement(String childId, String metric) async {
    try {
      final entry = await _dao.getLatestEntry(childId);
      if (entry == null) return const Success(null);
      
      // Check if the requested metric has a value
      double? value;
      switch (metric) {
        case 'heightCm':
          value = entry.heightCm;
          break;
        case 'weightKg':
          value = entry.weightKg;
          break;
        case 'headCircumferenceCm':
          value = entry.headCircumferenceCm;
          break;
      }
      
      if (value == null) return const Success(null);
      return Success(entry);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<List<GrowthEntry>>> getMeasurementsForMetric(String childId, String metric) async {
    try {
      final entries = await _dao.getEntriesForMetric(childId, metric);
      return Success(entries);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<void>> deleteMeasurement(String id) async {
    try {
      await _dao.deleteEntry(id);
      return const Success(null);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Stream<Result<List<GrowthEntry>>> watchMeasurements(String childId) {
    return _dao.watchEntriesForChild(childId).map((entries) => Success(entries))
        .handleError((e) => Failure(e));
  }
}
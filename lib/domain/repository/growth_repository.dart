// domain/repository/growth_repository.dart
import 'package:hamrah_madaran/core/error/result.dart';
import '../entity/growth.dart';

abstract class GrowthRepository {
  Future<Result<GrowthEntry>> addMeasurement(GrowthEntry entry);
  Future<Result<List<GrowthEntry>>> getMeasurements(String childId);
  Future<Result<GrowthEntry?>> getLatestMeasurement(String childId, String metric);
  Future<Result<List<GrowthEntry>>> getMeasurementsForMetric(String childId, String metric);
  Future<Result<void>> deleteMeasurement(String id);
  Stream<Result<List<GrowthEntry>>> watchMeasurements(String childId);
}
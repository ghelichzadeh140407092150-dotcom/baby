// domain/repository/child_repository.dart
import 'package:hamrah_madaran/core/error/result.dart';
import '../entity/child.dart';

/// Repository interface for child data
abstract class ChildRepository {
  /// Create a new child
  Future<Result<Child>> createChild({
    required String id,
    required String name,
    required DateTime birthDate,
    required bool isPreBirth,
    String? sex,
    int? gestationalWeeksAtBirth,
    required int avatarSeed,
  });

  /// Get child by ID
  Future<Result<Child?>> getChildById(String id);

  /// Get all children
  Future<Result<List<Child>>> getAllChildren();

  /// Update child
  Future<Result<Child>> updateChild(Child child);

  /// Delete child
  Future<Result<void>> deleteChild(String id);

  /// Watch all children stream
  Stream<Result<List<Child>>> watchAllChildren();

  /// Watch single child stream
  Stream<Result<Child?>> watchChild(String id);
}
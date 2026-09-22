// data/repository/child_repository_impl.dart
import 'package:hamrah_madaran/core/error/result.dart';
import 'package:hamrah_madaran/data/dao/child_dao.dart';
import 'package:hamrah_madaran/domain/entity/child.dart';
import 'package:hamrah_madaran/domain/repository/child_repository.dart';

class ChildRepositoryImpl implements ChildRepository {
  final ChildDao _dao;

  ChildRepositoryImpl(this._dao);

  @override
  Future<Result<Child>> createChild({
    required String id,
    required String name,
    required DateTime birthDate,
    required bool isPreBirth,
    String? sex,
    int? gestationalWeeksAtBirth,
    required int avatarSeed,
  }) async {
    try {
      final now = DateTime.now();
      final child = Child(
        id: id,
        name: name,
        birthDate: birthDate,
        isPreBirth: isPreBirth,
        sex: sex,
        gestationalWeeksAtBirth: gestationalWeeksAtBirth,
        avatarSeed: avatarSeed,
        createdAt: now,
        updatedAt: now,
      );
      
      await _dao.insertChild(ChildrenCompanion.insert(
        id: id,
        name: name,
        birthDate: birthDate,
        isPreBirth: isPreBirth,
        sex: Value(sex),
        gestationalWeeksAtBirth: Value(gestationalWeeksAtBirth),
        avatarSeed: avatarSeed,
        createdAt: now,
        updatedAt: now,
      ));
      
      return Success(child);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<Child?>> getChildById(String id) async {
    try {
      final child = await _dao.getChildById(id);
      return Success(child);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<List<Child>>> getAllChildren() async {
    try {
      final children = await _dao.getAllChildren();
      return Success(children);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<Child>> updateChild(Child child) async {
    try {
      final updated = child.copyWith(updatedAt: DateTime.now());
      await _dao.updateChild(ChildrenCompanion(
        id: Value(updated.id),
        name: Value(updated.name),
        birthDate: Value(updated.birthDate),
        isPreBirth: Value(updated.isPreBirth),
        sex: Value(updated.sex),
        gestationalWeeksAtBirth: Value(updated.gestationalWeeksAtBirth),
        avatarSeed: Value(updated.avatarSeed),
        createdAt: Value(updated.createdAt),
        updatedAt: Value(updated.updatedAt),
      ));
      return Success(updated);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<void>> deleteChild(String id) async {
    try {
      await _dao.deleteChild(id);
      return const Success(null);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Stream<Result<List<Child>>> watchAllChildren() {
    return _dao.watchAllChildren().map((children) => Success(children))
        .handleError((e) => Failure(e));
  }

  @override
  Stream<Result<Child?>> watchChild(String id) {
    return _dao.watchChild(id).map((child) => Success(child))
        .handleError((e) => Failure(e));
  }
}
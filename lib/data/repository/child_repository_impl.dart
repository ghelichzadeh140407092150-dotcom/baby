// data/repository/child_repository_impl.dart
import 'package:drift/drift.dart';
import 'package:hamrah_madaran/core/error/result.dart';
import 'package:hamrah_madaran/data/db/app_database.dart' as db;
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
      
      await _dao.insertChild(db.ChildrenCompanion.insert(
        id: id,
        name: name,
        birthDate: birthDate,
        isPreBirth: Value(isPreBirth),
        sex: Value(sex != null ? db.ChildSex.values.byName(sex) : null),
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
      final data = await _dao.getChildById(id);
      if (data == null) return const Success(null);
      final child = Child(
        id: data.id,
        name: data.name,
        birthDate: data.birthDate,
        isPreBirth: data.isPreBirth,
        sex: data.sex?.name,
        gestationalWeeksAtBirth: data.gestationalWeeksAtBirth,
        avatarSeed: data.avatarSeed,
        createdAt: data.createdAt,
        updatedAt: data.updatedAt,
      );
      return Success(child);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<List<Child>>> getAllChildren() async {
    try {
      final childrenData = await _dao.getAllChildren();
      final children = childrenData.map((d) => Child(
        id: d.id,
        name: d.name,
        birthDate: d.birthDate,
        isPreBirth: d.isPreBirth,
        sex: d.sex?.name,
        gestationalWeeksAtBirth: d.gestationalWeeksAtBirth,
        avatarSeed: d.avatarSeed,
        createdAt: d.createdAt,
        updatedAt: d.updatedAt,
      )).toList();
      return Success(children);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<Child>> updateChild(Child child) async {
    try {
      final updated = child.copyWith(updatedAt: DateTime.now());
      await _dao.updateChild(db.ChildrenCompanion(
        id: Value(updated.id),
        name: Value(updated.name),
        birthDate: Value(updated.birthDate),
        isPreBirth: Value(updated.isPreBirth),
        sex: Value(updated.sex != null ? db.ChildSex.values.byName(updated.sex!) : null),
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
    return _dao.watchAllChildren().map((childrenData) {
      final children = childrenData.map((d) => Child(
        id: d.id,
        name: d.name,
        birthDate: d.birthDate,
        isPreBirth: d.isPreBirth,
        sex: d.sex?.name,
        gestationalWeeksAtBirth: d.gestationalWeeksAtBirth,
        avatarSeed: d.avatarSeed,
        createdAt: d.createdAt,
        updatedAt: d.updatedAt,
      )).toList();
      return Success(children);
    }).handleError((e) => Failure(e));
  }

  @override
  Stream<Result<Child?>> watchChild(String id) {
    return _dao.watchChild(id).map((data) {
      if (data == null) return const Success(null);
      final child = Child(
        id: data.id,
        name: data.name,
        birthDate: data.birthDate,
        isPreBirth: data.isPreBirth,
        sex: data.sex?.name,
        gestationalWeeksAtBirth: data.gestationalWeeksAtBirth,
        avatarSeed: data.avatarSeed,
        createdAt: data.createdAt,
        updatedAt: data.updatedAt,
      );
      return Success(child);
    }).handleError((e) => Failure(e));
  }
}
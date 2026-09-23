// data/repository/food_repository_impl.dart
import 'package:drift/drift.dart';
import 'package:hamrah_madaran/core/error/result.dart';
import 'package:hamrah_madaran/data/db/app_database.dart' as db;
import 'package:hamrah_madaran/data/dao/food_dao.dart';
import 'package:hamrah_madaran/domain/entity/food.dart';
import 'package:hamrah_madaran/domain/repository/food_repository.dart';

class FoodRepositoryImpl implements FoodRepository {
  final FoodDao _dao;

  FoodRepositoryImpl(this._dao);

  @override
  Future<Result<FoodIntroduction>> addFoodIntroduction(FoodIntroduction introduction) async {
    try {
      await _dao.insertFood(db.FoodIntroductionsCompanion.insert(
        id: introduction.id,
        childId: introduction.childId,
        foodCode: introduction.foodCode,
        firstTriedAt: introduction.firstTriedAt,
        reaction: Value(introduction.reaction),
        note: Value(introduction.note),
      ));
      return Success(introduction);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<List<FoodIntroduction>>> getIntroducedFoods(String childId) async {
    try {
      final foods = await _dao.getFoodsForChild(childId);
      return Success(foods);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<bool>> hasIntroduced(String childId, String foodCode) async {
    try {
      final hasIntroduced = await _dao.hasIntroduced(childId, foodCode);
      return Success(hasIntroduced);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<FoodIntroduction?>> getFoodIntroduction(String childId, String foodCode) async {
    try {
      final food = await _dao.getFoodIntroduction(childId, foodCode);
      return Success(food);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<FoodIntroduction>> updateReaction(
    String childId, 
    String foodCode, 
    String reaction, 
    {String? note}
  ) async {
    try {
      await _dao.updateReaction(childId, foodCode, reaction, note: note);
      final food = await _dao.getFoodIntroduction(childId, foodCode);
      if (food == null) return Failure(Exception('Food introduction not found'));
      return Success(food);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<void>> deleteFoodIntroduction(String childId, String foodCode) async {
    try {
      await _dao.deleteFood(childId, foodCode);
      return const Success(null);
    } catch (e) {
      return Failure(e);
    }
  }

  @override
  Stream<Result<List<FoodIntroduction>>> watchIntroducedFoods(String childId) {
    return _dao.watchFoodsForChild(childId).map((foods) => Success(foods))
        .handleError((e) => Failure(e));
  }
}
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
        reaction: Value(introduction.reaction != null ? db.FoodReaction.values.byName(introduction.reaction!) : null),
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
      final domainFoods = foods.map((f) => FoodIntroduction(
        id: f.id,
        childId: f.childId,
        foodCode: f.foodCode,
        firstTriedAt: f.firstTriedAt,
        reaction: f.reaction?.name,
        note: f.note,
      )).toList();
      return Success(domainFoods);
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
      if (food == null) return const Success(null);
      final domainFood = FoodIntroduction(
        id: food.id,
        childId: food.childId,
        foodCode: food.foodCode,
        firstTriedAt: food.firstTriedAt,
        reaction: food.reaction?.name,
        note: food.note,
      );
      return Success(domainFood);
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
      final foodReaction = db.FoodReaction.values.byName(reaction);
      await _dao.updateReaction(childId, foodCode, foodReaction, note: note);
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
    return _dao.watchFoodsForChild(childId).map((foods) {
      final domainFoods = foods.map((f) => FoodIntroduction(
        id: f.id,
        childId: f.childId,
        foodCode: f.foodCode,
        firstTriedAt: f.firstTriedAt,
        reaction: f.reaction?.name,
        note: f.note,
      )).toList();
      return Success(domainFoods);
    })
        .handleError((e) => Failure(e));
  }
}
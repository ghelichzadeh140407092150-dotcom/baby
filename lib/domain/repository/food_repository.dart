// domain/repository/food_repository.dart
import 'package:hamrah_madaran/core/error/result.dart';
import '../entity/food.dart';

abstract class FoodRepository {
  Future<Result<FoodIntroduction>> addFoodIntroduction(FoodIntroduction introduction);
  Future<Result<List<FoodIntroduction>>> getIntroducedFoods(String childId);
  Future<Result<bool>> hasIntroduced(String childId, String foodCode);
  Future<Result<FoodIntroduction?>> getFoodIntroduction(String childId, String foodCode);
  Future<Result<FoodIntroduction>> updateReaction(String childId, String foodCode, String reaction, {String? note});
  Future<Result<void>> deleteFoodIntroduction(String childId, String foodCode);
  Stream<Result<List<FoodIntroduction>>> watchIntroducedFoods(String childId);
}
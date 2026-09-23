// data/dao/food_dao.dart
import 'package:drift/drift.dart';
import '../db/app_database.dart';

part 'food_dao.g.dart';

@DriftAccessor(tables: [FoodIntroductions])
class FoodDao extends DatabaseAccessor<AppDatabase> with _$FoodDaoMixin {
  FoodDao(super.db);

  /// Insert a food introduction record
  Future<void> insertFood(FoodIntroductionsCompanion food) => into(foodIntroductions).insert(food);

  /// Get all food introductions for a child
  Future<List<FoodIntroduction>> getFoodsForChild(String childId) =>
      (select(foodIntroductions)
        ..where((f) => f.childId.equals(childId))
        ..orderBy([(f) => OrderingTerm.desc(f.firstTriedAt)]))
          .get();

  /// Check if a food has been introduced
  Future<bool> hasIntroduced(String childId, String foodCode) async {
    final food = await getFoodIntroduction(childId, foodCode);
    return food != null;
  }

  /// Get a specific food introduction
  Future<FoodIntroduction?> getFoodIntroduction(String childId, String foodCode) =>
      (select(foodIntroductions)
        ..where((f) => f.childId.equals(childId) & f.foodCode.equals(foodCode)))
          .getSingleOrNull();

  /// Update reaction
  Future<bool> updateReaction(String childId, String foodCode, FoodReaction? reaction, {String? note}) =>
      (update(foodIntroductions)
        ..where((f) => f.childId.equals(childId) & f.foodCode.equals(foodCode)))
          .write(FoodIntroductionsCompanion(
            reaction: Value(reaction),
            note: Value(note),
          ));

  /// Delete food introduction
  Future<int> deleteFood(String childId, String foodCode) =>
      (delete(foodIntroductions)..where((f) => f.childId.equals(childId) & f.foodCode.equals(foodCode))).go();

  /// Watch foods for child
  Stream<List<FoodIntroduction>> watchFoodsForChild(String childId) =>
      (select(foodIntroductions)
        ..where((f) => f.childId.equals(childId))
        ..orderBy([(f) => OrderingTerm.desc(f.firstTriedAt)]))
          .watch();
}
// domain/entity/food.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'food.freezed.dart';
part 'food.g.dart';

@freezed
class FoodIntroduction with _$FoodIntroduction {
  const factory FoodIntroduction({
    required String id,
    required String childId,
    required String foodCode,
    required DateTime firstTriedAt,
    String? reaction, // liked, disliked, refused, suspectedAllergy
    String? note,
  }) = _FoodIntroduction;

  factory FoodIntroduction.fromJson(Map<String, dynamic> json) => _$FoodIntroductionFromJson(json);
}

@freezed
class Food with _$Food {
  const factory Food({
    required String id,
    required String name,
    required int allowedFromMonths,
    required String texture, // puree, mashed, softChunks, fingerFood
    required List<String> preparation,
    required String portionGuide,
    required List<String> allergens,
    required List<String> avoidIf,
    required String sourceCitation,
    required bool isPremium,
  }) = _Food;

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);
}

@freezed
class FoodRecommendation with _$FoodRecommendation {
  const factory FoodRecommendation({
    required Food food,
    required String reason,
    required bool isRepeatFavorite,
  }) = _FoodRecommendation;

  factory FoodRecommendation.fromJson(Map<String, dynamic> json) => _$FoodRecommendationFromJson(json);
}

@freezed
class WeeklyFoodPlan with _$WeeklyFoodPlan {
  const factory WeeklyFoodPlan({
    required int weekNumber,
    required List<FoodRecommendation> recommendations,
    required List<String> shoppingList,
  }) = _WeeklyFoodPlan;

  factory WeeklyFoodPlan.fromJson(Map<String, dynamic> json) => _$WeeklyFoodPlanFromJson(json);
}
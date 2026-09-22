// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FoodIntroductionImpl _$$FoodIntroductionImplFromJson(
        Map<String, dynamic> json) =>
    _$FoodIntroductionImpl(
      id: json['id'] as String,
      childId: json['childId'] as String,
      foodCode: json['foodCode'] as String,
      firstTriedAt: DateTime.parse(json['firstTriedAt'] as String),
      reaction: json['reaction'] as String?,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$FoodIntroductionImplToJson(
        _$FoodIntroductionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'childId': instance.childId,
      'foodCode': instance.foodCode,
      'firstTriedAt': instance.firstTriedAt.toIso8601String(),
      'reaction': instance.reaction,
      'note': instance.note,
    };

_$FoodImpl _$$FoodImplFromJson(Map<String, dynamic> json) => _$FoodImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      allowedFromMonths: (json['allowedFromMonths'] as num).toInt(),
      texture: json['texture'] as String,
      preparation: (json['preparation'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      portionGuide: json['portionGuide'] as String,
      allergens:
          (json['allergens'] as List<dynamic>).map((e) => e as String).toList(),
      avoidIf:
          (json['avoidIf'] as List<dynamic>).map((e) => e as String).toList(),
      sourceCitation: json['sourceCitation'] as String,
      isPremium: json['isPremium'] as bool,
    );

Map<String, dynamic> _$$FoodImplToJson(_$FoodImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'allowedFromMonths': instance.allowedFromMonths,
      'texture': instance.texture,
      'preparation': instance.preparation,
      'portionGuide': instance.portionGuide,
      'allergens': instance.allergens,
      'avoidIf': instance.avoidIf,
      'sourceCitation': instance.sourceCitation,
      'isPremium': instance.isPremium,
    };

_$FoodRecommendationImpl _$$FoodRecommendationImplFromJson(
        Map<String, dynamic> json) =>
    _$FoodRecommendationImpl(
      food: Food.fromJson(json['food'] as Map<String, dynamic>),
      reason: json['reason'] as String,
      isRepeatFavorite: json['isRepeatFavorite'] as bool,
    );

Map<String, dynamic> _$$FoodRecommendationImplToJson(
        _$FoodRecommendationImpl instance) =>
    <String, dynamic>{
      'food': instance.food,
      'reason': instance.reason,
      'isRepeatFavorite': instance.isRepeatFavorite,
    };

_$WeeklyFoodPlanImpl _$$WeeklyFoodPlanImplFromJson(Map<String, dynamic> json) =>
    _$WeeklyFoodPlanImpl(
      weekNumber: (json['weekNumber'] as num).toInt(),
      recommendations: (json['recommendations'] as List<dynamic>)
          .map((e) => FoodRecommendation.fromJson(e as Map<String, dynamic>))
          .toList(),
      shoppingList: (json['shoppingList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$WeeklyFoodPlanImplToJson(
        _$WeeklyFoodPlanImpl instance) =>
    <String, dynamic>{
      'weekNumber': instance.weekNumber,
      'recommendations': instance.recommendations,
      'shoppingList': instance.shoppingList,
    };

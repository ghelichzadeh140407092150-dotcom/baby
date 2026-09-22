// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContentBundleImpl _$$ContentBundleImplFromJson(Map<String, dynamic> json) =>
    _$ContentBundleImpl(
      version: (json['version'] as num).toInt(),
      games: (json['games'] as List<dynamic>)
          .map((e) => Game.fromJson(e as Map<String, dynamic>))
          .toList(),
      stories: (json['stories'] as List<dynamic>)
          .map((e) => Story.fromJson(e as Map<String, dynamic>))
          .toList(),
      crafts: (json['crafts'] as List<dynamic>)
          .map((e) => Craft.fromJson(e as Map<String, dynamic>))
          .toList(),
      foods: (json['foods'] as List<dynamic>)
          .map((e) => Food.fromJson(e as Map<String, dynamic>))
          .toList(),
      articles: (json['articles'] as List<dynamic>)
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
      loadedAt: DateTime.parse(json['loadedAt'] as String),
    );

Map<String, dynamic> _$$ContentBundleImplToJson(_$ContentBundleImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'games': instance.games,
      'stories': instance.stories,
      'crafts': instance.crafts,
      'foods': instance.foods,
      'articles': instance.articles,
      'loadedAt': instance.loadedAt.toIso8601String(),
    };

_$ContentSearchQueryImpl _$$ContentSearchQueryImplFromJson(
        Map<String, dynamic> json) =>
    _$ContentSearchQueryImpl(
      text: json['text'] as String?,
      ageInMonths: (json['ageInMonths'] as num?)?.toInt(),
      contentType: json['contentType'] as String?,
      place: json['place'] as String?,
      goal: json['goal'] as String?,
      maxDurationMinutes: (json['maxDurationMinutes'] as num?)?.toInt(),
      needsNoMaterials: json['needsNoMaterials'] as bool?,
      favoritesOnly: json['favoritesOnly'] as bool? ?? false,
      completedOnly: json['completedOnly'] as bool? ?? false,
      childId: json['childId'] as String?,
    );

Map<String, dynamic> _$$ContentSearchQueryImplToJson(
        _$ContentSearchQueryImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'ageInMonths': instance.ageInMonths,
      'contentType': instance.contentType,
      'place': instance.place,
      'goal': instance.goal,
      'maxDurationMinutes': instance.maxDurationMinutes,
      'needsNoMaterials': instance.needsNoMaterials,
      'favoritesOnly': instance.favoritesOnly,
      'completedOnly': instance.completedOnly,
      'childId': instance.childId,
    };

_$ContentSearchResultImpl _$$ContentSearchResultImplFromJson(
        Map<String, dynamic> json) =>
    _$ContentSearchResultImpl(
      games: (json['games'] as List<dynamic>)
          .map((e) => Game.fromJson(e as Map<String, dynamic>))
          .toList(),
      stories: (json['stories'] as List<dynamic>)
          .map((e) => Story.fromJson(e as Map<String, dynamic>))
          .toList(),
      crafts: (json['crafts'] as List<dynamic>)
          .map((e) => Craft.fromJson(e as Map<String, dynamic>))
          .toList(),
      foods: (json['foods'] as List<dynamic>)
          .map((e) => Food.fromJson(e as Map<String, dynamic>))
          .toList(),
      articles: (json['articles'] as List<dynamic>)
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ContentSearchResultImplToJson(
        _$ContentSearchResultImpl instance) =>
    <String, dynamic>{
      'games': instance.games,
      'stories': instance.stories,
      'crafts': instance.crafts,
      'foods': instance.foods,
      'articles': instance.articles,
    };

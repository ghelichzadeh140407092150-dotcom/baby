// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameImpl _$$GameImplFromJson(Map<String, dynamic> json) => _$GameImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      title: json['title'] as String,
      slug: json['slug'] as String,
      minAgeMonths: (json['minAgeMonths'] as num).toInt(),
      maxAgeMonths: (json['maxAgeMonths'] as num).toInt(),
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      thumbnail: json['thumbnail'] as String?,
      contentVersion: (json['contentVersion'] as num).toInt(),
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      isPremium: json['isPremium'] as bool? ?? false,
      goal: json['goal'] as String,
      place: json['place'] as String,
      materials: (json['materials'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      steps:
          (json['steps'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      whatTheyLearn: json['whatTheyLearn'] as String,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$$GameImplToJson(_$GameImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'slug': instance.slug,
      'minAgeMonths': instance.minAgeMonths,
      'maxAgeMonths': instance.maxAgeMonths,
      'tags': instance.tags,
      'durationMinutes': instance.durationMinutes,
      'thumbnail': instance.thumbnail,
      'contentVersion': instance.contentVersion,
      'publishedAt': instance.publishedAt.toIso8601String(),
      'isPremium': instance.isPremium,
      'goal': instance.goal,
      'place': instance.place,
      'materials': instance.materials,
      'steps': instance.steps,
      'whatTheyLearn': instance.whatTheyLearn,
      'body': instance.body,
    };

_$StoryImpl _$$StoryImplFromJson(Map<String, dynamic> json) => _$StoryImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      title: json['title'] as String,
      slug: json['slug'] as String,
      minAgeMonths: (json['minAgeMonths'] as num).toInt(),
      maxAgeMonths: (json['maxAgeMonths'] as num).toInt(),
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      thumbnail: json['thumbnail'] as String?,
      contentVersion: (json['contentVersion'] as num).toInt(),
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      isPremium: json['isPremium'] as bool? ?? false,
      audioUrl: json['audioUrl'] as String,
      audioAsset: json['audioAsset'] as String?,
      durationSeconds: (json['durationSeconds'] as num).toInt(),
      transcript: json['transcript'] as String,
      category: json['category'] as String,
      narrator: json['narrator'] as String,
      cover: json['cover'] as String?,
    );

Map<String, dynamic> _$$StoryImplToJson(_$StoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'slug': instance.slug,
      'minAgeMonths': instance.minAgeMonths,
      'maxAgeMonths': instance.maxAgeMonths,
      'tags': instance.tags,
      'durationMinutes': instance.durationMinutes,
      'thumbnail': instance.thumbnail,
      'contentVersion': instance.contentVersion,
      'publishedAt': instance.publishedAt.toIso8601String(),
      'isPremium': instance.isPremium,
      'audioUrl': instance.audioUrl,
      'audioAsset': instance.audioAsset,
      'durationSeconds': instance.durationSeconds,
      'transcript': instance.transcript,
      'category': instance.category,
      'narrator': instance.narrator,
      'cover': instance.cover,
    };

_$CraftImpl _$$CraftImplFromJson(Map<String, dynamic> json) => _$CraftImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      title: json['title'] as String,
      slug: json['slug'] as String,
      minAgeMonths: (json['minAgeMonths'] as num).toInt(),
      maxAgeMonths: (json['maxAgeMonths'] as num).toInt(),
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      thumbnail: json['thumbnail'] as String?,
      contentVersion: (json['contentVersion'] as num).toInt(),
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      isPremium: json['isPremium'] as bool? ?? false,
      materials: (json['materials'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      steps: (json['steps'] as List<dynamic>?)
              ?.map((e) => CraftStep.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      difficulty: json['difficulty'] as String,
      resultImage: json['resultImage'] as String?,
      relatedProductSku: json['relatedProductSku'] as String?,
    );

Map<String, dynamic> _$$CraftImplToJson(_$CraftImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'slug': instance.slug,
      'minAgeMonths': instance.minAgeMonths,
      'maxAgeMonths': instance.maxAgeMonths,
      'tags': instance.tags,
      'durationMinutes': instance.durationMinutes,
      'thumbnail': instance.thumbnail,
      'contentVersion': instance.contentVersion,
      'publishedAt': instance.publishedAt.toIso8601String(),
      'isPremium': instance.isPremium,
      'materials': instance.materials,
      'steps': instance.steps,
      'difficulty': instance.difficulty,
      'resultImage': instance.resultImage,
      'relatedProductSku': instance.relatedProductSku,
    };

_$CraftStepImpl _$$CraftStepImplFromJson(Map<String, dynamic> json) =>
    _$CraftStepImpl(
      text: json['text'] as String,
      imageAsset: json['imageAsset'] as String?,
    );

Map<String, dynamic> _$$CraftStepImplToJson(_$CraftStepImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'imageAsset': instance.imageAsset,
    };

_$FoodImpl _$$FoodImplFromJson(Map<String, dynamic> json) => _$FoodImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      title: json['title'] as String,
      slug: json['slug'] as String,
      minAgeMonths: (json['minAgeMonths'] as num).toInt(),
      maxAgeMonths: (json['maxAgeMonths'] as num).toInt(),
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      thumbnail: json['thumbnail'] as String?,
      contentVersion: (json['contentVersion'] as num).toInt(),
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      isPremium: json['isPremium'] as bool? ?? false,
      allowedFromMonths: (json['allowedFromMonths'] as num).toInt(),
      texture: json['texture'] as String,
      preparation: (json['preparation'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      portionGuide: json['portionGuide'] as String,
      allergens: (json['allergens'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      avoidIf: (json['avoidIf'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      sourceCitation: json['sourceCitation'] as String,
    );

Map<String, dynamic> _$$FoodImplToJson(_$FoodImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'slug': instance.slug,
      'minAgeMonths': instance.minAgeMonths,
      'maxAgeMonths': instance.maxAgeMonths,
      'tags': instance.tags,
      'durationMinutes': instance.durationMinutes,
      'thumbnail': instance.thumbnail,
      'contentVersion': instance.contentVersion,
      'publishedAt': instance.publishedAt.toIso8601String(),
      'isPremium': instance.isPremium,
      'allowedFromMonths': instance.allowedFromMonths,
      'texture': instance.texture,
      'preparation': instance.preparation,
      'portionGuide': instance.portionGuide,
      'allergens': instance.allergens,
      'avoidIf': instance.avoidIf,
      'sourceCitation': instance.sourceCitation,
    };

_$ArticleImpl _$$ArticleImplFromJson(Map<String, dynamic> json) =>
    _$ArticleImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      title: json['title'] as String,
      slug: json['slug'] as String,
      minAgeMonths: (json['minAgeMonths'] as num).toInt(),
      maxAgeMonths: (json['maxAgeMonths'] as num).toInt(),
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      thumbnail: json['thumbnail'] as String?,
      contentVersion: (json['contentVersion'] as num).toInt(),
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      isPremium: json['isPremium'] as bool? ?? false,
      bodyMarkdown: json['bodyMarkdown'] as String,
      sourceCitation: json['sourceCitation'] as String,
      reviewedBy: json['reviewedBy'] as String?,
    );

Map<String, dynamic> _$$ArticleImplToJson(_$ArticleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'slug': instance.slug,
      'minAgeMonths': instance.minAgeMonths,
      'maxAgeMonths': instance.maxAgeMonths,
      'tags': instance.tags,
      'durationMinutes': instance.durationMinutes,
      'thumbnail': instance.thumbnail,
      'contentVersion': instance.contentVersion,
      'publishedAt': instance.publishedAt.toIso8601String(),
      'isPremium': instance.isPremium,
      'bodyMarkdown': instance.bodyMarkdown,
      'sourceCitation': instance.sourceCitation,
      'reviewedBy': instance.reviewedBy,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChildImpl _$$ChildImplFromJson(Map<String, dynamic> json) => _$ChildImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      isPreBirth: json['isPreBirth'] as bool,
      sex: json['sex'] as String?,
      gestationalWeeksAtBirth:
          (json['gestationalWeeksAtBirth'] as num?)?.toInt(),
      avatarSeed: (json['avatarSeed'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ChildImplToJson(_$ChildImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'birthDate': instance.birthDate.toIso8601String(),
      'isPreBirth': instance.isPreBirth,
      'sex': instance.sex,
      'gestationalWeeksAtBirth': instance.gestationalWeeksAtBirth,
      'avatarSeed': instance.avatarSeed,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

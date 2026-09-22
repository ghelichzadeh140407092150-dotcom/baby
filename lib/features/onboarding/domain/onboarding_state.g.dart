// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnboardingStateImpl _$$OnboardingStateImplFromJson(
        Map<String, dynamic> json) =>
    _$OnboardingStateImpl(
      currentStep: (json['currentStep'] as num?)?.toInt() ?? 0,
      childName: json['childName'] as String?,
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
      isPreBirth: json['isPreBirth'] as bool?,
      gestationalWeeksAtBirth:
          (json['gestationalWeeksAtBirth'] as num?)?.toInt(),
      selectedConcerns: (json['selectedConcerns'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      notificationsAllowed: json['notificationsAllowed'] as bool?,
      isCompleted: json['isCompleted'] as bool? ?? false,
    );

Map<String, dynamic> _$$OnboardingStateImplToJson(
        _$OnboardingStateImpl instance) =>
    <String, dynamic>{
      'currentStep': instance.currentStep,
      'childName': instance.childName,
      'birthDate': instance.birthDate?.toIso8601String(),
      'isPreBirth': instance.isPreBirth,
      'gestationalWeeksAtBirth': instance.gestationalWeeksAtBirth,
      'selectedConcerns': instance.selectedConcerns,
      'notificationsAllowed': instance.notificationsAllowed,
      'isCompleted': instance.isCompleted,
    };

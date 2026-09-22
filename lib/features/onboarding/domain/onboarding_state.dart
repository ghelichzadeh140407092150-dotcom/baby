// features/onboarding/domain/onboarding_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hamrah_madaran/core/utils/persian_utils.dart';

part 'onboarding_state.freezed.dart';
part 'onboarding_state.g.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    @Default(0) int currentStep,
    String? childName,
    DateTime? birthDate,
    bool? isPreBirth,
    int? gestationalWeeksAtBirth,
    @Default([]) List<String> selectedConcerns,
    bool? notificationsAllowed,
    @Default(false) bool isCompleted,
  }) = _OnboardingState;

  factory OnboardingState.fromJson(Map<String, dynamic> json) => _$OnboardingStateFromJson(json);
}

/// Concerns that mothers can select during onboarding
enum OnboardingConcern {
  sleep('sleep', 'خواب'),
  feeding('feeding', 'تغذیه'),
  play('play', 'بازی و سرگرمی'),
  growth('growth', 'رشد و قد و وزن'),
  vaccines('vaccines', 'واکسن‌ها'),
  behavior('behavior', 'رفتار');

  const OnboardingConcern(this.code, this.farsiLabel);
  final String code;
  final String farsiLabel;

  static OnboardingConcern fromCode(String code) {
    return OnboardingConcern.values.firstWhere(
      (c) => c.code == code,
      orElse: () => OnboardingConcern.sleep,
    );
  }
}

/// Onboarding step definitions
enum OnboardingStep {
  welcome(0, 'خوش‌آمدید'),
  childInfo(1, 'اطلاعات کودک'),
  concerns(2, 'اولویت‌ها'),
  notifications(3, 'اعلان‌ها'),
  complete(4, 'تکمیل');

  const OnboardingStep(this.index, this.title);
  final int index;
  final String title;
}
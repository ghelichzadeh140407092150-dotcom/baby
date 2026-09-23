// features/onboarding/application/onboarding_controller.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hamrah_madaran/core/error/result.dart';
import 'package:hamrah_madaran/core/di/service_locator.dart';
import 'package:hamrah_madaran/data/dao/settings_dao.dart';

import 'package:hamrah_madaran/domain/entity/child.dart';
import 'package:hamrah_madaran/domain/repository/child_repository.dart';
import 'package:hamrah_madaran/domain/repository/vaccine_repository.dart';
import 'package:hamrah_madaran/features/onboarding/domain/onboarding_state.dart';
import 'package:uuid/uuid.dart';

/// Provider for onboarding controller
final onboardingControllerProvider = StateNotifierProvider<OnboardingController, OnboardingState>((ref) {
  return OnboardingController(
    childRepository: ref.watch(childRepositoryProvider),
    vaccineRepository: ref.watch(vaccineRepositoryProvider),
    settingsDao: ref.watch(settingsDaoProvider),
    activeChildIdNotifier: ref.read(activeChildIdProvider.notifier),
  );
});

class OnboardingController extends StateNotifier<OnboardingState> {
  final ChildRepository _childRepository;
  final VaccineRepository _vaccineRepository;
  final SettingsDao _settingsDao;
  final StateController<String?> _activeChildIdNotifier;
  final _uuid = const Uuid();

  OnboardingController({
    required ChildRepository childRepository,
    required VaccineRepository vaccineRepository,
    required SettingsDao settingsDao,
    required StateController<String?> activeChildIdNotifier,
  })  : _childRepository = childRepository,
        _vaccineRepository = vaccineRepository,
        _settingsDao = settingsDao,
        _activeChildIdNotifier = activeChildIdNotifier,
        super(const OnboardingState());

  /// Navigate to next step
  void nextStep() {
    if (state.currentStep < OnboardingStep.complete.index) {
      state = state.copyWith(currentStep: state.currentStep + 1);
    }
  }

  /// Navigate to previous step
  void previousStep() {
    if (state.currentStep > 0) {
      state = state.copyWith(currentStep: state.currentStep - 1);
    }
  }

  /// Set child name
  void setChildName(String name) {
    state = state.copyWith(childName: name.trim());
  }

  /// Set birth date and pre-birth status
  void setBirthDate(DateTime date, {bool isPreBirth = false, int? gestationalWeeks}) {
    state = state.copyWith(
      birthDate: date,
      isPreBirth: isPreBirth,
      gestationalWeeksAtBirth: gestationalWeeks,
    );
  }

  /// Toggle concern selection
  void toggleConcern(String concernCode) {
    final concerns = List<String>.from(state.selectedConcerns);
    if (concerns.contains(concernCode)) {
      concerns.remove(concernCode);
    } else if (concerns.length < 3) {
      concerns.add(concernCode);
    }
    state = state.copyWith(selectedConcerns: concerns);
  }

  /// Set notifications permission
  void setNotificationsAllowed(bool allowed) {
    state = state.copyWith(notificationsAllowed: allowed);
  }

  /// Check if current step is valid to proceed
  bool canProceed() {
    switch (state.currentStep) {
      case 0: // Welcome
        return true;
      case 1: // Child info
        return state.childName != null &&
            state.childName!.isNotEmpty &&
            state.birthDate != null;
      case 2: // Concerns
        return true; // Optional
      case 3: // Notifications
        return true; // Optional
      default:
        return false;
    }
  }

  /// Complete onboarding and create child
  Future<Result<void>> completeOnboarding() async {
    if (state.childName == null || state.birthDate == null) {
      return Failure(Exception('Child name and birth date are required'));
    }

    try {
      final childId = _uuid.v4();
      final avatarSeed = DateTime.now().millisecondsSinceEpoch % 10000;

      // Create child
      final childResult = await _childRepository.createChild(
        id: childId,
        name: state.childName!,
        birthDate: state.birthDate!,
        isPreBirth: state.isPreBirth ?? false,
        sex: null, // Not asked in onboarding
        gestationalWeeksAtBirth: state.gestationalWeeksAtBirth,
        avatarSeed: avatarSeed,
      );

      if (childResult.isFailure) {
        return Failure(childResult.error.error);
      }

      // Generate vaccine schedule
      if (!(state.isPreBirth ?? false)) {
        final vaccineResult = await _vaccineRepository.generateSchedule(
          childId,
          state.birthDate!,
        );
        if (vaccineResult.isFailure) {
          // Don't fail onboarding if vaccine schedule fails
          print('Warning: Failed to generate vaccine schedule: ${vaccineResult.error.error}');
        }
      }

      // Set as active child
      _activeChildIdNotifier.state = childId;
      await _settingsDao.setActiveChildId(childId);
      await _settingsDao.setOnboardingCompleted(true);

      state = state.copyWith(isCompleted: true);
      return const Success(null);
    } catch (e) {
      return Failure(e);
    }
  }

  /// Skip onboarding (for testing or if user wants to do it later)
  Future<Result<void>> skipOnboarding() async {
    await _settingsDao.setOnboardingCompleted(true);
    state = state.copyWith(isCompleted: true);
    return const Success(null);
  }
}
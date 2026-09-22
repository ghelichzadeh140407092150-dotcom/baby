// features/onboarding/presentation/onboarding_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hamrah_madaran/core/theme/app_theme.dart';
import 'package:hamrah_madaran/core/utils/persian_utils.dart';
import 'package:hamrah_madaran/features/onboarding/application/onboarding_controller.dart';
import 'package:hamrah_madaran/features/onboarding/domain/onboarding_state.dart';
import 'package:hamrah_madaran/l10n/app_localizations.dart';

/// Main onboarding page with PageView for step navigation
class OnboardingPage extends ConsumerStatefulWidget {
  const OnboardingPage({super.key});

  @override
  ConsumerState<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends ConsumerState<OnboardingPage> {
  final PageController _pageController = PageController();
  final _nameController = TextEditingController();

  @override
  void dispose() {
    _pageController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(onboardingControllerProvider);
    final l10n = context.l10n;
    final theme = ref.watch(appThemeProvider);

    // Sync page controller with state
    if (_pageController.page?.round() != state.currentStep) {
      _pageController.animateToPage(
        state.currentStep,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOutCubic,
      );
    }

    final screens = [
      _WelcomeScreen(
        onStart: () => _goToStep(1),
        theme: theme,
        l10n: l10n,
      ),
      _ChildInfoScreen(
        nameController: _nameController,
        onDateSelected: (date, isPreBirth, weeks) =>
            ref.read(onboardingControllerProvider.notifier).setBirthDate(date, isPreBirth: isPreBirth, gestationalWeeks: weeks),
        onNameChanged: (name) => ref.read(onboardingControllerProvider.notifier).setChildName(name),
        onNext: () => _goToStep(2),
        onSkip: () => _goToStep(2),
        theme: theme,
        l10n: l10n,
        state: state,
      ),
      _ConcernsScreen(
        onConcernToggle: (code) => ref.read(onboardingControllerProvider.notifier).toggleConcern(code),
        onNext: () => _goToStep(3),
        onSkip: () => _goToStep(3),
        theme: theme,
        l10n: l10n,
        state: state,
      ),
      _NotificationsScreen(
        onAllowed: (allowed) => ref.read(onboardingControllerProvider.notifier).setNotificationsAllowed(allowed),
        onFinish: () => _finishOnboarding(),
        onSkip: () => _finishOnboarding(),
        theme: theme,
        l10n: l10n,
      ),
    ];

    return Scaffold(
      backgroundColor: theme.colors.bgBase,
      body: SafeArea(
        child: Column(
          children: [
            // Progress indicator
            if (state.currentStep > 0 && state.currentStep < 4)
              _ProgressIndicator(
                currentStep: state.currentStep,
                totalSteps: 4,
                theme: theme,
              ),
            // Page content
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: screens.length,
                itemBuilder: (context, index) => screens[index],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _goToStep(int step) {
    final controller = ref.read(onboardingControllerProvider.notifier);
    if (step > state.currentStep) {
      controller.nextStep();
    } else if (step < state.currentStep) {
      controller.previousStep();
    }
    _pageController.animateToPage(
      step,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOutCubic,
    );
  }

  void _finishOnboarding() async {
    final result = await ref.read(onboardingControllerProvider.notifier).completeOnboarding();
    if (result.isSuccess && mounted) {
      context.go('/today');
    } else if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(context.l10n.errorGeneric),
          backgroundColor: theme.colors.statusAttention,
        ),
      );
    }
  }
}

/// Progress indicator at top
class _ProgressIndicator extends StatelessWidget {
  const _ProgressIndicator({
    required this.currentStep,
    required this.totalSteps,
    required this.theme,
  });

  final int currentStep;
  final int totalSteps;
  final AppTheme theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: theme.spacing.screenPadding,
        vertical: theme.spacing.s16,
      ),
      child: Row(
        children: List.generate(totalSteps, (index) {
          final isActive = index < currentStep;
          final isCurrent = index == currentStep;
          return Expanded(
            child: Row(
              children: [
                Expanded(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    height: 4,
                    decoration: BoxDecoration(
                      color: isActive || isCurrent
                          ? theme.colors.primary
                          : theme.colors.textTertiary.withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                if (index < totalSteps - 1) SizedBox(width: theme.spacing.s8),
              ],
            ),
          );
        }),
      ),
    );
  }
}
// features/onboarding/presentation/onboarding_screens.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hamrah_madaran/core/theme/app_theme.dart';
import 'package:hamrah_madaran/core/utils/persian_utils.dart';
import 'package:hamrah_madaran/features/onboarding/domain/onboarding_state.dart'
    show OnboardingState, OnboardingConcern;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hamrah_madaran/l10n/app_localizations.dart';

/// Screen 1: Welcome
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    required this.onStart,
    required this.theme,
    required this.l10n,
  });

  final VoidCallback onStart;
  final AppTheme theme;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(theme.spacing.screenPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Illustration
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: theme.colors.primary.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.favorite_outline,
              size: 100,
              color: theme.colors.primary,
            ),
          ),
          SizedBox(height: theme.spacing.s40),
          // Title
          Text(
            l10n.onboardingWelcomeTitle,
            style: theme.textStyles.h1,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: theme.spacing.s16),
          // Subtitle
          Text(
            l10n.onboardingWelcomeSubtitle,
            style: theme.textStyles.body.copyWith(color: theme.colors.textSecondary),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: theme.spacing.s56),
          // Start button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onStart,
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colors.primary,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(theme.radius.button),
                ),
              ),
              child: Text(
                l10n.onboardingLetsGo,
                style: theme.textStyles.bodyStrong,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Screen 2: Child name & birth date
class ChildInfoScreen extends ConsumerStatefulWidget {
  const ChildInfoScreen({
    required this.nameController,
    required this.onDateSelected,
    required this.onNameChanged,
    required this.onNext,
    required this.onSkip,
    required this.theme,
    required this.l10n,
    required this.state,
  });

  final TextEditingController nameController;
  final Function(DateTime, bool, int?) onDateSelected;
  final Function(String) onNameChanged;
  final VoidCallback onNext;
  final VoidCallback onSkip;
  final AppTheme theme;
  final AppLocalizations l10n;
  final OnboardingState state;

  @override
  ConsumerState<ChildInfoScreen> createState() => ChildInfoScreenState();
}

class ChildInfoScreenState extends ConsumerState<ChildInfoScreen> {
  bool _isPreBirth = false;
  int? _gestationalWeeks;
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    widget.nameController.addListener(() {
      widget.onNameChanged(widget.nameController.text);
    });
  }

  @override
  void dispose() {
    widget.nameController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = widget.theme;
    final l10n = widget.l10n;
    return Padding(
      padding: EdgeInsets.all(theme.spacing.screenPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.onboardingChildNameLabel,
            style: theme.textStyles.h2,
          ),
          SizedBox(height: theme.spacing.s8),
          TextField(
            controller: widget.nameController,
            style: theme.textStyles.body,
            decoration: InputDecoration(
              hintText: l10n.onboardingChildNameLabel,
              hintStyle: theme.textStyles.body.copyWith(color: theme.colors.textTertiary),
              filled: true,
              fillColor: theme.colors.bgSurface,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: theme.spacing.s16,
                vertical: theme.spacing.s16,
              ),
            ),
            textDirection: TextDirection.rtl,
          ),
          SizedBox(height: theme.spacing.s32),
          // Pre-birth toggle
          Row(
            children: [
              Checkbox(
                value: _isPreBirth,
                onChanged: (value) {
                  setState(() {
                    _isPreBirth = value ?? false;
                    if (!_isPreBirth) _gestationalWeeks = null;
                  });
                },
                activeColor: theme.colors.primary,
              ),
              Text(
                _isPreBirth ? l10n.onboardingPreBirthOption : l10n.onboardingBirthDateLabel,
                style: theme.textStyles.body,
              ),
            ],
          ),
          SizedBox(height: theme.spacing.s16),
          // Date picker
          InkWell(
            onTap: () => _showDatePicker(context),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: theme.spacing.s16,
                vertical: theme.spacing.s16,
              ),
              decoration: BoxDecoration(
                color: theme.colors.bgSurface,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: theme.colors.textTertiary.withValues(alpha: 0.3),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _selectedDate != null
                        ? formatJalaliDate(_selectedDate!, format: 'long')
                        : _isPreBirth
                            ? l10n.onboardingDueDateLabel
                            : l10n.onboardingBirthDateLabel,
                    style: theme.textStyles.body.copyWith(
                      color: _selectedDate != null
                          ? theme.colors.textPrimary
                          : theme.colors.textTertiary,
                    ),
                  ),
                  Icon(
                    Icons.calendar_today_outlined,
                    color: theme.colors.textTertiary,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
          // Gestational weeks (if pre-birth)
          if (_isPreBirth) ...[
            SizedBox(height: theme.spacing.s16),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'هفته‌های بارداری',
                labelStyle: theme.textStyles.body,
                filled: true,
                fillColor: theme.colors.bgSurface,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (value) {
                _gestationalWeeks = int.tryParse(value);
                if (_gestationalWeeks != null && _selectedDate != null) {
                  widget.onDateSelected(_selectedDate!, true, _gestationalWeeks);
                }
              },
            ),
          ],
          const Spacer(),
          // Buttons
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: widget.onSkip,
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(theme.radius.button),
                    ),
                  ),
                  child: Text(l10n.onboardingSkip, style: theme.textStyles.bodyStrong),
                ),
              ),
              SizedBox(width: theme.spacing.s16),
              Expanded(
                child: ElevatedButton(
                  onPressed: _canProceed() ? widget.onNext : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: theme.colors.primary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(theme.radius.button),
                    ),
                  ),
                  child: Text(l10n.onboardingNext, style: theme.textStyles.bodyStrong),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  bool _canProceed() {
    return widget.nameController.text.trim().isNotEmpty && _selectedDate != null;
  }

  Future<void> _showDatePicker(BuildContext context) async {
    final now = DateTime.now();
    final initialDate = _selectedDate ?? now;
    final theme = widget.theme;

    final picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(now.year - 5),
      lastDate: _isPreBirth ? now.add(const Duration(days: 280)) : now,
      builder: (context, child) => Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.light(
            primary: theme.colors.primary,
            onPrimary: Colors.white,
            surface: theme.colors.bgSurface,
            onSurface: theme.colors.textPrimary,
          ),
        ),
        child: child!,
      ),
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
      widget.onDateSelected(picked, _isPreBirth, _gestationalWeeks);
    }
  }
}

/// Screen 3: Concerns (optional)
class ConcernsScreen extends StatelessWidget {
  const ConcernsScreen({
    required this.onConcernToggle,
    required this.onNext,
    required this.onSkip,
    required this.theme,
    required this.l10n,
    required this.state,
  });

  final Function(String) onConcernToggle;
  final VoidCallback onNext;
  final VoidCallback onSkip;
  final AppTheme theme;
  final AppLocalizations l10n;
  final OnboardingState state;

  @override
  Widget build(BuildContext context) {
    final concerns = [
      OnboardingConcern.sleep,
      OnboardingConcern.feeding,
      OnboardingConcern.play,
      OnboardingConcern.growth,
      OnboardingConcern.vaccines,
      OnboardingConcern.behavior,
    ];

    return Padding(
      padding: EdgeInsets.all(theme.spacing.screenPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.onboardingConcernsTitle,
            style: theme.textStyles.h2,
          ),
          SizedBox(height: theme.spacing.s24),
          Wrap(
            spacing: theme.spacing.s12,
            runSpacing: theme.spacing.s12,
            children: concerns.map((concern) {
              final isSelected = state.selectedConcerns.contains(concern.code);
              return FilterChip(
                label: Text(
                  concern.farsiLabel,
                  style: theme.textStyles.body.copyWith(
                    color: isSelected ? Colors.white : theme.colors.textPrimary,
                  ),
                ),
                selected: isSelected,
                onSelected: (_) => onConcernToggle(concern.code),
                selectedColor: theme.colors.primary,
                backgroundColor: theme.colors.bgSurface,
                checkmarkColor: Colors.white,
                side: BorderSide(
                  color: isSelected
                      ? theme.colors.primary
                      : theme.colors.textTertiary.withValues(alpha: 0.3),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(theme.radius.chip),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: theme.spacing.s16,
                  vertical: theme.spacing.s10,
                ),
              );
            }).toList(),
          ),
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: onSkip,
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(theme.radius.button),
                    ),
                  ),
                  child: Text(l10n.onboardingSkip, style: theme.textStyles.bodyStrong),
                ),
              ),
              SizedBox(width: theme.spacing.s16),
              Expanded(
                child: ElevatedButton(
                  onPressed: onNext,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: theme.colors.primary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(theme.radius.button),
                    ),
                  ),
                  child: Text(l10n.onboardingNext, style: theme.textStyles.bodyStrong),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Screen 4: Notifications (optional)
class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({
    required this.onAllowed,
    required this.onFinish,
    required this.onSkip,
    required this.theme,
    required this.l10n,
  });

  final Function(bool) onAllowed;
  final VoidCallback onFinish;
  final VoidCallback onSkip;
  final AppTheme theme;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(theme.spacing.screenPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: theme.colors.accent.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.notifications_active_outlined,
              size: 60,
              color: theme.colors.accent,
            ),
          ),
          SizedBox(height: theme.spacing.s32),
          Text(
            l10n.onboardingNotificationsTitle,
            style: theme.textStyles.h2,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: theme.spacing.s40),
          // Allow button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => onAllowed(true),
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colors.primary,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(theme.radius.button),
                ),
              ),
              child: Text(
                l10n.onboardingNotificationsAllow,
                style: theme.textStyles.bodyStrong,
              ),
            ),
          ),
          SizedBox(height: theme.spacing.s16),
          // Skip button
          TextButton(
            onPressed: () {
              onAllowed(false);
              onFinish();
            },
            child: Text(
              l10n.onboardingSkip,
              style: theme.textStyles.bodyStrong.copyWith(color: theme.colors.textSecondary),
            ),
          ),
        ],
      ),
    );
  }
}
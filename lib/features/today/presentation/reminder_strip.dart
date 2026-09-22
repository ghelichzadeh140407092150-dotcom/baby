// features/today/presentation/reminder_strip.dart
import 'package:flutter/material.dart';
import 'package:hamrah_madaran/core/theme/app_theme.dart';

/// Reminder strip shown at top of Today screen
class ReminderStrip extends StatelessWidget {
  const ReminderStrip({
    this.vaccineReminder,
    this.measurementReminder,
    required this.theme,
    super.key,
  });

  final String? vaccineReminder;
  final String? measurementReminder;
  final AppTheme theme;

  @override
  Widget build(BuildContext context) {
    final reminders = <String>[];
    if (vaccineReminder != null) reminders.add(vaccineReminder!);
    if (measurementReminder != null) reminders.add(measurementReminder!);

    if (reminders.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: EdgeInsets.fromLTRB(
        theme.spacing.screenPadding,
        0,
        theme.spacing.screenPadding,
        theme.spacing.s16,
      ),
      child: Container(
        padding: EdgeInsets.all(theme.spacing.s16),
        decoration: BoxDecoration(
          color: theme.colors.statusAttention.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: theme.colors.statusAttention.withValues(alpha: 0.3)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: reminders.map((reminder) {
            return Padding(
              padding: EdgeInsets.only(bottom: reminders.indexOf(reminder) == reminders.length - 1 ? 0 : theme.spacing.s8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.notifications_active_outlined,
                    size: 20,
                    color: theme.colors.statusAttention,
                  ),
                  SizedBox(width: theme.spacing.s12),
                  Expanded(
                    child: Text(
                      reminder,
                      style: theme.textStyles.body.copyWith(color: theme.colors.statusAttention),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hamrah_madaran/core/theme/app_theme.dart';
import 'package:hamrah_madaran/core/theme/theme_provider.dart';
import 'package:hamrah_madaran/l10n/app_localizations.dart';

class MedicationTrackingScreen extends ConsumerWidget {
  const MedicationTrackingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final l10n = context.l10n;

    return Scaffold(
      backgroundColor: theme.colors.bgBase,
      appBar: AppBar(
        title: Text(l10n.medicationTracking, style: theme.textStyles.h2),
        backgroundColor: theme.colors.bgSurface,
        foregroundColor: theme.colors.textPrimary,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.add_outlined, color: theme.colors.textPrimary),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(theme.spacing.screenPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.medication_outlined,
                size: 80,
                color: theme.colors.textTertiary,
              ),
              SizedBox(height: theme.spacing.s24),
              Text(
                l10n.medicationIntro,
                style: theme.textStyles.body.copyWith(color: theme.colors.textSecondary),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: theme.spacing.s32),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add_outlined),
                label: Text(l10n.addMedication),
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.colors.primary,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                    horizontal: theme.spacing.s32,
                    vertical: theme.spacing.s16,
                  ),
                ),
              ),
              SizedBox(height: theme.spacing.s16),
              OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.schedule_outlined),
                label: Text(l10n.setReminder),
                style: OutlinedButton.styleFrom(
                  foregroundColor: theme.colors.primary,
                  side: BorderSide(color: theme.colors.primary),
                  padding: EdgeInsets.symmetric(
                    horizontal: theme.spacing.s32,
                    vertical: theme.spacing.s16,
                  ),
                ),
              ),
              SizedBox(height: theme.spacing.s32),
              _buildDisclaimerBar(theme, l10n),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: theme.colors.primary,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
    );
  }
}

Widget _buildDisclaimerBar(AppTheme theme, AppLocalizations l10n) {
  return Container(
    padding: EdgeInsets.all(theme.spacing.s16),
    decoration: BoxDecoration(
      color: theme.colors.statusInfo.withValues(alpha: 0.1),
      borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      border: Border.all(color: theme.colors.statusInfo.withValues(alpha: 0.3)),
    ),
    child: Row(
      children: [
        Icon(Icons.info_outline, color: theme.colors.statusInfo, size: 20),
        SizedBox(width: theme.spacing.s8),
        Expanded(
          child: Text(
            l10n.disclaimerMedical,
            style: theme.textStyles.caption.copyWith(
              color: theme.colors.statusInfo,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  );
}
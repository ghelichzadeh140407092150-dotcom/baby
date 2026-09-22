import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hamrah_madaran/core/theme/app_theme.dart';
import 'package:hamrah_madaran/core/utils/persian_utils.dart';
import 'package:hamrah_madaran/l10n/app_localizations.dart';

class VaccineTimelineScreen extends ConsumerWidget {
  const VaccineTimelineScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final l10n = context.l10n;
    final activeChildId = ref.watch(activeChildIdProvider);

    return Scaffold(
      backgroundColor: theme.colors.bgBase,
      appBar: AppBar(
        title: Text(l10n.vaccinationTimeline, style: theme.textStyles.h2),
        backgroundColor: theme.colors.bgSurface,
        foregroundColor: theme.colors.textPrimary,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(theme.spacing.screenPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.local_pharmacy_outlined,
                size: 80,
                color: theme.colors.textTertiary,
              ),
              SizedBox(height: theme.spacing.s24),
              Text(
                activeChildId != null
                    ? l10n.vaccinesForChild
                    : l10n.selectChildFirst,
                style: theme.textStyles.body.copyWith(color: theme.colors.textSecondary),
                textAlign: TextAlign.center,
              ),
              if (activeChildId != null) ...[
                SizedBox(height: theme.spacing.s16),
                Text(
                  'BCG:出生時\nOPV: 2, 4, 6 ماه\nHepB:birth, 1, 6 ماه\nDTaP: 2, 4, 6, 18 ماه\nHib: 2, 4, 6 ماه\nPCV: 2, 4, 12 ماه\nRotavirus: 2, 4 ماه\nIPV: 2, 4 moths\nMMR: 12, 18 ماه\nVaricella: 12, 18 ماه\nHepA: 12, 18 moths',
                  style: theme.textStyles.body,
                  textAlign: TextAlign.center,
                ),
              ],
              SizedBox(height: theme.spacing.s32),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add_circle_outline),
                label: Text(l10n.addVaccinationRecord),
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.colors.primary,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                    horizontal: theme.spacing.s32,
                    vertical: theme.spacing.s16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildDisclaimerBar(theme, l10n),
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
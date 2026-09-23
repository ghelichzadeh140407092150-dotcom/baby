import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hamrah_madaran/core/theme/app_theme.dart';
import 'package:hamrah_madaran/core/theme/theme_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hamrah_madaran/l10n/app_localizations.dart';

enum ToothStatus { healthy, emerging, erupted, problematic, missing }

class FdiTooth {
  final int quadrant; // 1-4
  final int tooth; // 1-8
  final String fdiNumber; // 11-48
  final String persianName;
  final String englishName;

  FdiTooth({
    required this.quadrant,
    required this.tooth,
    required this.fdiNumber,
    required this.persianName,
    required this.englishName,
  });

  String get label => '$fdiNumber ($persianName)';
}

class TeethingScreen extends ConsumerWidget {
  const TeethingScreen({super.key});

  static final List<FdiTooth> allTeeth = [
    // Upper right (quadrant 1)
    FdiTooth(quadrant: 1, tooth: 1, fdiNumber: '11', persianName: 'اولى القص', englishName: 'Upper Right Incisor'),
    FdiTooth(quadrant: 1, tooth: 2, fdiNumber: '12', persianName: 'نیمه القص', englishName: 'Upper Right Lateral Incisor'),
    FdiTooth(quadrant: 1, tooth: 3, fdiNumber: '13', persianName: ' canine', englishName: 'Upper Right Canine'),
    FdiTooth(quadrant: 1, tooth: 4, fdiNumber: '14', persianName: 'اول premolar', englishName: 'Upper Right First Premolar'),
    FdiTooth(quadrant: 1, tooth: 5, fdiNumber: '15', persianName: 'هوم premolar', englishName: 'Upper Right Second Premolar'),
    FdiTooth(quadrant: 1, tooth: 6, fdiNumber: '16', persianName: ' اول molar', englishName: 'Upper Right First Molar'),
    FdiTooth(quadrant: 1, tooth: 7, fdiNumber: '17', persianName: ' دوم molar', englishName: 'Upper Right Second Molar'),
    FdiTooth(quadrant: 1, tooth: 8, fdiNumber: '18', persianName: ' سوم molar', englishName: 'Upper Right Third Molar/Wisdom'),
    // Upper left (quadrant 2)
    FdiTooth(quadrant: 2, tooth: 1, fdiNumber: '21', persianName: 'اولى القص', englishName: 'Upper Left Incisor'),
    FdiTooth(quadrant: 2, tooth: 2, fdiNumber: '22', persianName: 'نیمه القص', englishName: 'Upper Left Lateral Incisor'),
    FdiTooth(quadrant: 2, tooth: 3, fdiNumber: '23', persianName: ' canine', englishName: 'Upper Left Canine'),
    FdiTooth(quadrant: 2, tooth: 4, fdiNumber: '24', persianName: 'اول premolar', englishName: 'Upper Left First Premolar'),
    FdiTooth(quadrant: 2, tooth: 5, fdiNumber: '25', persianName: 'هوم premolar', englishName: 'Upper Left Second Premolar'),
    FdiTooth(quadrant: 2, tooth: 6, fdiNumber: '26', persianName: ' اول molar', englishName: 'Upper Left First Molar'),
    FdiTooth(quadrant: 2, tooth: 7, fdiNumber: '27', persianName: ' دوم molar', englishName: 'Upper Left Second Molar'),
    FdiTooth(quadrant: 2, tooth: 8, fdiNumber: '28', persianName: ' سوم molar', englishName: 'Upper Left Third Molar/Wisdom'),
    // Lower left (quadrant 3)
    FdiTooth(quadrant: 3, tooth: 1, fdiNumber: '31', persianName: 'اولى القص', englishName: 'Lower Left Incisor'),
    FdiTooth(quadrant: 3, tooth: 2, fdiNumber: '32', persianName: 'نیمه القص', englishName: 'Lower Left Lateral Incisor'),
    FdiTooth(quadrant: 3, tooth: 3, fdiNumber: '33', persianName: ' canine', englishName: 'Lower Left Canine'),
    FdiTooth(quadrant: 3, tooth: 4, fdiNumber: '34', persianName: 'اول premolar', englishName: 'Lower Left First Premolar'),
    FdiTooth(quadrant: 3, tooth: 5, fdiNumber: '35', persianName: 'هوم premolar', englishName: 'Lower Left Second Premolar'),
    FdiTooth(quadrant: 3, tooth: 6, fdiNumber: '36', persianName: ' اول molar', englishName: 'Lower Left First Molar'),
    FdiTooth(quadrant: 3, tooth: 7, fdiNumber: '37', persianName: ' دوم molar', englishName: 'Lower Left Second Molar'),
    FdiTooth(quadrant: 3, tooth: 8, fdiNumber: '38', persianName: ' سوم molar', englishName: 'Lower Left Third Molar/Wisdom'),
    // Lower right (quadrant 4)
    FdiTooth(quadrant: 4, tooth: 1, fdiNumber: '41', persianName: 'اولى القص', englishName: 'Lower Right Incisor'),
    FdiTooth(quadrant: 4, tooth: 2, fdiNumber: '42', persianName: 'نیمه القص', englishName: 'Lower Right Lateral Incisor'),
    FdiTooth(quadrant: 4, tooth: 3, fdiNumber: '43', persianName: ' canine', englishName: 'Lower Right Canine'),
    FdiTooth(quadrant: 4, tooth: 4, fdiNumber: '44', persianName: 'اول premolar', englishName: 'Lower Right First Premolar'),
    FdiTooth(quadrant: 4, tooth: 5, fdiNumber: '45', persianName: 'هوم premolar', englishName: 'Lower Right Second Premolar'),
    FdiTooth(quadrant: 4, tooth: 6, fdiNumber: '46', persianName: ' اول molar', englishName: 'Lower Right First Molar'),
    FdiTooth(quadrant: 4, tooth: 7, fdiNumber: '47', persianName: ' دوم molar', englishName: 'Lower Right Second Molar'),
    FdiTooth(quadrant: 4, tooth: 8, fdiNumber: '48', persianName: ' سوم molar', englishName: 'Lower Right Third Molar/Wisdom'),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final l10n = context.l10n;

    return Scaffold(
      backgroundColor: theme.colors.bgBase,
      appBar: AppBar(
        title: Text(l10n.teething, style: theme.textStyles.h2),
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
              Text(l10n.toothChart, style: theme.textStyles.h3),
              SizedBox(height: theme.spacing.s24),
              _ToothGrid(
                teeth: allTeeth,
                theme: theme,
                l10n: l10n,
              ),
              SizedBox(height: theme.spacing.s32),
              _buildDisclaimerBar(theme, l10n),
            ],
          ),
        ),
      ),
    );
  }
}

class _ToothGrid extends StatelessWidget {
  const _ToothGrid({
    required this.teeth,
    required this.theme,
    required this.l10n,
  });

  final List<FdiTooth> teeth;
  final AppTheme theme;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: theme.spacing.s8,
      runSpacing: theme.spacing.s8,
      children: teeth.map((tooth) {
        return _ToothCard(tooth: tooth, theme: theme, l10n: l10n);
      }).toList(),
    );
  }
}

class _ToothCard extends StatelessWidget {
  const _ToothCard({
    required this.tooth,
    required this.theme,
    required this.l10n,
  });

  final FdiTooth tooth;
  final AppTheme theme;
  final AppLocalizations l10n;

  Color _getStatusColor(String status) {
    switch (status) {
      case 'healthy':
        return theme.colors.statusOk;
      case 'emerging':
        return theme.colors.primary;
      case 'erupted':
        return theme.colors.secondary;
      case 'problematic':
        return theme.colors.statusAttention;
      case 'missing':
        return theme.colors.textTertiary;
      default:
        return theme.colors.textTertiary;
    }
  }

  String _getStatusFarsi(String status) {
    switch (status) {
      case 'healthy':
        return ' سالم';
      case 'emerging':
        return ' استخراجی';
      case 'erupted':
        return ' ظاهر شده';
      case 'problematic':
        return ' مشکل';
      case 'missing':
        return ' به دست آمده';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(theme.spacing.s12),
      decoration: BoxDecoration(
        color: theme.colors.bgSurface,
        borderRadius: BorderRadius.circular(theme.radius.chip),
        border: Border.all(color: theme.colors.textTertiary.withValues(alpha: 0.2)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            tooth.label,
            style: theme.textStyles.caption.copyWith(
              color: theme.colors.textPrimary,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: theme.spacing.s4),
          Icon(
            Icons.remove,
            size: 40,
            color: theme.colors.textTertiary,
          ),
          SizedBox(height: theme.spacing.s4),
          Text(
            _getStatusFarsi('healthy'),
            style: theme.textStyles.tiny.copyWith(
              color: _getStatusColor('healthy'),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
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
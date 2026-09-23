import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hamrah_madaran/core/theme/app_theme.dart';
import 'package:hamrah_madaran/core/theme/theme_provider.dart';
import 'package:hamrah_madaran/core/di/service_locator.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hamrah_madaran/l10n/app_localizations.dart';

enum MilestoneCategory { social, cognitive, motor, language, selfCare }

class Milestone {
  final String code;
  final String farsiName;
  final String englishName;
  final String category;
  final int expectedMonthsMin;
  final int expectedMonthsMax;
  final String description;

  Milestone({
    required this.code,
    required this.farsiName,
    required this.englishName,
    required this.category,
    required this.expectedMonthsMin,
    required this.expectedMonthsMax,
    required this.description,
  });
}

class MilestonesScreen extends ConsumerWidget {
  const MilestonesScreen({super.key});

  static final List<Milestone> allMilestones = [
    Milestone(
      code: 'social_smile',
      farsiName: 'لخند اجتماعی',
      englishName: 'Social Smile',
      category: 'social',
      expectedMonthsMin: 1,
      expectedMonthsMax: 3,
      description: 'لخند کردن در پاسخ به صورت مادر/پدر یا آوا',
    ),
    Milestone(
      code: 'tracks_objects',
      farsiName: 'پیروی از اشیاء با چشم',
      englishName: 'Tracks Objects',
      category: 'cognitive',
      expectedMonthsMin: 1,
      expectedMonthsMax: 3,
      description: 'دنبال کردن اشیاء متحرک با چشم',
    ),
    Milestone(
      code: 'head_control',
      farsiName: 'کنترل سر',
      englishName: 'Head Control',
      category: 'motor',
      expectedMonthsMin: 2,
      expectedMonthsMax: 4,
      description: 'م्हفاظی کردن سر در положه肚',
    ),
    Milestone(
      code: 'reaches_for_objects',
      farsiName: 'Extended hand',
      englishName: 'Reaches for Objects',
      category: 'motor',
      expectedMonthsMin: 3,
      expectedMonthsMax: 5,
      description: ' extensión دادن دست به جهت گرفتن اشیاء',
    ),
    Milestone(
      code: 'social_recognition',
      farsiName: 'شناخت والدین',
      englishName: 'Social Recognition',
      category: 'social',
      expectedMonthsMin: 2,
      expectedMonthsMax: 4,
      description: 'شناخت والدین و مألوفان',
    ),
    Milestone(
      code: 'first_words',
      farsiName: 'کلمات اول',
      englishName: 'First Words',
      category: 'language',
      expectedMonthsMin: 9,
      expectedMonthsMax: 14,
      description: 'تکرار کلمات ساده مانند mamma، papa',
    ),
    Milestone(
      code: 'waves_hand',
      farsiName: 'موافقت با دست',
      englishName: 'Waves Hand',
      category: 'social',
      expectedMonthsMin: 9,
      expectedMonthsMax: 12,
      description: 'تلقين موافقت با دست به/pathologist',
    ),
    Milestone(
      code: 'walks_alone',
      farsiName: 'پنجش',
      englishName: 'Walks Alone',
      category: 'motor',
      expectedMonthsMin: 12,
      expectedMonthsMax: 18,
      description: 'پرواح sans aid',
    ),
    Milestone(
      code: 'builds_tower_2',
      farsiName: 'سقف دو بلوک',
      englishName: 'Builds Tower of 2',
      category: 'cognitive',
      expectedMonthsMin: 15,
      expectedMonthsMax: 18,
      description: 'ساختنsummary revolved tower از ۲ بلوک',
    ),
    Milestone(
      code: 'follows_instructions',
      farsiName: 'Follows Instructions',
      englishName: 'Follows Instructions',
      category: 'cognitive',
      expectedMonthsMin: 18,
      expectedMonthsMax: 24,
      description: '向 follows instructions ساده',
    ),
    Milestone(
      code: 'uses_cup',
      farsiName: 'Using Cup',
      englishName: 'Uses Cup',
      category: 'selfCare',
      expectedMonthsMin: 12,
      expectedMonthsMax: 18,
      description: ' نوشابه خودآبر',
    ),
    Milestone(
      code: 'puts_on_shirt',
      farsiName: 'Wears Shirt',
      englishName: 'Puts on Shirt',
      category: 'selfCare',
      expectedMonthsMin: 24,
      expectedMonthsMax: 30,
      description: ' dress الذات',
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final l10n = context.l10n;
    final activeChildId = ref.watch(activeChildIdProvider);

    return Scaffold(
      backgroundColor: theme.colors.bgBase,
      appBar: AppBar(
        title: Text(l10n.developmentalMilestones, style: theme.textStyles.h2),
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
              Text(l10n.milestoneChart, style: theme.textStyles.h3),
              SizedBox(height: theme.spacing.s24),
              _MilestoneList(
                milestones: allMilestones,
                theme: theme,
                l10n: l10n,
              ),
              Spacer(),
              _buildDisclaimerBar(theme, l10n),
            ],
          ),
        ),
      ),
    );
  }
}

class _MilestoneList extends StatelessWidget {
  const _MilestoneList({
    required this.milestones,
    required this.theme,
    required this.l10n,
  });

  final List<Milestone> milestones;
  final AppTheme theme;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.all(theme.spacing.s16),
        itemCount: milestones.length,
        itemBuilder: (context, index) {
          final milestone = milestones[index];
          return _MilestoneCard(
            milestone: milestone,
            theme: theme,
            l10n: l10n,
          );
        },
      ),
    );
  }
}

class _MilestoneCard extends StatelessWidget {
  const _MilestoneCard({
    required this.milestone,
    required this.theme,
    required this.l10n,
  });

  final Milestone milestone;
  final AppTheme theme;
  final AppLocalizations l10n;

  Color _getCategoryColor(String category) {
    switch (category) {
      case 'social':
        return theme.colors.primary;
      case 'cognitive':
        return theme.colors.secondary;
      case 'motor':
        return theme.colors.accent;
      case 'language':
        return theme.colors.lilac;
      case 'selfCare':
        return theme.colors.statusOk;
      default:
        return theme.colors.textTertiary;
    }
  }

  String _getCategoryFarsi(String category) {
    switch (category) {
      case 'social':
        return 'اجتماعی';
      case 'cognitive':
        return ' شناختی';
      case 'motor':
        return ' حرکتی';
      case 'language':
        return ' زبانی';
      case 'selfCare':
        return ' خودlinks';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: theme.spacing.s16),
      padding: EdgeInsets.all(theme.spacing.s16),
      decoration: BoxDecoration(
        color: theme.colors.bgSurface,
        borderRadius: BorderRadius.circular(theme.radius.card),
        border: Border.all(color: theme.colors.textTertiary.withValues(alpha: 0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(theme.spacing.s6),
                decoration: BoxDecoration(
                  color: _getCategoryColor(milestone.category).withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(theme.radius.chip),
                ),
                child: Text(
                  _getCategoryFarsi(milestone.category),
                  style: theme.textStyles.caption.copyWith(
                    color: _getCategoryColor(milestone.category),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Spacer(),
              Text(
                '${milestone.expectedMonthsMin}-${milestone.expectedMonthsMax} ماه',
                style: theme.textStyles.caption.copyWith(
                  color: theme.colors.textTertiary,
                ),
              ),
            ],
          ),
          SizedBox(height: theme.spacing.s8),
          Text(
            milestone.farsiName,
            style: theme.textStyles.bodyStrong,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: theme.spacing.s4),
          Text(
            milestone.description,
            style: theme.textStyles.tiny.copyWith(color: theme.colors.textSecondary),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
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
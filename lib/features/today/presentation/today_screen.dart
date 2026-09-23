// features/today/presentation/today_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hamrah_madaran/core/theme/app_theme.dart';
import 'package:hamrah_madaran/core/theme/theme_provider.dart';
import 'package:hamrah_madaran/core/utils/persian_utils.dart';
import 'package:hamrah_madaran/features/today/application/today_controller.dart';
import 'package:hamrah_madaran/features/today/presentation/reminder_strip.dart';
import 'package:hamrah_madaran/l10n/app_localizations.dart';

/// Today screen - the app's main entry point
class TodayScreen extends ConsumerWidget {
  const TodayScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(todayControllerProvider);
    final theme = ref.watch(appThemeProvider);
    final l10n = context.l10n;

    return Scaffold(
      backgroundColor: theme.colors.bgBase,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // Header with child info
            SliverToBoxAdapter(
              child: _Header(
                childName: state.childName,
                childAgeInMonths: state.childAgeInMonths,
                theme: theme,
              ),
            ),
            // Loading state
            if (state.isLoading)
              SliverFillRemaining(
                child: Center(
                  child: CircularProgressIndicator(color: theme.colors.primary),
                ),
              )
            else if (state.error != null)
              SliverFillRemaining(
                child: _ErrorState(
                  message: state.error!,
                  onRetry: () => ref.read(todayControllerProvider.notifier).refresh(),
                  theme: theme,
                  l10n: l10n,
                ),
              )
            else
              SliverList(
                delegate: SliverChildListDelegate([
                  // Reminder strip (if any)
                  if (state.vaccineReminder != null || state.measurementReminder != null)
                    ReminderStrip(
                      vaccineReminder: state.vaccineReminder,
                      measurementReminder: state.measurementReminder,
                      theme: theme,
                    ),
                  // Three content cards
                  _ContentCard(
                    title: l10n.todayGame,
                    content: state.game,
                    onTap: () => _openDetail(context, 'game', state.game?.id),
                    onReroll: () => ref.read(todayControllerProvider.notifier).reroll('game'),
                    theme: theme,
                    tintColor: theme.colors.primary,
                  ),
                  SizedBox(height: theme.spacing.s20),
                  _ContentCard(
                    title: l10n.todayStory,
                    content: state.story,
                    onTap: () => _openDetail(context, 'story', state.story?.id),
                    onReroll: () => ref.read(todayControllerProvider.notifier).reroll('story'),
                    theme: theme,
                    tintColor: theme.colors.lilac,
                  ),
                  SizedBox(height: theme.spacing.s20),
                  _ContentCard(
                    title: l10n.todayCraft,
                    content: state.craft,
                    onTap: () => _openDetail(context, 'craft', state.craft?.id),
                    onReroll: () => ref.read(todayControllerProvider.notifier).reroll('craft'),
                    theme: theme,
                    tintColor: theme.colors.accent,
                  ),
                  SizedBox(height: theme.spacing.s40),
                ]),
              ),
          ],
        ),
      ),
    );
  }

  void _openDetail(BuildContext context, String type, String? id) {
    if (id == null) return;
    context.push('/$type/$id');
  }
}

/// Header with child avatar, name, and age
class _Header extends StatelessWidget {
  const _Header({
    required this.childName,
    required this.childAgeInMonths,
    required this.theme,
  });

  final String childName;
  final int childAgeInMonths;
  final AppTheme theme;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Padding(
      padding: EdgeInsets.all(theme.spacing.screenPadding),
      child: Row(
        children: [
          // Avatar (generated from seed)
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: theme.colors.primary.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                childName.isNotEmpty ? childName[0] : '👶',
                style: theme.textStyles.display.copyWith(
                  fontSize: 28,
                  color: theme.colors.primary,
                ),
              ),
            ),
          ),
          SizedBox(width: theme.spacing.s16),
          // Name and age
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  childName,
                  style: theme.textStyles.h2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: theme.spacing.s4),
                Text(
                  ageFromBirthDate(
                    DateTime.now().subtract(Duration(days: childAgeInMonths * 30)),
                  )['persian'] as String,
                  style: theme.textStyles.body.copyWith(color: theme.colors.textSecondary),
                ),
              ],
            ),
          ),
          // Settings shortcut
          IconButton(
            icon: Icon(Icons.settings_outlined, color: theme.colors.textSecondary),
            onPressed: () => context.push('/settings'),
            tooltip: l10n.settings,
          ),
        ],
      ),
    );
  }
}

/// Content card for game/story/craft
class _ContentCard extends StatelessWidget {
  const _ContentCard({
    required this.title,
    required this.content,
    required this.onTap,
    required this.onReroll,
    required this.theme,
    required this.tintColor,
  });

  final String title;
  final dynamic content;
  final VoidCallback onTap;
  final VoidCallback onReroll;
  final AppTheme theme;
  final Color tintColor;

  @override
  Widget build(BuildContext context) {
    if (content == null) {
      return _EmptyCard(title: title, theme: theme, tintColor: tintColor);
    }

    final base = content.base as dynamic;
    final thumbnail = base.thumbnail;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(theme.radius.card),
      child: Container(
        constraints: const BoxConstraints(minHeight: 200),
        decoration: BoxDecoration(
          color: theme.colors.bgSurface,
          borderRadius: BorderRadius.circular(theme.radius.card),
          boxShadow: theme.shadows.card,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Illustration area
            Stack(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(theme.radius.card)),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        tintColor.withValues(alpha: 0.2),
                        theme.colors.bgSurface,
                      ],
                    ),
                  ),
                  child: thumbnail != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(theme.radius.card)),
                          child: Image.asset(
                            thumbnail,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            errorBuilder: (_, __, ___) => _placeholderIcon(),
                          ),
                        )
                      : _placeholderIcon(),
                ),
                // Reroll button
                Positioned(
                  top: theme.spacing.s12,
                  left: theme.spacing.s12, // RTL: left = trailing
                  child: IconButton(
                    onPressed: onReroll,
                    icon: Icon(
                      Icons.refresh_rounded,
                      color: theme.colors.textTertiary,
                      size: 22,
                    ),
                    style: IconButton.styleFrom(
                      backgroundColor: theme.colors.bgSurface.withValues(alpha: 0.9),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(theme.radius.chip)),
                    ),
                    tooltip: 'یه دیگه',
                  ),
                ),
              ],
            ),
            // Content area
            Padding(
              padding: EdgeInsets.all(theme.spacing.cardPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: theme.textStyles.h2.copyWith(color: tintColor),
                  ),
                  SizedBox(height: theme.spacing.s8),
                  Text(
                    base.title,
                    style: theme.textStyles.h2,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: theme.spacing.s12),
                  // Metadata chips
                  Wrap(
                    spacing: theme.spacing.s8,
                    runSpacing: theme.spacing.s8,
                    children: [
                      _MetadataChip(
                        label: '${toPersianDigits(base.durationMinutes)} ${context.l10n.unitMinutes}',
                        color: tintColor,
                        theme: theme,
                      ),
                      _MetadataChip(
                        label: '${toPersianDigits(base.minAgeMonths)}-${toPersianDigits(base.maxAgeMonths)} ${context.l10n.unitMonths}',
                        color: theme.colors.secondary,
                        theme: theme,
                      ),
                      if ((base.materials as List?)?.isNotEmpty ?? false)
                        _MetadataChip(
                          label: '${toPersianDigits((base.materials as List).length)} ${context.l10n.unitItems}',
                          color: theme.colors.accent,
                          theme: theme,
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _placeholderIcon() {
    IconData icon;
    if (content is Game) icon = Icons.sports_esports_outlined;
    else if (content is Story) icon = Icons.menu_book_outlined;
    else if (content is Craft) icon = Icons.brush_outlined;
    else icon = Icons.content_paste_outlined;

    return Center(
      child: Icon(icon, size: 80, color: tintColor.withValues(alpha: 0.4)),
    );
  }
}

/// Empty card when no content available
class _EmptyCard extends StatelessWidget {
  const _EmptyCard({
    required this.title,
    required this.theme,
    required this.tintColor,
  });

  final String title;
  final AppTheme theme;
  final Color tintColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 200),
      decoration: BoxDecoration(
        color: theme.colors.bgSurface,
        borderRadius: BorderRadius.circular(theme.radius.card),
        boxShadow: theme.shadows.card,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(theme.radius.card)),
              color: tintColor.withValues(alpha: 0.1),
            ),
            child: Center(
              child: Icon(
                Icons.inbox_outlined,
                size: 64,
                color: tintColor.withValues(alpha: 0.5),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(theme.spacing.cardPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: theme.textStyles.h2.copyWith(color: tintColor)),
                SizedBox(height: theme.spacing.s8),
                Text(
                  context.l10n.emptyStateNoContent,
                  style: theme.textStyles.body.copyWith(color: theme.colors.textSecondary),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Small metadata chip
class _MetadataChip extends StatelessWidget {
  const _MetadataChip({
    required this.label,
    required this.color,
    required this.theme,
  });

  final String label;
  final Color color;
  final AppTheme theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: theme.spacing.s12, vertical: theme.spacing.s6),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(theme.radius.chip),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Text(
        label,
        style: theme.textStyles.caption.copyWith(
          color: color,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

/// Error state
class _ErrorState extends StatelessWidget {
  const _ErrorState({
    required this.message,
    required this.onRetry,
    required this.theme,
    required this.l10n,
  });

  final String message;
  final VoidCallback onRetry;
  final AppTheme theme;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(theme.spacing.screenPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error_outline,
              size: 64,
              color: theme.colors.statusAttention,
            ),
            SizedBox(height: theme.spacing.s16),
            Text(
              l10n.errorGeneric,
              style: theme.textStyles.h2,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: theme.spacing.s8),
            Text(
              message,
              style: theme.textStyles.body.copyWith(color: theme.colors.textSecondary),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: theme.spacing.s24),
            ElevatedButton(
              onPressed: onRetry,
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colors.primary,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: theme.spacing.s32, vertical: theme.spacing.s16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(theme.radius.button)),
              ),
              child: Text(l10n.loading, style: theme.textStyles.bodyStrong),
            ),
          ],
        ),
      ),
    );
  }
}
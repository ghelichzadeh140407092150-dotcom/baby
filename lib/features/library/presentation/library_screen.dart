// features/library/presentation/library_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hamrah_madaran/core/theme/app_theme.dart'
    show AppTheme;
import 'package:hamrah_madaran/core/theme/theme_provider.dart';
import 'package:hamrah_madaran/core/utils/persian_utils.dart'
    show toPersianDigits;
import 'package:hamrah_madaran/features/today/domain/content.dart'
    show Game, Story, Craft;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hamrah_madaran/l10n/app_localizations.dart';

/// Library screen with inner tabs
class LibraryScreen extends ConsumerStatefulWidget {
  const LibraryScreen({super.key});

  @override
  ConsumerState<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends ConsumerState<LibraryScreen> with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(appThemeProvider);
    final l10n = context.l10n;

    return Scaffold(
      backgroundColor: theme.colors.bgBase,
      appBar: AppBar(
        title: Text(l10n.library, style: theme.textStyles.h2),
        backgroundColor: theme.colors.bgSurface,
        foregroundColor: theme.colors.textPrimary,
        elevation: 0,
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorColor: theme.colors.lilac,
          labelColor: theme.colors.lilac,
          unselectedLabelColor: theme.colors.textTertiary,
          labelStyle: theme.textStyles.caption.copyWith(fontWeight: FontWeight.w600),
          unselectedLabelStyle: theme.textStyles.caption,
          tabs: [
            Tab(text: l10n.libraryGames),
            Tab(text: l10n.libraryStories),
            Tab(text: l10n.libraryCrafts),
            Tab(text: l10n.libraryFavorites),
            Tab(text: l10n.libraryWeDidIt),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list_outlined, color: theme.colors.textSecondary),
            onPressed: () => _showFilters(context, theme, l10n),
            tooltip: 'فیلترها',
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _ContentListScreen(
            contentType: 'game',
            theme: theme,
            l10n: l10n,
          ),
          _ContentListScreen(
            contentType: 'story',
            theme: theme,
            l10n: l10n,
          ),
          _ContentListScreen(
            contentType: 'craft',
            theme: theme,
            l10n: l10n,
          ),
          _ContentListScreen(
            contentType: 'favorites',
            theme: theme,
            l10n: l10n,
          ),
          _ContentListScreen(
            contentType: 'completed',
            theme: theme,
            l10n: l10n,
          ),
        ],
      ),
    );
  }

  void _showFilters(BuildContext context, AppTheme theme, AppLocalizations l10n) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => FilterBottomSheet(theme: theme, l10n: l10n),
    );
  }
}

/// Filter bottom sheet
class FilterBottomSheet extends ConsumerStatefulWidget {
  const FilterBottomSheet({required this.theme, required this.l10n});

  final AppTheme theme;
  final AppLocalizations l10n;

  @override
  ConsumerState<FilterBottomSheet> createState() => FilterBottomSheetState();
}

class FilterBottomSheetState extends ConsumerState<FilterBottomSheet> {
  int? _selectedDuration;
  String? _selectedPlace;
  String? _selectedGoal;
  bool _needsNoMaterials = false;

  @override
  Widget build(BuildContext context) {
    final theme = widget.theme;
    final l10n = widget.l10n;

    return Container(
      padding: EdgeInsets.all(theme.spacing.screenPadding),
      decoration: BoxDecoration(
        color: theme.colors.bgSurface,
        borderRadius: BorderRadius.vertical(top: Radius.circular(theme.radius.sheet)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Drag handle
          Container(
            width: 40,
            height: 4,
            margin: EdgeInsets.only(bottom: theme.spacing.s16),
            decoration: BoxDecoration(
              color: theme.colors.textTertiary,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          // Title
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(l10n.libraryFilterAge, style: theme.textStyles.h3),
              TextButton(
                onPressed: () {
                  setState(() {
                    _selectedDuration = null;
                    _selectedPlace = null;
                    _selectedGoal = null;
                    _needsNoMaterials = false;
                  });
                },
                child: Text(l10n.dialogCancel, style: theme.textStyles.bodyStrong),
              ),
            ],
          ),
          SizedBox(height: theme.spacing.s24),
          // Duration filter
          FilterSection(
            title: l10n.libraryFilterDuration,
            theme: theme,
            children: [
              LibraryFilterChip(
                label: '${toPersianDigits(10)} ${l10n.unitMinutes}-',
                value: 10,
                groupValue: _selectedDuration,
                onChanged: (v) => setState(() => _selectedDuration = v),
                theme: theme,
              ),
              LibraryFilterChip(
                label: '${toPersianDigits(10)}-${toPersianDigits(20)} ${l10n.unitMinutes}',
                value: 15,
                groupValue: _selectedDuration,
                onChanged: (v) => setState(() => _selectedDuration = v),
                theme: theme,
              ),
              LibraryFilterChip(
                label: '${toPersianDigits(20)}+ ${l10n.unitMinutes}',
                value: 25,
                groupValue: _selectedDuration,
                onChanged: (v) => setState(() => _selectedDuration = v),
                theme: theme,
              ),
            ],
          ),
          SizedBox(height: theme.spacing.s24),
          // Place filter (games only)
          FilterSection(
            title: l10n.libraryFilterPlace,
            theme: theme,
            children: [
              LibraryFilterChip(
                label: l10n.gamePlaceHome,
                value: 'home',
                groupValue: _selectedPlace,
                onChanged: (v) => setState(() => _selectedPlace = v),
                theme: theme,
              ),
              LibraryFilterChip(
                label: l10n.gamePlaceCar,
                value: 'car',
                groupValue: _selectedPlace,
                onChanged: (v) => setState(() => _selectedPlace = v),
                theme: theme,
              ),
              LibraryFilterChip(
                label: l10n.gamePlaceOutdoor,
                value: 'outdoor',
                groupValue: _selectedPlace,
                onChanged: (v) => setState(() => _selectedPlace = v),
                theme: theme,
              ),
              LibraryFilterChip(
                label: l10n.gamePlaceBath,
                value: 'bath',
                groupValue: _selectedPlace,
                onChanged: (v) => setState(() => _selectedPlace = v),
                theme: theme,
              ),
            ],
          ),
          SizedBox(height: theme.spacing.s24),
          // Goal filter (games only)
          FilterSection(
            title: l10n.libraryFilterGoal,
            theme: theme,
            children: [
              LibraryFilterChip(
                label: 'انرژی',
                value: 'energy',
                groupValue: _selectedGoal,
                onChanged: (v) => setState(() => _selectedGoal = v),
                theme: theme,
              ),
              LibraryFilterChip(
                label: 'تمرکز',
                value: 'focus',
                groupValue: _selectedGoal,
                onChanged: (v) => setState(() => _selectedGoal = v),
                theme: theme,
              ),
              LibraryFilterChip(
                label: 'زبانی',
                value: 'language',
                groupValue: _selectedGoal,
                onChanged: (v) => setState(() => _selectedGoal = v),
                theme: theme,
              ),
              LibraryFilterChip(
                label: 'حرکتی',
                value: 'motor',
                groupValue: _selectedGoal,
                onChanged: (v) => setState(() => _selectedGoal = v),
                theme: theme,
              ),
              LibraryFilterChip(
                label: 'خلاقیت',
                value: 'creativity',
                groupValue: _selectedGoal,
                onChanged: (v) => setState(() => _selectedGoal = v),
                theme: theme,
              ),
              LibraryFilterChip(
                label: 'آرامی',
                value: 'calm',
                groupValue: _selectedGoal,
                onChanged: (v) => setState(() => _selectedGoal = v),
                theme: theme,
              ),
            ],
          ),
          SizedBox(height: theme.spacing.s24),
          // No materials toggle
          Row(
            children: [
              Expanded(
                child: Text(l10n.libraryFilterNoMaterials, style: theme.textStyles.body),
              ),
              Switch(
                value: _needsNoMaterials,
                onChanged: (v) => setState(() => _needsNoMaterials = v),
                activeColor: theme.colors.primary,
              ),
            ],
          ),
          SizedBox(height: theme.spacing.s32),
          // Apply button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colors.primary,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(theme.radius.button)),
              ),
              child: Text(l10n.dialogConfirm, style: theme.textStyles.bodyStrong),
            ),
          ),
          SizedBox(height: theme.spacing.s16),
        ],
      ),
    );
  }
}

class FilterSection extends StatelessWidget {
  const FilterSection({
    required this.title,
    required this.theme,
    required this.children,
  });

  final String title;
  final AppTheme theme;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: theme.textStyles.h3),
        SizedBox(height: theme.spacing.s12),
        Wrap(
          spacing: theme.spacing.s8,
          runSpacing: theme.spacing.s8,
          children: children,
        ),
      ],
    );
  }
}

class LibraryFilterChip extends StatelessWidget {
  const LibraryFilterChip({
    required this.label,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.theme,
  });

  final String label;
  final dynamic value;
  final dynamic groupValue;
  final ValueChanged<dynamic> onChanged;
  final AppTheme theme;

  @override
  Widget build(BuildContext context) {
    final isSelected = groupValue == value;
    return FilterChip(
      label: Text(label, style: theme.textStyles.caption.copyWith(
        color: isSelected ? Colors.white : theme.colors.textPrimary,
      )),
      selected: isSelected,
      onSelected: (_) => onChanged(value),
      selectedColor: theme.colors.primary,
      backgroundColor: theme.colors.bgSurface,
      checkmarkColor: Colors.white,
      side: BorderSide(
        color: isSelected ? theme.colors.primary : theme.colors.textTertiary.withValues(alpha: 0.3),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(theme.radius.chip)),
      padding: EdgeInsets.symmetric(horizontal: theme.spacing.s12, vertical: theme.spacing.s8),
    );
  }
}

/// Content list screen for each tab
class _ContentListScreen extends StatelessWidget {
  const _ContentListScreen({
    required this.contentType,
    required this.theme,
    required this.l10n,
  });

  final String contentType;
  final AppTheme theme;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    // Placeholder content
    final items = _getPlaceholderItems();

    if (items.isEmpty) {
      return _EmptyState(
        message: l10n.emptyStateNoContent,
        theme: theme,
      );
    }

    return ListView.builder(
      padding: EdgeInsets.all(theme.spacing.screenPadding),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Padding(
          padding: EdgeInsets.only(bottom: theme.spacing.s16),
          child: _LibraryItemCard(
            item: item,
            contentType: contentType,
            theme: theme,
            l10n: l10n,
          ),
        );
      },
    );
  }

  List<dynamic> _getPlaceholderItems() {
    // Return placeholder items based on content type
    return [];
  }
}

/// Library item card
class _LibraryItemCard extends StatelessWidget {
  const _LibraryItemCard({
    required this.item,
    required this.contentType,
    required this.theme,
    required this.l10n,
  });

  final dynamic item;
  final String contentType;
  final AppTheme theme;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.colors.bgSurface,
        borderRadius: BorderRadius.circular(theme.radius.card),
        boxShadow: theme.shadows.card,
      ),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(theme.radius.card),
        child: Padding(
          padding: EdgeInsets.all(theme.spacing.cardPadding),
          child: Row(
            children: [
              // Thumbnail
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: theme.colors.bgSunken,
                  borderRadius: BorderRadius.circular(theme.radius.image),
                ),
                child: Center(
                  child: Icon(
                    contentType == 'game' ? Icons.sports_esports_outlined :
                    contentType == 'story' ? Icons.menu_book_outlined :
                    Icons.brush_outlined,
                    size: 36,
                    color: theme.colors.textTertiary,
                  ),
                ),
              ),
              SizedBox(width: theme.spacing.s16),
              // Content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'عنوان محتوا',
                      style: theme.textStyles.h3,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: theme.spacing.s4),
                    Wrap(
                      spacing: theme.spacing.s8,
                      runSpacing: theme.spacing.s4,
                      children: [
                        _MetadataChip(
                          label: '${toPersianDigits(15)} ${l10n.unitMinutes}',
                          color: contentType == 'game' ? theme.colors.primary :
                                 contentType == 'story' ? theme.colors.lilac :
                                 theme.colors.accent,
                          theme: theme,
                        ),
                        _MetadataChip(
                          label: '${toPersianDigits(12)}-${toPersianDigits(24)} ${l10n.unitMonths}',
                          color: theme.colors.secondary,
                          theme: theme,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Favorite button
              IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: theme.colors.textTertiary,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
      padding: EdgeInsets.symmetric(horizontal: theme.spacing.s10, vertical: theme.spacing.s4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(theme.radius.chip),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Text(
        label,
        style: theme.textStyles.tiny.copyWith(
          color: color,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState({
    required this.message,
    required this.theme,
  });

  final String message;
  final AppTheme theme;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(theme.spacing.screenPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.inbox_outlined,
              size: 80,
              color: theme.colors.textTertiary,
            ),
            SizedBox(height: theme.spacing.s16),
            Text(
              message,
              style: theme.textStyles.body.copyWith(color: theme.colors.textSecondary),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
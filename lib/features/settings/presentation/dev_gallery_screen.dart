// features/settings/presentation/dev_gallery_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/theme/theme_provider.dart';
import '../../../core/utils/persian_utils.dart';

/// Dev gallery screen for visual QA - accessible at /dev/gallery
class DevGalleryScreen extends ConsumerWidget {
  const DevGalleryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final themeMode = ref.watch(themeModeProvider);
    
    return Scaffold(
      backgroundColor: theme.colors.bgBase,
      appBar: AppBar(
        title: Text('نمای توسعه‌دهنده', style: theme.textStyles.h2),
        backgroundColor: theme.colors.bgSurface,
        foregroundColor: theme.colors.textPrimary,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(themeMode == ThemeMode.dark ? Icons.light_mode : Icons.dark_mode),
            onPressed: () => ref.read(themeModeProvider.notifier).toggleTheme(),
            tooltip: 'Toggle Theme',
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(theme.spacing.screenPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _sectionTitle(context, theme, 'متن‌ها (Typography)'),
            _textStylesDemo(context, theme),
            const SizedBox(height: 32),
            _sectionTitle(context, theme, 'رنگ‌ها (Colors)'),
            _colorsDemo(context, theme),
            const SizedBox(height: 32),
            _sectionTitle(context, theme, 'فاصله‌ها (Spacing)'),
            _spacingDemo(context, theme),
            const SizedBox(height: 32),
            _sectionTitle(context, theme, 'شعاع‌ها (Border Radius)'),
            _radiusDemo(context, theme),
            const SizedBox(height: 32),
            _sectionTitle(context, theme, 'سایه‌ها (Shadows)'),
            _shadowsDemo(context, theme),
            const SizedBox(height: 32),
            _sectionTitle(context, theme, 'کامپوننت‌ها (Components)'),
            _componentsDemo(context, theme, ref),
            const SizedBox(height: 32),
            _sectionTitle(context, theme, 'تاریخ و اعداد فارسی (Persian Utils)'),
            _persianUtilsDemo(context, theme),
          ],
        ),
      ),
    );
  }

  Widget _sectionTitle(BuildContext context, AppTheme theme, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(title, style: theme.textStyles.h3),
    );
  }

  Widget _textStylesDemo(BuildContext context, AppTheme theme) {
    final styles = [
      ('Display (34sp)', theme.textStyles.display, 'نمونه متن Display'),
      ('H1 (26sp)', theme.textStyles.h1, 'نمونه متن H1 - عنوان اصلی'),
      ('H2 (21sp)', theme.textStyles.h2, 'نمونه متن H2 - عنوان کارت'),
      ('H3 (18sp)', theme.textStyles.h3, 'نمونه متن H3 - زیرعنوان'),
      ('Body (16sp)', theme.textStyles.body, 'متن بدنه اصلی با ارتفاع خط ۱.۷۵ برای خوانایی بهتر'),
      ('BodyStrong (16sp)', theme.textStyles.bodyStrong, 'متن برجسته در بدنه'),
      ('Caption (14sp)', theme.textStyles.caption, 'متن ثانویه و توضیحات'),
      ('Tiny (12sp)', theme.textStyles.tiny, 'متن خیلی کوچک برای هینت‌ها'),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: styles.map((tuple) {
        final (name, style, sample) = tuple;
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: theme.textStyles.caption.copyWith(color: theme.colors.textTertiary)),
              const SizedBox(height: 4),
              Text(sample, style: style),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _colorsDemo(BuildContext context, AppTheme theme) {
    final colors = [
      ('bgBase', theme.colors.bgBase),
      ('bgSurface', theme.colors.bgSurface),
      ('bgSunken', theme.colors.bgSunken),
      ('primary', theme.colors.primary),
      ('primaryDeep', theme.colors.primaryDeep),
      ('secondary', theme.colors.secondary),
      ('accent', theme.colors.accent),
      ('lilac', theme.colors.lilac),
      ('textPrimary', theme.colors.textPrimary),
      ('textSecondary', theme.colors.textSecondary),
      ('textTertiary', theme.colors.textTertiary),
      ('statusOk', theme.colors.statusOk),
      ('statusAttention', theme.colors.statusAttention),
      ('statusInfo', theme.colors.statusInfo),
    ];

    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: colors.map((tuple) {
        final (name, color) = tuple;
        return SizedBox(
          width: 140,
          child: Column(
            children: [
              Container(
                width: 140,
                height: 80,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              const SizedBox(height: 4),
              Text(name, style: theme.textStyles.tiny, textAlign: TextAlign.center),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _spacingDemo(BuildContext context, AppTheme theme) {
    final spacings = [
      ('s4', 4.0),
      ('s8', 8.0),
      ('s12', 12.0),
      ('s16', 16.0),
      ('s20', 20.0),
      ('s24', 24.0),
      ('s32', 32.0),
      ('s40', 40.0),
      ('s56', 56.0),
    ];

    return Column(
      children: spacings.map((tuple) {
        final (name, value) = tuple;
        return Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: Row(
            children: [
              SizedBox(
                width: 80,
                child: Text(name, style: theme.textStyles.caption),
              ),
              Expanded(
                child: Container(
                  height: 4,
                  color: theme.colors.primary,
                  width: value * 2,
                ),
              ),
              Text('${value.toInt()}dp', style: theme.textStyles.tiny),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _radiusDemo(BuildContext context, AppTheme theme) {
    final radii = [
      ('chip (999)', 999.0),
      ('button (16)', 16.0),
      ('card (24)', 24.0),
      ('sheet (28)', 28.0),
      ('image (20)', 20.0),
    ];

    return Wrap(
      spacing: 16,
      runSpacing: 16,
      children: radii.map((tuple) {
        final (name, value) = tuple;
        return Column(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: theme.colors.primary,
                borderRadius: BorderRadius.circular(value == 999 ? 999 : value),
              ),
            ),
            const SizedBox(height: 4),
            Text(name, style: theme.textStyles.tiny, textAlign: TextAlign.center),
          ],
        );
      }).toList(),
    );
  }

  Widget _shadowsDemo(BuildContext context, AppTheme theme) {
    return Column(
      children: [
        _shadowCard(context, theme, 'Primary Button', theme.shadows.primaryButton),
        const SizedBox(height: 12),
        _shadowCard(context, theme, 'Card', theme.shadows.card),
        const SizedBox(height: 12),
        _shadowCard(context, theme, 'Sheet', theme.shadows.sheet),
      ],
    );
  }

  Widget _shadowCard(BuildContext context, AppTheme theme, String name, List<BoxShadow> shadows) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colors.bgSurface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: shadows,
      ),
      child: Row(
        children: [
          Expanded(child: Text(name, style: theme.textStyles.bodyStrong)),
          Icon(Icons.check_circle, color: theme.colors.statusOk),
        ],
      ),
    );
  }

  Widget _componentsDemo(BuildContext context, AppTheme theme, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('PrimaryButton', style: theme.textStyles.h3),
        const SizedBox(height: 8),
        _PrimaryButtonDemo(theme: theme),
        const SizedBox(height: 16),
        Text('ContentCard (Hero)', style: theme.textStyles.h3),
        const SizedBox(height: 8),
        _ContentCardDemo(theme: theme),
        const SizedBox(height: 16),
        Text('StatTile', style: theme.textStyles.h3),
        const SizedBox(height: 8),
        _StatTileDemo(theme: theme),
        const SizedBox(height: 16),
        Text('BottomSheet', style: theme.textStyles.h3),
        const SizedBox(height: 8),
        ElevatedButton(
          onPressed: () => _showDemoBottomSheet(context, theme),
          style: ElevatedButton.styleFrom(
            backgroundColor: theme.colors.primary,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          child: Text('نمایش BottomSheet', style: theme.textStyles.bodyStrong),
        ),
        const SizedBox(height: 16),
        Text('EmptyState', style: theme.textStyles.h3),
        const SizedBox(height: 8),
        _EmptyStateDemo(theme: theme),
        const SizedBox(height: 16),
        Text('RTL & Persian Numerals Test', style: theme.textStyles.h3),
        const SizedBox(height: 8),
        _RtlTestDemo(theme: theme),
      ],
    );
  }

  void _showDemoBottomSheet(BuildContext context, AppTheme theme) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        padding: EdgeInsets.all(theme.spacing.screenPadding),
        decoration: BoxDecoration(
          color: theme.colors.bgSurface,
          borderRadius: BorderRadius.vertical(top: Radius.circular(theme.radius.sheet)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: theme.colors.textTertiary,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: 20),
            Text('عنوانBottom Sheet', style: theme.textStyles.h2),
            const SizedBox(height: 16),
            Text('این یک_bottom sheet است با گوشه‌های گرد بالا', style: theme.textStyles.body),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.colors.primary,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(theme.radius.button)),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: Text('بستن', style: theme.textStyles.bodyStrong),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _PrimaryButtonDemo({required AppTheme theme}) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: null,
            style: ElevatedButton.styleFrom(
              backgroundColor: theme.colors.primary,
              foregroundColor: Colors.white,
              disabledBackgroundColor: theme.colors.primary.withValues(alpha: 0.5),
              disabledForegroundColor: Colors.white.withValues(alpha: 0.7),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(theme.radius.button)),
              padding: const EdgeInsets.symmetric(vertical: 16),
              elevation: 0,
              shadowColor: theme.colors.primary.withValues(alpha: 0.2),
            ),
            child: Text('دکمه اصلی (فعال)', style: theme.textStyles.bodyStrong),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: theme.colors.primary,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(theme.radius.button)),
              padding: const EdgeInsets.symmetric(vertical: 16),
              elevation: 0,
              shadowColor: theme.colors.primary.withValues(alpha: 0.2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                ),
                const SizedBox(width: 12),
                Text('در حال بارگذاری...', style: theme.textStyles.bodyStrong),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: null,
            style: ElevatedButton.styleFrom(
              backgroundColor: theme.colors.primary,
              foregroundColor: Colors.white,
              disabledBackgroundColor: theme.colors.primary.withValues(alpha: 0.5),
              disabledForegroundColor: Colors.white.withValues(alpha: 0.7),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(theme.radius.button)),
              padding: const EdgeInsets.symmetric(vertical: 16),
              elevation: 0,
            ),
            child: Text('دکمه غیرفعال', style: theme.textStyles.bodyStrong),
          ),
        ),
      ],
    );
  }

  Widget _ContentCardDemo({required AppTheme theme}) {
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
          // Illustration area
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(theme.radius.card)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  theme.colors.primary.withValues(alpha: 0.3),
                  theme.colors.bgSurface,
                ],
              ),
            ),
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    Icons.child_care,
                    size: 80,
                    color: theme.colors.primary.withValues(alpha: 0.5),
                  ),
                ),
                Positioned(
                  top: 12,
                  right: 12,
                  child: IconButton(
                    icon: Icon(Icons.refresh, color: theme.colors.textTertiary),
                    onPressed: () {},
                    tooltip: 'Give me another',
                  ),
                ),
              ],
            ),
          ),
          // Content area
          Padding(
            padding: EdgeInsets.all(theme.spacing.cardPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('عنوان بازی/قصه/کاردستی', style: theme.textStyles.h2),
                const SizedBox(height: 12),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    _ChipDemo(label: '۲۰ دقیقه', color: theme.colors.primary),
                    _ChipDemo(label: '۱۸ ماهه', color: theme.colors.secondary),
                    _ChipDemo(label: '۲ چیز', color: theme.colors.accent),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _ChipDemo({required String label, required Color color}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontFamily: 'Vazirmatn',
          fontSize: 12,
          color: color,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _StatTileDemo({required AppTheme theme}) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: theme.colors.secondary.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Text(
                  toPersianDigits(72),
                  style: theme.textStyles.display.copyWith(
                    fontSize: 32,
                    color: theme.colors.primary,
                  ),
                ),
                const SizedBox(height: 4),
                Text('قد (سانتی‌متر)', style: theme.textStyles.caption),
                const SizedBox(height: 8),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: theme.colors.secondary.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text('نمودار کوچک', style: theme.textStyles.tiny),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: theme.colors.accent.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Text(
                  toPersianDigits('12.5'),
                  style: theme.textStyles.display.copyWith(
                    fontSize: 32,
                    color: theme.colors.primary,
                  ),
                ),
                const SizedBox(height: 4),
                Text('وزن (کیلوگرم)', style: theme.textStyles.caption),
                const SizedBox(height: 8),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: theme.colors.accent.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text('نمودار کوچک', style: theme.textStyles.tiny),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _EmptyStateDemo({required AppTheme theme}) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: theme.colors.bgSunken,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Icon(
            Icons.inbox_outlined,
            size: 80,
            color: theme.colors.textTertiary,
          ),
          const SizedBox(height: 16),
          Text(
            'اینجا هنوز خالیه، شروع کن!',
            style: theme.textStyles.body.copyWith(color: theme.colors.textSecondary),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: theme.colors.primary,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(theme.radius.button)),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            child: Text('اکشن اول', style: theme.textStyles.bodyStrong),
          ),
        ],
      ),
    );
  }

  Widget _RtlTestDemo({required AppTheme theme}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colors.bgSurface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('اعداد فارسی:', style: theme.textStyles.caption),
          Text(toPersianDigits('۱۲۳۴۵۶۷۸۹۰'), style: theme.textStyles.h2),
          const SizedBox(height: 12),
          Text('تاریخ امروز:', style: theme.textStyles.caption),
          Text(formatJalaliDate(DateTime.now(), format: 'long'), style: theme.textStyles.h2),
          const SizedBox(height: 12),
          Text('سن کودک:', style: theme.textStyles.caption),
          Text(ageFromBirthDate(DateTime.now().subtract(const Duration(days: 400)))['persian'], style: theme.textStyles.h2),
          const SizedBox(height: 12),
          Text('مختلط RTL/LTR:', style: theme.textStyles.caption),
          Text('User ID: ${toPersianDigits('USR-12345')}', style: theme.textStyles.body),
          Text('نسخه ${toPersianDigits('3.7.12')}', style: theme.textStyles.body),
        ],
      ),
    );
  }
}
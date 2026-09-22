// app.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import 'core/theme/app_theme.dart';
import 'core/theme/theme_provider.dart';
import 'core/router/app_router.dart';
import 'core/utils/persian_utils.dart';

class HamrahMadaranApp extends ConsumerWidget {
  const HamrahMadaranApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    final appTheme = ref.watch(appThemeProvider);
    final themeMode = ref.watch(themeModeProvider);

    return MaterialApp.router(
      title: 'همراه مادران',
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      themeMode: themeMode,
      theme: _buildLightTheme(appTheme),
      darkTheme: _buildDarkTheme(appTheme),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('fa', 'IR')],
      locale: const Locale('fa', 'IR'),
      builder: (context, child) {
        // Force RTL direction
        return Directionality(
          textDirection: TextDirection.rtl,
          child: MediaQuery(
            // Ensure text scaling doesn't break layout
            data: MediaQuery.of(context).copyWith(
              textScaler: TextScaler.linear(
                MediaQuery.of(context).textScaler.scale(1.0).clamp(1.0, 2.0),
              ),
            ),
            child: child!,
          ),
        );
      },
    );
  }

  ThemeData _buildLightTheme(AppTheme theme) {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Vazirmatn',
      brightness: Brightness.light,
      scaffoldBackgroundColor: theme.colors.bgBase,
      colorScheme: ColorScheme.light(
        primary: theme.colors.primary,
        secondary: theme.colors.secondary,
        tertiary: theme.colors.accent,
        surface: theme.colors.bgSurface,
        background: theme.colors.bgBase,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: theme.colors.textPrimary,
        onBackground: theme.colors.textPrimary,
        error: theme.colors.statusAttention,
        onError: Colors.white,
      ),
      textTheme: _buildTextTheme(theme.textStyles),
      appBarTheme: AppBarTheme(
        backgroundColor: theme.colors.bgSurface,
        foregroundColor: theme.colors.textPrimary,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: theme.textStyles.h2.copyWith(color: theme.colors.textPrimary),
        iconTheme: IconThemeData(color: theme.colors.textPrimary),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: theme.colors.primary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(theme.radius.button)),
          padding: const EdgeInsets.symmetric(vertical: 16),
          elevation: 0,
          shadowColor: theme.colors.primary.withValues(alpha: 0.2),
          textStyle: theme.textStyles.bodyStrong,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: theme.colors.primary,
          side: BorderSide(color: theme.colors.primary),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(theme.radius.button)),
          padding: const EdgeInsets.symmetric(vertical: 16),
          textStyle: theme.textStyles.bodyStrong,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: theme.colors.primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(theme.radius.button)),
          padding: const EdgeInsets.symmetric(vertical: 12),
          textStyle: theme.textStyles.bodyStrong,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: theme.colors.bgSurface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: theme.colors.textTertiary.withValues(alpha: 0.3)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: theme.colors.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: theme.colors.statusAttention),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        hintStyle: theme.textStyles.body.copyWith(color: theme.colors.textTertiary),
        labelStyle: theme.textStyles.body.copyWith(color: theme.colors.textSecondary),
      ),
      cardTheme: CardThemeData(
        color: theme.colors.bgSurface,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(theme.radius.card)),
        shadowColor: theme.colors.textPrimary.withValues(alpha: 0.1),
        margin: EdgeInsets.zero,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: theme.colors.bgSurface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(theme.radius.sheet)),
        ),
        elevation: 0,
        modalBackgroundColor: theme.colors.bgSurface,
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: theme.colors.bgSurface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        titleTextStyle: theme.textStyles.h2,
        contentTextStyle: theme.textStyles.body,
      ),
      chipTheme: ChipThemeData(
        backgroundColor: theme.colors.bgSunken,
        selectedColor: theme.colors.primary.withValues(alpha: 0.1),
        labelStyle: theme.textStyles.caption.copyWith(color: theme.colors.textSecondary),
        secondaryLabelStyle: theme.textStyles.caption.copyWith(color: theme.colors.primary),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
        side: BorderSide(color: theme.colors.textTertiary.withValues(alpha: 0.3)),
      ),
      dividerTheme: DividerThemeData(
        color: theme.colors.textTertiary.withValues(alpha: 0.2),
        thickness: 1,
        space: 1,
      ),
      extensions: [theme],
    );
  }

  ThemeData _buildDarkTheme(AppTheme theme) {
    return _buildLightTheme(theme).copyWith(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: theme.colors.bgBase,
      colorScheme: ColorScheme.dark(
        primary: theme.colors.primary,
        secondary: theme.colors.secondary,
        tertiary: theme.colors.accent,
        surface: theme.colors.bgSurface,
        background: theme.colors.bgBase,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: theme.colors.textPrimary,
        onBackground: theme.colors.textPrimary,
        error: theme.colors.statusAttention,
        onError: Colors.white,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: theme.colors.bgSurface,
        foregroundColor: theme.colors.textPrimary,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: theme.textStyles.h2.copyWith(color: theme.colors.textPrimary),
        iconTheme: IconThemeData(color: theme.colors.textPrimary),
      ),
      cardTheme: CardThemeData(
        color: theme.colors.bgSurface,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(theme.radius.card)),
        shadowColor: Colors.black.withValues(alpha: 0.3),
        margin: EdgeInsets.zero,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: theme.colors.bgSurface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(theme.radius.sheet)),
        ),
        elevation: 0,
        modalBackgroundColor: theme.colors.bgSurface,
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: theme.colors.bgSurface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        titleTextStyle: theme.textStyles.h2,
        contentTextStyle: theme.textStyles.body,
      ),
      extensions: [theme],
    );
  }

  TextTheme _buildTextTheme(_AppTextStyles styles) {
    return TextTheme(
      displayLarge: styles.display,
      displayMedium: styles.h1,
      displaySmall: styles.h2,
      headlineLarge: styles.h1,
      headlineMedium: styles.h2,
      headlineSmall: styles.h3,
      titleLarge: styles.h2,
      titleMedium: styles.h3,
      titleSmall: styles.h3,
      bodyLarge: styles.body,
      bodyMedium: styles.body,
      bodySmall: styles.caption,
      labelLarge: styles.bodyStrong,
      labelMedium: styles.caption,
      labelSmall: styles.tiny,
    );
  }
}
// core/theme/app_theme.dart
import 'package:flutter/material.dart';
import 'dart:ui' show lerpDouble;
import 'app_colors.dart';

/// Theme extension containing all design tokens from DESIGN.md
class AppTheme extends ThemeExtension<AppTheme> {
  const AppTheme({
    required this.isDark,
    required this.colors,
    required this.textStyles,
    required this.spacing,
    required this.radius,
    required this.shadows,
  });

  final bool isDark;
  final _AppColorTokens colors;
  final AppTextStyles textStyles;
  final _AppSpacing spacing;
  final _AppRadius radius;
  final _AppShadows shadows;

  // Light theme instance
  static const AppTheme light = AppTheme(
    isDark: false,
    colors: _AppColorTokens._light(),
    textStyles: AppTextStyles._light(),
    spacing: _AppSpacing._(),
    radius: _AppRadius._(),
    shadows: _AppShadows._light(),
  );

  // Dark theme instance
  static const AppTheme dark = AppTheme(
    isDark: true,
    colors: _AppColorTokens._dark(),
    textStyles: AppTextStyles._dark(),
    spacing: _AppSpacing._(),
    radius: _AppRadius._(),
    shadows: _AppShadows._dark(),
  );

  @override
  AppTheme copyWith({
    bool? isDark,
    _AppColorTokens? colors,
    _AppTextStyles? textStyles,
    _AppSpacing? spacing,
    _AppRadius? radius,
    _AppShadows? shadows,
  }) {
    return AppTheme(
      isDark: isDark ?? this.isDark,
      colors: colors ?? this.colors,
      textStyles: textStyles ?? this.textStyles,
      spacing: spacing ?? this.spacing,
      radius: radius ?? this.radius,
      shadows: shadows ?? this.shadows,
    );
  }

  @override
  AppTheme lerp(ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) return this;
    return copyWith(
      isDark: t > 0.5 ? other.isDark : isDark,
      colors: _AppColorTokens._lerp(colors, other.colors, t),
      textStyles: AppTextStyles._lerp(textStyles, other.textStyles, t),
    );
  }
}

/// Color tokens
class _AppColorTokens {
  const _AppColorTokens._({
    required this.bgBase,
    required this.bgSurface,
    required this.bgSunken,
    required this.primary,
    required this.primaryDeep,
    required this.secondary,
    required this.accent,
    required this.lilac,
    required this.textPrimary,
    required this.textSecondary,
    required this.textTertiary,
    required this.statusOk,
    required this.statusAttention,
    required this.statusInfo,
  });

  final Color bgBase;
  final Color bgSurface;
  final Color bgSunken;
  final Color primary;
  final Color primaryDeep;
  final Color secondary;
  final Color accent;
  final Color lilac;
  final Color textPrimary;
  final Color textSecondary;
  final Color textTertiary;
  final Color statusOk;
  final Color statusAttention;
  final Color statusInfo;

  const _AppColorTokens._light()
      : bgBase = AppColorsLight.bgBase,
        bgSurface = AppColorsLight.bgSurface,
        bgSunken = AppColorsLight.bgSunken,
        primary = AppColorsLight.primary,
        primaryDeep = AppColorsLight.primaryDeep,
        secondary = AppColorsLight.secondary,
        accent = AppColorsLight.accent,
        lilac = AppColorsLight.lilac,
        textPrimary = AppColorsLight.textPrimary,
        textSecondary = AppColorsLight.textSecondary,
        textTertiary = AppColorsLight.textTertiary,
        statusOk = AppColorsLight.statusOk,
        statusAttention = AppColorsLight.statusAttention,
        statusInfo = AppColorsLight.statusInfo;

  const _AppColorTokens._dark()
      : bgBase = AppColorsDark.bgBase,
        bgSurface = AppColorsDark.bgSurface,
        bgSunken = AppColorsDark.bgSunken,
        primary = AppColorsDark.primary,
        primaryDeep = AppColorsDark.primaryDeep,
        secondary = AppColorsDark.secondary,
        accent = AppColorsDark.accent,
        lilac = AppColorsDark.lilac,
        textPrimary = AppColorsDark.textPrimary,
        textSecondary = AppColorsDark.textSecondary,
        textTertiary = AppColorsDark.textTertiary,
        statusOk = AppColorsDark.statusOk,
        statusAttention = AppColorsDark.statusAttention,
        statusInfo = AppColorsDark.statusInfo;

  static _AppColorTokens _lerp(
    _AppColorTokens a,
    _AppColorTokens b,
    double t,
  ) {
    return _AppColorTokens._(
      bgBase: Color.lerp(a.bgBase, b.bgBase, t)!,
      bgSurface: Color.lerp(a.bgSurface, b.bgSurface, t)!,
      bgSunken: Color.lerp(a.bgSunken, b.bgSunken, t)!,
      primary: Color.lerp(a.primary, b.primary, t)!,
      primaryDeep: Color.lerp(a.primaryDeep, b.primaryDeep, t)!,
      secondary: Color.lerp(a.secondary, b.secondary, t)!,
      accent: Color.lerp(a.accent, b.accent, t)!,
      lilac: Color.lerp(a.lilac, b.lilac, t)!,
      textPrimary: Color.lerp(a.textPrimary, b.textPrimary, t)!,
      textSecondary: Color.lerp(a.textSecondary, b.textSecondary, t)!,
      textTertiary: Color.lerp(a.textTertiary, b.textTertiary, t)!,
      statusOk: Color.lerp(a.statusOk, b.statusOk, t)!,
      statusAttention: Color.lerp(a.statusAttention, b.statusAttention, t)!,
      statusInfo: Color.lerp(a.statusInfo, b.statusInfo, t)!,
    );
  }
}

/// Text styles using Vazirmatn font
class AppTextStyles {
  const AppTextStyles._({
    required this.display,
    required this.h1,
    required this.h2,
    required this.h3,
    required this.body,
    required this.bodyStrong,
    required this.caption,
    required this.tiny,
  });

  final TextStyle display;
  final TextStyle h1;
  final TextStyle h2;
  final TextStyle h3;
  final TextStyle body;
  final TextStyle bodyStrong;
  final TextStyle caption;
  final TextStyle tiny;

  const AppTextStyles._light()
      : display = const TextStyle(
          fontFamily: 'Vazirmatn',
          fontSize: 34,
          height: 1.25,
          fontWeight: FontWeight.bold,
          color: AppColorsLight.textPrimary,
          letterSpacing: 0,
        ),
        h1 = const TextStyle(
          fontFamily: 'Vazirmatn',
          fontSize: 26,
          height: 1.3,
          fontWeight: FontWeight.bold,
          color: AppColorsLight.textPrimary,
          letterSpacing: 0,
        ),
        h2 = const TextStyle(
          fontFamily: 'Vazirmatn',
          fontSize: 21,
          height: 1.35,
          fontWeight: FontWeight.w600,
          color: AppColorsLight.textPrimary,
          letterSpacing: 0,
        ),
        h3 = const TextStyle(
          fontFamily: 'Vazirmatn',
          fontSize: 18,
          height: 1.4,
          fontWeight: FontWeight.w600,
          color: AppColorsLight.textPrimary,
          letterSpacing: 0,
        ),
        body = const TextStyle(
          fontFamily: 'Vazirmatn',
          fontSize: 16,
          height: 1.75,
          fontWeight: FontWeight.normal,
          color: AppColorsLight.textPrimary,
          letterSpacing: 0,
        ),
        bodyStrong = const TextStyle(
          fontFamily: 'Vazirmatn',
          fontSize: 16,
          height: 1.75,
          fontWeight: FontWeight.w500,
          color: AppColorsLight.textPrimary,
          letterSpacing: 0,
        ),
        caption = const TextStyle(
          fontFamily: 'Vazirmatn',
          fontSize: 14,
          height: 1.6,
          fontWeight: FontWeight.normal,
          color: AppColorsLight.textSecondary,
          letterSpacing: 0,
        ),
        tiny = const TextStyle(
          fontFamily: 'Vazirmatn',
          fontSize: 12,
          height: 1.5,
          fontWeight: FontWeight.normal,
          color: AppColorsLight.textTertiary,
          letterSpacing: 0,
        );

  const AppTextStyles._dark()
      : display = const TextStyle(
          fontFamily: 'Vazirmatn',
          fontSize: 34,
          height: 1.25,
          fontWeight: FontWeight.bold,
          color: AppColorsDark.textPrimary,
          letterSpacing: 0,
        ),
        h1 = const TextStyle(
          fontFamily: 'Vazirmatn',
          fontSize: 26,
          height: 1.3,
          fontWeight: FontWeight.bold,
          color: AppColorsDark.textPrimary,
          letterSpacing: 0,
        ),
        h2 = const TextStyle(
          fontFamily: 'Vazirmatn',
          fontSize: 21,
          height: 1.35,
          fontWeight: FontWeight.w600,
          color: AppColorsDark.textPrimary,
          letterSpacing: 0,
        ),
        h3 = const TextStyle(
          fontFamily: 'Vazirmatn',
          fontSize: 18,
          height: 1.4,
          fontWeight: FontWeight.w600,
          color: AppColorsDark.textPrimary,
          letterSpacing: 0,
        ),
        body = const TextStyle(
          fontFamily: 'Vazirmatn',
          fontSize: 16,
          height: 1.75,
          fontWeight: FontWeight.normal,
          color: AppColorsDark.textPrimary,
          letterSpacing: 0,
        ),
        bodyStrong = const TextStyle(
          fontFamily: 'Vazirmatn',
          fontSize: 16,
          height: 1.75,
          fontWeight: FontWeight.w500,
          color: AppColorsDark.textPrimary,
          letterSpacing: 0,
        ),
        caption = const TextStyle(
          fontFamily: 'Vazirmatn',
          fontSize: 14,
          height: 1.6,
          fontWeight: FontWeight.normal,
          color: AppColorsDark.textSecondary,
          letterSpacing: 0,
        ),
        tiny = const TextStyle(
          fontFamily: 'Vazirmatn',
          fontSize: 12,
          height: 1.5,
          fontWeight: FontWeight.normal,
          color: AppColorsDark.textTertiary,
          letterSpacing: 0,
        );

  static AppTextStyles _lerp(
    AppTextStyles a,
    AppTextStyles b,
    double t,
  ) {
    TextStyle lerpStyle(TextStyle a, TextStyle b) {
      return TextStyle(
        fontFamily: t > 0.5 ? b.fontFamily : a.fontFamily,
        fontSize: lerpDouble(a.fontSize, b.fontSize, t),
        height: lerpDouble(a.height, b.height, t),
        fontWeight: t > 0.5 ? b.fontWeight : a.fontWeight,
        color: Color.lerp(a.color, b.color, t),
        letterSpacing: lerpDouble(a.letterSpacing, b.letterSpacing, t),
      );
    }

    return AppTextStyles._(
      display: lerpStyle(a.display, b.display),
      h1: lerpStyle(a.h1, b.h1),
      h2: lerpStyle(a.h2, b.h2),
      h3: lerpStyle(a.h3, b.h3),
      body: lerpStyle(a.body, b.body),
      bodyStrong: lerpStyle(a.bodyStrong, b.bodyStrong),
      caption: lerpStyle(a.caption, b.caption),
      tiny: lerpStyle(a.tiny, b.tiny),
    );
  }
}

/// Spacing scale from DESIGN.md
class _AppSpacing {
  const _AppSpacing._();

  static const _AppSpacing _instance = _AppSpacing._();

  // Only these values allowed
  double get s4 => 4.0;
  double get s6 => 6.0;
  double get s8 => 8.0;
  double get s10 => 10.0;
  double get s12 => 12.0;
  double get s16 => 16.0;
  double get s20 => 20.0;
  double get s24 => 24.0;
  double get s32 => 32.0;
  double get s40 => 40.0;
  double get s56 => 56.0;

  // Semantic spacing
  double get screenPadding => s20;
  double get cardPadding => s20;
  double get sectionGap => s24;
  double get largeSectionGap => s32;
}

/// Corner radii from DESIGN.md
class _AppRadius {
  const _AppRadius._();

  static const _AppRadius _instance = _AppRadius._();

  double get chip => 999.0; // pill
  double get button => 16.0;
  double get card => 24.0;
  double get sheet => 28.0; // top only
  double get image => 20.0;
}

/// Shadows
class _AppShadows {
  const _AppShadows._({
    required this.primaryButton,
    required this.card,
    required this.sheet,
  });

  final List<BoxShadow> primaryButton;
  final List<BoxShadow> card;
  final List<BoxShadow> sheet;

  const _AppShadows._light()
      : primaryButton = const [
          BoxShadow(
            color: Color(0x33E8A08A), // primary at 20% opacity
            blurRadius: 12,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
        card = const [
          BoxShadow(
            color: Color(0x1A2E2A28), // textPrimary at 10% opacity
            blurRadius: 16,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
        sheet = const [
          BoxShadow(
            color: Color(0x1A2E2A28),
            blurRadius: 24,
            offset: Offset(0, -8),
            spreadRadius: 0,
          ),
        ];

  const _AppShadows._dark()
      : primaryButton = const [
          BoxShadow(
            color: Color(0x33D8907A),
            blurRadius: 12,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
        card = const [
          BoxShadow(
            color: Color(0x1AF2EBE4),
            blurRadius: 16,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
        sheet = const [
          BoxShadow(
            color: Color(0x1AF2EBE4),
            blurRadius: 24,
            offset: Offset(0, -8),
            spreadRadius: 0,
          ),
        ];
}

/// Extension for easy access to theme tokens
extension AppThemeExtension on BuildContext {
  AppTheme get appTheme => Theme.of(this).extension<AppTheme>()!;
  
  _AppColorTokens get appColors => appTheme.colors;
  
  AppTextStyles get appTextStyles => appTheme.textStyles;
  
  _AppSpacing get appSpacing => appTheme.spacing;
  
  _AppRadius get appRadius => appTheme.radius;
  
  _AppShadows get appShadows => appTheme.shadows;
}
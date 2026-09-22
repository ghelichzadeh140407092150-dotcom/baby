// core/theme/app_colors.dart
import 'package:flutter/material.dart';

/// Light mode color tokens from DESIGN.md
class AppColorsLight {
  static const Color bgBase = Color(0xFFFBF7F2);
  static const Color bgSurface = Color(0xEBFFFFFF); // 92% opacity white over bgBase
  static const Color bgSunken = Color(0xFFF3EDE5);
  static const Color primary = Color(0xFFE8A08A);
  static const Color primaryDeep = Color(0xFFC97B63);
  static const Color secondary = Color(0xFF7FB3A6);
  static const Color accent = Color(0xFFF2C879);
  static const Color lilac = Color(0xFFB9A7D6);
  static const Color textPrimary = Color(0xFF2E2A28);
  static const Color textSecondary = Color(0xFF6E6560);
  static const Color textTertiary = Color(0xFFA79C95);
  static const Color statusOk = Color(0xFF7FB3A6);
  static const Color statusAttention = Color(0xFFE0A458);
  static const Color statusInfo = Color(0xFF8FA8C8);
}

/// Dark mode color tokens (desaturated ~20%, darkened backgrounds)
class AppColorsDark {
  static const Color bgBase = Color(0xFF191614);
  static const Color bgSurface = Color(0xFF221E1B);
  static const Color bgSunken = Color(0xFF1E1B18);
  static const Color primary = Color(0xFFD8907A);
  static const Color primaryDeep = Color(0xFFB86B53);
  static const Color secondary = Color(0xFF6FA396);
  static const Color accent = Color(0xFFE2B869);
  static const Color lilac = Color(0xFFA997C6);
  static const Color textPrimary = Color(0xFFF2EBE4);
  static const Color textSecondary = Color(0xFFBDB3AC);
  static const Color textTertiary = Color(0xFF8A817A);
  static const Color statusOk = Color(0xFF6FA396);
  static const Color statusAttention = Color(0xFFD09448);
  static const Color statusInfo = Color(0xFF7F98B8);
}
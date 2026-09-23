import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hamrah_madaran/core/theme/app_theme.dart';
import 'package:hamrah_madaran/core/theme/theme_provider.dart';
import 'package:hamrah_madaran/l10n/app_localizations.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final l10n = context.l10n;

    return Scaffold(
      backgroundColor: theme.colors.bgBase,
      appBar: AppBar(
        title: Text(l10n.settings, style: theme.textStyles.h2),
        backgroundColor: theme.colors.bgSurface,
        foregroundColor: theme.colors.textPrimary,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(theme.spacing.screenPadding),
        children: [
          _SectionHeader(title: l10n.settingsAppearance, theme: theme),
          _SettingsTile(
            icon: Icons.palette_outlined,
            title: l10n.settingsTheme,
            subtitle: l10n.settingsThemeDesc,
            onTap: () {},
            theme: theme,
          ),
          _SettingsTile(
            icon: Icons.format_size_outlined,
            title: l10n.settingsFontSize,
            subtitle: l10n.settingsFontSizeDesc,
            onTap: () {},
            theme: theme,
          ),
          SizedBox(height: theme.spacing.s24),
          _SectionHeader(title: l10n.settingsNotifications, theme: theme),
          _SettingsTile(
            icon: Icons.notifications_outlined,
            title: l10n.settingsReminders,
            subtitle: l10n.settingsRemindersDesc,
            onTap: () {},
            theme: theme,
          ),
          _SettingsTile(
            icon: Icons.alarm_outlined,
            title: l10n.settingsVaccineReminders,
            subtitle: l10n.settingsVaccineRemindersDesc,
            onTap: () {},
            theme: theme,
          ),
          SizedBox(height: theme.spacing.s24),
          _SectionHeader(title: l10n.settingsData, theme: theme),
          _SettingsTile(
            icon: Icons.backup_outlined,
            title: l10n.settingsBackup,
            subtitle: l10n.settingsBackupDesc,
            onTap: () {},
            theme: theme,
          ),
          _SettingsTile(
            icon: Icons.restore_outlined,
            title: l10n.settingsRestore,
            subtitle: l10n.settingsRestoreDesc,
            onTap: () {},
            theme: theme,
          ),
          _SettingsTile(
            icon: Icons.delete_outline,
            title: l10n.settingsClearData,
            subtitle: l10n.settingsClearDataDesc,
            onTap: () {},
            theme: theme,
            isDestructive: true,
          ),
          SizedBox(height: theme.spacing.s24),
          _SectionHeader(title: l10n.settingsAbout, theme: theme),
          _SettingsTile(
            icon: Icons.info_outline,
            title: l10n.settingsVersion,
            subtitle: 'v1.0.0',
            onTap: () {},
            theme: theme,
          ),
          _SettingsTile(
            icon: Icons.article_outlined,
            title: l10n.settingsPrivacy,
            subtitle: l10n.settingsPrivacyDesc,
            onTap: () {},
            theme: theme,
          ),
          _SettingsTile(
            icon: Icons.description_outlined,
            title: l10n.settingsTerms,
            subtitle: l10n.settingsTermsDesc,
            onTap: () {},
            theme: theme,
          ),
          SizedBox(height: theme.spacing.s32),
          _buildDisclaimerBar(theme, l10n),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.title, required this.theme});
  final String title;
  final AppTheme theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: theme.spacing.s8, top: theme.spacing.s8),
      child: Text(
        title,
        style: theme.textStyles.h3.copyWith(color: theme.colors.textSecondary),
      ),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  const _SettingsTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
    required this.theme,
    this.isDestructive = false,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final AppTheme theme;
  final bool isDestructive;

  @override
  Widget build(BuildContext context) {
    final color = isDestructive ? theme.colors.statusAttention : theme.colors.textPrimary;
    return ListTile(
      leading: Icon(icon, color: isDestructive ? theme.colors.statusAttention : theme.colors.primary),
      title: Text(title, style: theme.textStyles.body.copyWith(color: color)),
      subtitle: Text(subtitle, style: theme.textStyles.caption.copyWith(color: theme.colors.textTertiary)),
      trailing: Icon(Icons.chevron_left, color: theme.colors.textTertiary),
      onTap: onTap,
      contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: theme.spacing.s4),
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
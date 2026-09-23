import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:hamrah_madaran/core/theme/app_theme.dart';
import 'package:hamrah_madaran/core/theme/theme_provider.dart';
import 'package:hamrah_madaran/core/utils/persian_utils.dart';
import 'package:hamrah_madaran/features/child/domain/growth/growth_calculator.dart';
import 'package:hamrah_madaran/core/di/service_locator.dart';
import 'package:hamrah_madaran/l10n/app_localizations.dart';

class GrowthChartScreen extends ConsumerWidget {
  const GrowthChartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final l10n = context.l10n;
    final activeChildId = ref.watch(activeChildIdProvider);

    return Scaffold(
      backgroundColor: theme.colors.bgBase,
      appBar: AppBar(
        title: Text(l10n.childGrowth, style: theme.textStyles.h2),
        backgroundColor: theme.colors.bgSurface,
        foregroundColor: theme.colors.textPrimary,
        elevation: 0,
        actions: [
          PopupMenuButton<GrowthMetric>(
            icon: Icon(Icons.swap_vert, color: theme.colors.textPrimary),
            onSelected: (metric) {},
            itemBuilder: (context) => GrowthMetric.values.map((metric) {
              return PopupMenuItem(
                value: metric,
                child: Text(metric.farsiName, style: theme.textStyles.body),
              );
            }).toList(),
          ),
        ],
      ),
      body: Center(child: Text('Charts will appear here')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
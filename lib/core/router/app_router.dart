// core/router/app_router.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../theme/theme_provider.dart'
    show appThemeProvider, themeModeProvider;
import 'routes.dart';
import 'scaffold_with_nav.dart';
import '../../features/onboarding/presentation/onboarding_page.dart';
import '../../features/today/presentation/today_screen.dart';
import '../../features/library/presentation/library_screen.dart';
import '../../features/library/presentation/story_player_screen.dart';
import '../../features/child/presentation/growth/growth_chart_screen.dart';
import '../../features/child/presentation/vaccines/vaccine_timeline_screen.dart';
import '../../features/settings/presentation/dev_gallery_screen.dart';
import '../../features/child/presentation/teething/teething_screen.dart';
import '../../features/child/presentation/milestones/milestones_screen.dart';
import '../../data/dao/settings_dao.dart';
import '../../core/di/service_locator.dart';

/// GoRouter provider
final appRouterProvider = Provider<GoRouter>((ref) {
  final themeMode = ref.watch(themeModeProvider);
  return _createRouter(ref, themeMode);
});

GoRouter _createRouter(WidgetRef ref, ThemeMode themeMode) {
  return GoRouter(
    initialLocation: AppRoutes.today,
    debugLogDiagnostics: true,
    refreshListenable: GoRouterRefreshStream(ref.read(settingsDaoProvider).watchSetting('onboardingCompleted')),
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return ScaffoldWithNavBar(child: child);
        },
        routes: [
          GoRoute(
            path: AppRoutes.today,
            name: 'today',
            builder: (context, state) => const TodayScreen(),
          ),
          GoRoute(
            path: AppRoutes.library,
            name: 'library',
            builder: (context, state) => const LibraryScreen(),
          ),
          GoRoute(
            path: AppRoutes.child,
            name: 'child',
            builder: (context, state) => const ChildPlaceholderScreen(),
          ),
          GoRoute(
            path: AppRoutes.nutrition,
            name: 'nutrition',
            builder: (context, state) => const NutritionPlaceholderScreen(),
          ),
        ],
      ),
      GoRoute(
        path: AppRoutes.onboarding,
        name: 'onboarding',
        builder: (context, state) => const OnboardingPage(),
      ),
      GoRoute(
        path: AppRoutes.storyPlayer,
        name: 'story-player',
        builder: (context, state) {
          final storyId = state.pathParameters['id']!;
          // In real app, fetch story from repository
          // For now, return placeholder
          return const StoryPlayerPlaceholderScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.settings,
        name: 'settings',
        builder: (context, state) => const SettingsPlaceholderScreen(),
      ),
      GoRoute(
        path: AppRoutes.devGallery,
        name: 'dev-gallery',
        builder: (context, state) => const DevGalleryScreen(),
      ),
      GoRoute(
        path: AppRoutes.growth,
        name: 'growth',
        builder: (context, state) => const GrowthChartScreen(),
      ),
      GoRoute(
        path: AppRoutes.vaccines,
        name: 'vaccines',
        builder: (context, state) => const VaccineTimelineScreen(),
      ),
      GoRoute(
        path: AppRoutes.teething,
        name: 'teething',
        builder: (context, state) => const TeethingScreen(),
      ),
      GoRoute(
        path: AppRoutes.milestones,
        name: 'milestones',
        builder: (context, state) => const MilestonesScreen(),
      ),
    ],
    redirect: (context, state) {
      final settingsDao = ref.read(settingsDaoProvider);
      final isOnboardingCompleted = settingsDao.getOnboardingCompleted();
      
      // If onboarding not completed and not on onboarding route, redirect to onboarding
      if (isOnboardingCompleted == false && state.matchedLocation != AppRoutes.onboarding) {
        return AppRoutes.onboarding;
      }
      
      // If onboarding completed and on onboarding route, redirect to today
      if (isOnboardingCompleted == true && state.matchedLocation == AppRoutes.onboarding) {
        return AppRoutes.today;
      }
      
      return null;
    },
  );
}

/// Helper to make GoRouter listen to settings changes
class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<String?> stream) {
    stream.listen((_) => notifyListeners());
  }
}

/// Placeholder screens for M1/M2
class ChildPlaceholderScreen extends ConsumerWidget {
  const ChildPlaceholderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    return Scaffold(
      backgroundColor: theme.colors.bgBase,
      body: Center(
        child: Text(
          'فرزند من',
          style: theme.textStyles.h1,
        ),
      ),
    );
  }
}

class NutritionPlaceholderScreen extends ConsumerWidget {
  const NutritionPlaceholderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    return Scaffold(
      backgroundColor: theme.colors.bgBase,
      body: Center(
        child: Text(
          'تغذیه',
          style: theme.textStyles.h1,
        ),
      ),
    );
  }
}

class SettingsPlaceholderScreen extends ConsumerWidget {
  const SettingsPlaceholderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    return Scaffold(
      backgroundColor: theme.colors.bgBase,
      body: Center(
        child: Text(
          'تنظیمات',
          style: theme.textStyles.h1,
        ),
      ),
    );
  }
}

class StoryPlayerPlaceholderScreen extends ConsumerWidget {
  const StoryPlayerPlaceholderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    return Scaffold(
      backgroundColor: theme.colors.bgBase,
      body: Center(
        child: Text(
          'Story Player (Placeholder)',
          style: theme.textStyles.h1,
        ),
      ),
    );
  }
}
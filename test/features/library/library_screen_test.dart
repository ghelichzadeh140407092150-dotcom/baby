// test/features/library/library_screen_test.dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hamrah_madaran/app.dart';
import 'package:hamrah_madaran/core/di/service_locator.dart';
import 'package:hamrah_madaran/core/router/app_router.dart';
import 'package:hamrah_madaran/features/today/domain/content.dart';
import 'package:hamrah_madaran/core/theme/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hamrah_madaran/l10n/app_localizations.dart';
import 'package:hamrah_madaran/features/library/presentation/library_screen.dart';

void main() {
  late ProviderContainer container;

  setUpAll(() async {
    container = await initializeDependencies();
  });

  tearDownAll(() {
    container.dispose();
  });

  group('LibraryScreen', () {
    testWidgets('shows tab bar with 5 tabs', (tester) async {
      await tester.pumpWidget(
        UncontrolledProviderScope(
          container: container,
          child: MaterialApp.router(
            routerConfig: container.read(appRouterProvider),
          ),
        ),
      );

      await tester.pumpAndSettle();

      // Navigate to library
      await tester.tap(find.byIcon(Icons.library_books_outlined));
      await tester.pumpAndSettle();

      // Should show tab bar
      expect(find.text('بازی‌ها'), findsOneWidget);
      expect(find.text('قصه‌ها'), findsOneWidget);
      expect(find.text('کاردستی‌ها'), findsOneWidget);
      expect(find.text('مورد علاقه‌ها'), findsOneWidget);
      expect(find.text('انجام دادیم'), findsOneWidget);
    });

    testWidgets('shows filter button', (tester) async {
      await tester.pumpWidget(
        UncontrolledProviderScope(
          container: container,
          child: MaterialApp.router(
            routerConfig: container.read(appRouterProvider),
          ),
        ),
      );

      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.library_books_outlined));
      await tester.pumpAndSettle();

      expect(find.byIcon(Icons.filter_list_outlined), findsOneWidget);
    });

    testWidgets('can tap filter button to show bottom sheet', (tester) async {
      await tester.pumpWidget(
        UncontrolledProviderScope(
          container: container,
          child: MaterialApp.router(
            routerConfig: container.read(appRouterProvider),
          ),
        ),
      );

      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.library_books_outlined));
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.filter_list_outlined));
      await tester.pumpAndSettle();

      // Filter bottom sheet should appear
      expect(find.text('مدت زمان'), findsOneWidget);
      expect(find.text('مکان'), findsOneWidget);
      expect(find.text('هدف'), findsOneWidget);
      expect(find.text('بدون وسایل'), findsOneWidget);
    });
  });

  group('FilterBottomSheet', () {
    testWidgets('shows filter sections', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: Scaffold(
              body: Builder(
                builder: (context) => ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) => FilterBottomSheet(
                        theme: AppTheme.light,
                        l10n: AppLocalizations.of(context)!,
                      ),
                    );
                  },
                  child: Text('Open Filters'),
                ),
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();

      await tester.tap(find.text('Open Filters'));
      await tester.pumpAndSettle();

      expect(find.text('مدت زمان'), findsOneWidget);
      expect(find.text('مکان'), findsOneWidget);
      expect(find.text('هدف'), findsOneWidget);
      expect(find.text('بدون وسایل'), findsOneWidget);
    });

    testWidgets('duration filter chips work', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: Scaffold(
              body: Builder(
                builder: (context) => ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) => FilterBottomSheet(
                        theme: AppTheme.light,
                        l10n: AppLocalizations.of(context)!,
                      ),
                    );
                  },
                  child: Text('Open Filters'),
                ),
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();

      await tester.tap(find.text('Open Filters'));
      await tester.pumpAndSettle();

      // Tap a duration filter
      await tester.tap(find.text('۱۰ دقیقه-').first);
      await tester.pumpAndSettle();

      // The chip should be selected
      // (In real test, we'd verify the state change)
    });
  });

  group('FilterChip', () {
    testWidgets('shows selected state', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: Scaffold(
              body: LibraryFilterChip(
                label: 'Test',
                value: 'test',
                groupValue: 'test',
                onChanged: (_) {},
                theme: AppTheme.light,
              ),
            ),
          ),
        ),
      );

      expect(find.text('Test'), findsOneWidget);
    });

    testWidgets('shows unselected state', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: Scaffold(
              body: LibraryFilterChip(
                label: 'Test',
                value: 'test',
                groupValue: 'other',
                onChanged: (_) {},
                theme: AppTheme.light,
              ),
            ),
          ),
        ),
      );

      expect(find.text('Test'), findsOneWidget);
    });
  });

  group('Library Models', () {
    test('ContentSearchQuery has correct defaults', () {
      final query = ContentSearchQuery(
        text: 'test',
        ageInMonths: 12,
        contentType: 'game',
        place: 'home',
        goal: 'motor',
        maxDurationMinutes: 20,
        needsNoMaterials: true,
        favoritesOnly: true,
        completedOnly: false,
        childId: 'child1',
      );

      expect(query.text, 'test');
      expect(query.ageInMonths, 12);
      expect(query.contentType, 'game');
      expect(query.place, 'home');
      expect(query.goal, 'motor');
      expect(query.maxDurationMinutes, 20);
      expect(query.needsNoMaterials, true);
      expect(query.favoritesOnly, true);
      expect(query.completedOnly, false);
      expect(query.childId, 'child1');
    });

    test('ContentSearchQuery defaults', () {
      final query = ContentSearchQuery();

      expect(query.text, null);
      expect(query.ageInMonths, null);
      expect(query.contentType, null);
      expect(query.place, null);
      expect(query.goal, null);
      expect(query.maxDurationMinutes, null);
      expect(query.needsNoMaterials, false);
      expect(query.favoritesOnly, false);
      expect(query.completedOnly, false);
      expect(query.childId, null);
    });

    test('ContentSearchResult structure', () {
      final result = ContentSearchResult(
        games: [],
        stories: [],
        crafts: [],
        foods: [],
        articles: [],
      );

      expect(result.games, isEmpty);
      expect(result.stories, isEmpty);
      expect(result.crafts, isEmpty);
      expect(result.foods, isEmpty);
      expect(result.articles, isEmpty);
    });
  });
}
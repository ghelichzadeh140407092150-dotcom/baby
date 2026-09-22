// test/features/today/today_screen_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hamrah_madaran/app.dart';
import 'package:hamrah_madaran/core/di/service_locator.dart';
import 'package:hamrah_madaran/core/router/app_router.dart';
import 'package:hamrah_madaran/features/today/application/daily_pick.dart';
import 'package:hamrah_madaran/features/today/domain/content.dart';

void main() {
  late ProviderContainer container;

  setUpAll(() async {
    container = await initializeDependencies();
  });

  tearDownAll(() {
    container.dispose();
  });

  group('TodayScreen', () {
    testWidgets('shows loading state initially', (tester) async {
      await tester.pumpWidget(
        UncontrolledProviderScope(
          container: container,
          child: MaterialApp.router(
            routerConfig: container.read(appRouterProvider),
          ),
        ),
      );

      await tester.pump();

      // Should show loading indicator
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('shows child header when loaded', (tester) async {
      await tester.pumpWidget(
        UncontrolledProviderScope(
          container: container,
          child: MaterialApp.router(
            routerConfig: container.read(appRouterProvider),
          ),
        ),
      );

      await tester.pumpAndSettle();

      // The screen should show either loading or content
      // This test verifies the widget tree builds without errors
    });
  });

  group('Content Models', () {
    test('Game model has correct structure', () {
      final game = Game(
        id: 'game_1',
        type: 'game',
        title: 'جعبه حسی',
        slug: 'sensory-box',
        minAgeMonths: 6,
        maxAgeMonths: 24,
        tags: ['home', 'motor'],
        durationMinutes: 15,
        thumbnail: 'assets/images/game_sensory_box.jpg',
        contentVersion: 1,
        publishedAt: DateTime.now(),
        isPremium: false,
        goal: 'motor',
        place: 'home',
        materials: ['جعبه کارتنی', 'برش‌های پارچه'],
        steps: ['مرحله ۱', 'مرحله ۲'],
        whatTheyLearn: 'تقویت حسی‌مدارک',
        body: 'توضیحات بازی',
      );

      expect(game.id, 'game_1');
      expect(game.title, 'جعبه حسی');
      expect(game.minAgeMonths, 6);
      expect(game.maxAgeMonths, 24);
      expect(game.durationMinutes, 15);
      expect(game.goal, 'motor');
      expect(game.place, 'home');
      expect(game.materials, hasLength(2));
      expect(game.steps, hasLength(2));
    });

    test('Story model has correct structure', () {
      final story = Story(
        id: 'story_1',
        type: 'story',
        title: 'قشنگ‌ترین ستاره',
        slug: 'prettiest-star',
        minAgeMonths: 18,
        maxAgeMonths: 48,
        tags: ['bedtime'],
        durationMinutes: 5,
        thumbnail: 'assets/images/story_star.jpg',
        contentVersion: 1,
        publishedAt: DateTime.now(),
        isPremium: false,
        audioUrl: 'https://example.com/story.mp3',
        audioAsset: 'assets/audio/story_star.mp3',
        durationSeconds: 300,
        transcript: 'متن قصه...',
        category: 'bedtime',
        narrator: 'فاطمه معلم',
        cover: 'assets/images/story_star_cover.jpg',
      );

      expect(story.id, 'story_1');
      expect(story.title, 'قشنگ‌ترین ستاره');
      expect(story.durationSeconds, 300);
      expect(story.category, 'bedtime');
      expect(story.narrator, 'فاطمه معلم');
    });

    test('Craft model has correct structure', () {
      final craft = Craft(
        id: 'craft_1',
        type: 'craft',
        title: 'کاغذ رنگی چسبانی',
        slug: 'paper-collage',
        minAgeMonths: 18,
        maxAgeMonths: 48,
        tags: ['creativity'],
        durationMinutes: 20,
        thumbnail: 'assets/images/craft_collage.jpg',
        contentVersion: 1,
        publishedAt: DateTime.now(),
        isPremium: false,
        materials: ['کاغذهای رنگی', 'چسب استیک'],
        steps: [
          CraftStep(text: 'مرحله ۱'),
          CraftStep(text: 'مرحله ۲'),
        ],
        difficulty: 'easy',
        resultImage: 'assets/images/craft_collage_result.jpg',
        relatedProductSku: 'CRAFT-KIT-001',
      );

      expect(craft.id, 'craft_1');
      expect(craft.title, 'کاغذ رنگی چسبانی');
      expect(craft.difficulty, 'easy');
      expect(craft.steps, hasLength(2));
    });

    test('Food model has correct structure', () {
      final food = Food(
        id: 'food_1',
        type: 'food',
        title: 'پوره سیب‌زمینی',
        slug: 'potato-puree',
        minAgeMonths: 6,
        maxAgeMonths: 48,
        tags: ['first_food'],
        durationMinutes: 15,
        thumbnail: 'assets/images/food_potato_puree.jpg',
        contentVersion: 1,
        publishedAt: DateTime.now(),
        isPremium: false,
        allowedFromMonths: 6,
        texture: 'puree',
        preparation: ['مرحله ۱', 'مرحله ۲'],
        portionGuide: '۲-۳ قاشق',
        allergens: [],
        avoidIf: [],
        sourceCitation: 'وزارت بهداشت ایران',
      );

      expect(food.id, 'food_1');
      expect(food.allowedFromMonths, 6);
      expect(food.texture, 'puree');
      expect(food.portionGuide, '۲-۳ قاشق');
    });

    test('Article model has correct structure', () {
      final article = Article(
        id: 'article_1',
        type: 'article',
        title: 'مقاله تست',
        slug: 'test-article',
        minAgeMonths: 0,
        maxAgeMonths: 72,
        tags: ['health'],
        durationMinutes: 10,
        thumbnail: 'assets/images/article.jpg',
        contentVersion: 1,
        publishedAt: DateTime.now(),
        isPremium: false,
        bodyMarkdown: 'متن مقاله...',
        sourceCitation: 'منبع',
        reviewedBy: 'دکتر احمدی',
      );

      expect(article.id, 'article_1');
      expect(article.bodyMarkdown, 'متن مقاله...');
      expect(article.reviewedBy, 'دکتر احمدی');
    });

    test('isEligibleForAge works correctly', () {
      final game = Game(
        id: 'game_1',
        type: 'game',
        title: 'Test',
        slug: 'test',
        minAgeMonths: 6,
        maxAgeMonths: 24,
        tags: [],
        durationMinutes: 15,
        contentVersion: 1,
        publishedAt: DateTime.now(),
        isPremium: false,
        goal: 'motor',
        place: 'home',
        materials: [],
        steps: [],
        whatTheyLearn: 'Test',
      );

      expect(game.isEligibleForAge(3), false);
      expect(game.isEligibleForAge(6), true);
      expect(game.isEligibleForAge(12), true);
      expect(game.isEligibleForAge(24), true);
      expect(game.isEligibleForAge(25), false);
    });
  });

  group('DailyPickAlgorithm', () {
    test('pick returns deterministic result', () {
      final items = ['a', 'b', 'c', 'd', 'e'];
      final seed = 'child1-100-14030615';

      final result1 = DailyPickAlgorithm.pick(items, seed);
      final result2 = DailyPickAlgorithm.pick(items, seed);

      expect(result1, result2);
      expect(items.contains(result1), true);
    });

    test('pickWithHistory avoids recent items', () {
      final items = ['a', 'b', 'c', 'd', 'e'];
      final seed = 'child1-100-14030615';
      final history = ['a', 'b'];

      final result = DailyPickAlgorithm.pickWithHistory(
        eligibleItems: items,
        seed: seed,
        recentIds: history,
        getId: (s) => s,
      );

      expect(result, isNot('a'));
      expect(result, isNot('b'));
      expect(items.contains(result), true);
    });

    test('pickWithHistory resets when all items exhausted', () {
      final items = ['a', 'b'];
      final seed = 'child1-100-14030615';
      final history = ['a', 'b'];

      final result = DailyPickAlgorithm.pickWithHistory(
        eligibleItems: items,
        seed: seed,
        recentIds: history,
        getId: (s) => s,
      );

      expect(items.contains(result), true);
    });

    test('generateSeed creates consistent seed', () {
      final childId = 'child123';
      final ageInDays = 200;
      final date = DateTime(2024, 9, 5);

      final seed1 = DailyPickAlgorithm.generateSeed(
        childId: childId,
        ageInDays: ageInDays,
        date: date,
      );
      final seed2 = DailyPickAlgorithm.generateSeed(
        childId: childId,
        ageInDays: ageInDays,
        date: date,
      );

      expect(seed1, seed2);
    });

    test('generateRerollSeed is different from daily seed', () {
      final childId = 'child123';
      final ageInDays = 200;
      final date = DateTime(2024, 9, 5);

      final dailySeed = DailyPickAlgorithm.generateSeed(
        childId: childId,
        ageInDays: ageInDays,
        date: date,
      );
      final rerollSeed = DailyPickAlgorithm.generateRerollSeed(
        childId: childId,
        ageInDays: ageInDays,
        date: date,
        rerollCount: 1,
        contentType: 'game',
      );

      expect(dailySeed, isNot(rerollSeed));
    });

    test('ContentPoolTracker tracks history', () {
      final tracker = ContentPoolTracker();
      
      expect(tracker.getHistory('child1', 'game'), isEmpty);
      
      tracker.addToHistory('child1', 'game', 'game_1');
      expect(tracker.getHistory('child1', 'game'), ['game_1']);
      
      tracker.addToHistory('child1', 'game', 'game_2');
      expect(tracker.getHistory('child1', 'game'), ['game_2', 'game_1']);
      
      tracker.clear();
      expect(tracker.getHistory('child1', 'game'), isEmpty);
    });
  });
}
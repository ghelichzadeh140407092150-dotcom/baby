// test/features/child/presentation/vaccines/vaccine_timeline_screen_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hamrah_madaran/app.dart';
import 'package:hamrah_madaran/core/di/service_locator.dart';
import 'package:hamrah_madaran/core/router/app_router.dart';
import 'package:hamrah_madaran/features/child/presentation/vaccines/vaccine_timeline_screen.dart';

void main() {
  late ProviderContainer container;

  setUpAll(() async {
    container = await initializeDependencies();
  });

  tearDownAll(() {
    container.dispose();
  });

  group('VaccineTimelineScreen', () {
    testWidgets('renders without errors', (tester) async {
      await tester.pumpWidget(
        UncontrolledProviderScope(
          container: container,
          child: MaterialApp.router(
            routerConfig: container.read(appRouterProvider),
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.byType(VaccineTimelineScreen), findsOneWidget);
    });

    testWidgets('has app bar title', (tester) async {
      await tester.pumpWidget(
        UncontrolledProviderScope(
          container: container,
          child: MaterialApp.router(
            routerConfig: container.read(appRouterProvider),
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.text('زمان‌بندی واکسینations'), findsOneWidget);
    });

    testWidgets('shows vaccination info when child selected', (tester) async {
      await tester.pumpWidget(
        UncontrolledProviderScope(
          container: container,
          child: MaterialApp.router(
            routerConfig: container.read(appRouterProvider),
          ),
        ),
      );

      await tester.pumpAndSettle();

      // Test that the screen builds correctly
      expect(find.byIcon(Icons.local_pharmacy_outline), findsOneWidget);
    });
  });
}
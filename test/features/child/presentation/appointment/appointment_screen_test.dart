// test/features/child/presentation/appointment/appointment_screen_test.dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hamrah_madaran/app.dart';
import 'package:hamrah_madaran/core/di/service_locator.dart';
import 'package:hamrah_madaran/core/router/app_router.dart';
import 'package:hamrah_madaran/features/child/presentation/appointment/appointment_screen.dart';

void main() {
  late ProviderContainer container;

  setUpAll(() async {
    container = await initializeDependencies();
  });

  tearDownAll(() {
    container.dispose();
  });

  group('AppointmentScreen', () {
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

      expect(find.byType(AppointmentScreen), findsOneWidget);
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

      expect(find.text('نوبت‌ها'), findsOneWidget);
    });
  });
}
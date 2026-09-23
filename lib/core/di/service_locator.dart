// core/di/service_locator.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:dio/dio.dart';

import '../../data/db/app_database.dart';
import '../../data/db/migration.dart';
import '../../data/dao/child_dao.dart';
import '../../data/dao/growth_dao.dart';
import '../../data/dao/vaccine_dao.dart';
import '../../data/dao/teeth_dao.dart';
import '../../data/dao/milestone_dao.dart';
import '../../data/dao/food_dao.dart';
import '../../data/dao/activity_dao.dart';
import '../../data/dao/sleep_feed_dao.dart';
import '../../data/dao/settings_dao.dart';
import '../../data/repository/child_repository_impl.dart';
import '../../data/repository/growth_repository_impl.dart';
import '../../data/repository/vaccine_repository_impl.dart';
import '../../data/repository/food_repository_impl.dart';
import '../../data/repository/activity_repository_impl.dart';
import '../../data/content/content_loader.dart';
import '../../data/remote/api_client.dart';
import '../../data/purchase/purchase_gateway.dart';
import '../../domain/repository/child_repository.dart';
import '../../domain/repository/growth_repository.dart';
import '../../domain/repository/vaccine_repository.dart';
import '../../domain/repository/food_repository.dart';
import '../../domain/repository/activity_repository.dart';

/// Riverpod providers for dependency injection
final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError('Must be overridden with ProviderScope.overrideWithValue');
});

final appDatabaseProvider = Provider<AppDatabase>((ref) {
  throw UnimplementedError('Must be overridden with ProviderScope.overrideWithValue');
});

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(BaseOptions(
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 30),
    headers: {'Accept': 'application/json'},
  ));
  
  // Add interceptors for retry, cache, logging
  dio.interceptors.add(LogInterceptor(
    requestBody: true,
    responseBody: true,
    logPrint: (obj) => print('[DIO] $obj'),
  ));
  
  ref.onDispose(() => dio.close());
  return dio;
});

/// DAO providers
final childDaoProvider = Provider<ChildDao>((ref) {
  return ChildDao(ref.watch(appDatabaseProvider));
});

final growthDaoProvider = Provider<GrowthDao>((ref) {
  return GrowthDao(ref.watch(appDatabaseProvider));
});

final vaccineDaoProvider = Provider<VaccineDao>((ref) {
  return VaccineDao(ref.watch(appDatabaseProvider));
});

final teethDaoProvider = Provider<TeethDao>((ref) {
  return TeethDao(ref.watch(appDatabaseProvider));
});

final milestoneDaoProvider = Provider<MilestoneDao>((ref) {
  return MilestoneDao(ref.watch(appDatabaseProvider));
});

final foodDaoProvider = Provider<FoodDao>((ref) {
  return FoodDao(ref.watch(appDatabaseProvider));
});

final activityDaoProvider = Provider<ActivityDao>((ref) {
  return ActivityDao(ref.watch(appDatabaseProvider));
});

final sleepFeedDaoProvider = Provider<SleepFeedDao>((ref) {
  return SleepFeedDao(ref.watch(appDatabaseProvider));
});

final settingsDaoProvider = Provider<SettingsDao>((ref) {
  return SettingsDao(ref.watch(appDatabaseProvider));
});

/// Repository providers
final childRepositoryProvider = Provider<ChildRepository>((ref) {
  return ChildRepositoryImpl(ref.watch(childDaoProvider));
});

final growthRepositoryProvider = Provider<GrowthRepository>((ref) {
  return GrowthRepositoryImpl(ref.watch(growthDaoProvider), ref.watch(childDaoProvider));
});

final vaccineRepositoryProvider = Provider<VaccineRepository>((ref) {
  return VaccineRepositoryImpl(ref.watch(vaccineDaoProvider), ref.watch(childDaoProvider));
});

final foodRepositoryProvider = Provider<FoodRepository>((ref) {
  return FoodRepositoryImpl(ref.watch(foodDaoProvider));
});

final activityRepositoryProvider = Provider<ActivityRepository>((ref) {
  return ActivityRepositoryImpl(ref.watch(activityDaoProvider));
});

/// Content loader provider
final contentLoaderProvider = Provider<ContentLoader>((ref) {
  return ContentLoader(ref.watch(dioProvider));
});

/// API client provider
final apiClientProvider = Provider<ApiClient>((ref) {
  return ApiClient(ref.watch(dioProvider));
});

/// Purchase gateway provider (fake implementation for development)
final purchaseGatewayProvider = Provider<PurchaseGateway>((ref) {
  return FakePurchaseGateway();
});

/// Active child ID provider (for multi-child support)
final activeChildIdProvider = StateProvider<String?>((ref) => null);

/// Initialize all dependencies
Future<ProviderContainer> initializeDependencies() async {
  final prefs = await SharedPreferences.getInstance();
  final documentsDir = await getApplicationDocumentsDirectory();
  final dbPath = p.join(documentsDir.path, 'hamrah_madaran.sqlite');
  
  final database = AppDatabase(NativeDatabase.createInBackground(dbPath));
  
  // Run migrations
  await runMigrations(database);
  
  final container = ProviderContainer(
    overrides: [
      sharedPreferencesProvider.overrideWithValue(prefs),
      appDatabaseProvider.overrideWithValue(database),
    ],
  );
  
  // Initialize active child from settings
  final settingsDao = container.read(settingsDaoProvider);
  final activeChildId = await settingsDao.getActiveChildId();
  container.read(activeChildIdProvider.notifier).state = activeChildId;
  
  return container;
}

/// Run database migrations
Future<void> runMigrations(AppDatabase database) async {
  // Migration logic will be implemented in data/db/migration.dart
  // For now, just ensure schema is up to date
  await database.migrator.migrate();
}
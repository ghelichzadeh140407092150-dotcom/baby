// features/today/application/today_controller.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hamrah_madaran/core/error/result.dart';
import 'package:hamrah_madaran/data/repository/child_repository_impl.dart';
import 'package:hamrah_madaran/data/repository/vaccine_repository_impl.dart';
import 'package:hamrah_madaran/data/repository/growth_repository_impl.dart';
import 'package:hamrah_madaran/domain/repository/child_repository.dart';
import 'package:hamrah_madaran/domain/repository/vaccine_repository.dart';
import 'package:hamrah_madaran/domain/repository/growth_repository.dart';
import 'package:hamrah_madaran/core/di/service_locator.dart';
import 'package:hamrah_madaran/features/today/domain/content.dart';
import 'package:hamrah_madaran/features/today/domain/content_repository.dart';
import 'package:hamrah_madaran/features/today/application/daily_pick.dart';
import 'package:hamrah_madaran/core/utils/persian_utils.dart';

part 'today_controller.freezed.dart';
part 'today_controller.g.dart';

/// Today screen state
@freezed
class TodayState with _$TodayState {
  const factory TodayState({
    required Game? game,
    required Story? story,
    required Craft? craft,
    required String? vaccineReminder,
    required String? measurementReminder,
    required bool isLoading,
    String? error,
    required DateTime date,
    required int childAgeInDays,
    required int childAgeInMonths,
    required String childName,
  }) = _TodayState;

  factory TodayState.fromJson(Map<String, dynamic> json) => _$TodayStateFromJson(json);
}

/// Today controller provider
final todayControllerProvider = StateNotifierProvider<TodayController, TodayState>((ref) {
  return TodayController(
    contentRepository: ref.watch(contentRepositoryProvider),
    childRepository: ref.watch(childRepositoryProvider),
    vaccineRepository: ref.watch(vaccineRepositoryProvider),
    growthRepository: ref.watch(growthRepositoryProvider),
    activeChildId: ref.watch(activeChildIdProvider),
  );
});

class TodayController extends StateNotifier<TodayState> {
  final ContentRepository _contentRepository;
  final ChildRepository _childRepository;
  final VaccineRepository _vaccineRepository;
  final GrowthRepository _growthRepository;
  final String? _activeChildId;
  final ContentPoolTracker _poolTracker = ContentPoolTracker();

  TodayController({
    required ContentRepository contentRepository,
    required ChildRepository childRepository,
    required VaccineRepository vaccineRepository,
    required GrowthRepository growthRepository,
    required String? activeChildId,
  })  : _contentRepository = contentRepository,
        _childRepository = childRepository,
        _vaccineRepository = vaccineRepository,
        _growthRepository = growthRepository,
        _activeChildId = activeChildId,
        super(TodayState(
          game: null,
          story: null,
          craft: null,
          vaccineReminder: null,
          measurementReminder: null,
          isLoading: true,
          date: DateTime.now(),
          childAgeInDays: 0,
          childAgeInMonths: 0,
          childName: '',
        )) {
    _loadToday();
  }

  Future<void> _loadToday() async {
    if (_activeChildId == null) {
      state = state.copyWith(isLoading: false, error: 'No active child');
      return;
    }

    try {
      state = state.copyWith(isLoading: true);

      // Load child
      final childResult = await _childRepository.getChildById(_activeChildId!);
      if (childResult.isFailure || childResult.value == null) {
        state = state.copyWith(isLoading: false, error: 'Child not found');
        return;
      }
      final child = childResult.value!;

      // Load content bundle
      final bundleResult = await _contentRepository.loadSeededBundle();
      if (bundleResult.isFailure) {
        state = state.copyWith(isLoading: false, error: 'Failed to load content');
        return;
      }
      final bundle = bundleResult.value!;

      // Get age
      final ageInfo = ageFromBirthDate(child.birthDate, isPreBirth: child.isPreBirth);
      final ageInDays = ageInfo['ageInDays'] as int;
      final ageInMonths = ageInfo['ageInMonths'] as int;

      // Daily pick for each type
      final seed = DailyPickAlgorithm.generateSeed(
        childId: child.id,
        ageInDays: ageInDays,
        date: DateTime.now(),
      );

      final gamesForAge = bundle.games.where((g) => g.isEligibleForAge(ageInMonths)).toList();
      final storiesForAge = bundle.stories.where((s) => s.isEligibleForAge(ageInMonths)).toList();
      final craftsForAge = bundle.crafts.where((c) => c.isEligibleForAge(ageInMonths)).toList();

      // Filter out recent
      final gameHistory = _poolTracker.getHistory(child.id, 'game');
      final storyHistory = _poolTracker.getHistory(child.id, 'story');
      final craftHistory = _poolTracker.getHistory(child.id, 'craft');

      final game = DailyPickAlgorithm.pickWithHistory(
        eligibleItems: gamesForAge,
        seed: seed,
        recentIds: gameHistory,
        getId: (g) => g.id,
      );
      if (game != null) _poolTracker.addToHistory(child.id, 'game', game.id);

      final story = DailyPickAlgorithm.pickWithHistory(
        eligibleItems: storiesForAge,
        seed: seed,
        recentIds: storyHistory,
        getId: (s) => s.id,
      );
      if (story != null) _poolTracker.addToHistory(child.id, 'story', story.id);

      final craft = DailyPickAlgorithm.pickWithHistory(
        eligibleItems: craftsForAge,
        seed: seed,
        recentIds: craftHistory,
        getId: (c) => c.id,
      );
      if (craft != null) _poolTracker.addToHistory(child.id, 'craft', craft.id);

      // Check vaccine reminder
      String? vaccineReminder;
      final vaccineResult = await _vaccineRepository.getScheduleGrouped(child.id);
      if (vaccineResult.isSuccess) {
        final grouped = vaccineResult.value!;
        final due = grouped['due'] ?? [];
        if (due.isNotEmpty) {
          final nextVaccine = due.first;
          final daysUntil = nextVaccine.dueDate.difference(DateTime.now()).inDays;
          if (daysUntil <= 7) {
            vaccineReminder = 'واکسن ${nextVaccine.vaccineCode} در $daysUntil روز دیگر سررسیده';
          }
        }
      }

      // Check measurement reminder (if no measurement in last 28 days)
      String? measurementReminder;
      final growthResult = await _growthRepository.getMeasurements(child.id);
      if (growthResult.isSuccess) {
        final measurements = growthResult.value!;
        if (measurements.isEmpty) {
          measurementReminder = 'اندازه‌گیری قد و وزن رو فراموش نکن';
        } else {
          final latest = measurements.first;
          final daysSince = DateTime.now().difference(latest.measuredAt).inDays;
          if (daysSince >= 28) {
            measurementReminder = 'اندازه‌گیری قد و وزن رو فراموش نکن';
          }
        }
      } else {
        measurementReminder = 'اندازه‌گیری قد و وزن رو فراموش نکن';
      }

      state = state.copyWith(
        game: game,
        story: story,
        craft: craft,
        vaccineReminder: vaccineReminder,
        measurementReminder: measurementReminder,
        isLoading: false,
        date: DateTime.now(),
        childAgeInDays: ageInDays,
        childAgeInMonths: ageInMonths,
        childName: child.name,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  /// Re-roll a specific content type
  Future<void> reroll(String contentType) async {
    if (_activeChildId == null) return;

    try {
      final bundleResult = await _contentRepository.loadSeededBundle();
      if (bundleResult.isFailure) return;
      final bundle = bundleResult.value!;

      final childResult = await _childRepository.getChildById(_activeChildId!);
      if (childResult.isFailure || childResult.value == null) return;
      final child = childResult.value!;

      final ageInfo = ageFromBirthDate(child.birthDate, isPreBirth: child.isPreBirth);
      final ageInDays = ageInfo['ageInDays'] as int;
      final ageInMonths = ageInfo['ageInMonths'] as int;

      final rerollCount = _getRerollCount(contentType);
      final seed = DailyPickAlgorithm.generateRerollSeed(
        childId: child.id,
        ageInDays: ageInDays,
        date: DateTime.now(),
        rerollCount: rerollCount,
        contentType: contentType,
      );

      switch (contentType) {
        case 'game':
          final gamesForAge = bundle.games.where((g) => g.isEligibleForAge(ageInMonths)).toList();
          final gameHistory = _poolTracker.getHistory(child.id, 'game');
          final game = DailyPickAlgorithm.pickWithHistory(
            eligibleItems: gamesForAge,
            seed: seed,
            recentIds: gameHistory,
            getId: (g) => g.id,
          );
          if (game != null) {
            _poolTracker.addToHistory(child.id, 'game', game.id);
            state = state.copyWith(game: game);
          }
          break;
        case 'story':
          final storiesForAge = bundle.stories.where((s) => s.isEligibleForAge(ageInMonths)).toList();
          final storyHistory = _poolTracker.getHistory(child.id, 'story');
          final story = DailyPickAlgorithm.pickWithHistory(
            eligibleItems: storiesForAge,
            seed: seed,
            recentIds: storyHistory,
            getId: (s) => s.id,
          );
          if (story != null) {
            _poolTracker.addToHistory(child.id, 'story', story.id);
            state = state.copyWith(story: story);
          }
          break;
        case 'craft':
          final craftsForAge = bundle.crafts.where((c) => c.isEligibleForAge(ageInMonths)).toList();
          final craftHistory = _poolTracker.getHistory(child.id, 'craft');
          final craft = DailyPickAlgorithm.pickWithHistory(
            eligibleItems: craftsForAge,
            seed: seed,
            recentIds: craftHistory,
            getId: (c) => c.id,
          );
          if (craft != null) {
            _poolTracker.addToHistory(child.id, 'craft', craft.id);
            state = state.copyWith(craft: craft);
          }
          break;
      }
    } catch (e) {
      // Silently fail
    }
  }

  int _getRerollCount(String contentType) {
    // In a real implementation, this would be persisted
    return 1;
  }

  void refresh() => _loadToday();
}

/// Content repository provider (will be implemented in data layer)
final contentRepositoryProvider = Provider<ContentRepository>((ref) {
  throw UnimplementedError('ContentRepository not implemented yet');
});
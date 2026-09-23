// features/today/application/daily_pick.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hamrah_madaran/features/today/domain/content.dart';
import 'package:hamrah_madaran/core/utils/persian_utils.dart';

part 'daily_pick.freezed.dart';
part 'daily_pick.g.dart';

/// Deterministic daily pick algorithm
/// Same (childId, ageInDays, jalaliDate) always returns same content
/// No repeats until pool exhausted

class DailyPickAlgorithm {
  /// Pick one item from eligible pool using seeded shuffle
  static T? pick<T>(List<T> eligibleItems, String seed) {
    if (eligibleItems.isEmpty) return null;
    if (eligibleItems.length == 1) return eligibleItems.first;

    // Create deterministic hash from seed
    final hash = _hashString(seed);
    
    // Use hash to pick index
    final index = hash % eligibleItems.length;
    return eligibleItems[index];
  }

  /// Pick with history tracking to avoid repeats
  static T? pickWithHistory<T>({
    required List<T> eligibleItems,
    required String seed,
    required List<String> recentIds,
    required String Function(T) getId,
    int maxHistory = 10,
  }) {
    if (eligibleItems.isEmpty) return null;

    // Filter out recently shown items
    final available = eligibleItems
        .where((item) => !recentIds.contains(getId(item)))
        .toList();

    // If all items were shown recently, reset history
    final pool = available.isEmpty ? eligibleItems : available;
    
    return pick(pool, seed);
  }

  /// Generate seed for daily pick
  /// Uses childId + ageInDays + jalaliDate
  static String generateSeed({
    required String childId,
    required int ageInDays,
    required DateTime date,
  }) {
    final jalali = formatJalaliDate(date, format: 'short').replaceAll('/', '');
    return '$childId-$ageInDays-$jalali';
  }

  /// Generate seed for re-roll (different from daily pick)
  static String generateRerollSeed({
    required String childId,
    required int ageInDays,
    required DateTime date,
    required int rerollCount,
    required String contentType,
  }) {
    final jalali = formatJalaliDate(date, format: 'short').replaceAll('/', '');
    return '$childId-$ageInDays-$jalali-reroll-$rerollCount-$contentType';
  }

  /// Simple string hash function
  static int _hashString(String input) {
    var hash = 0;
    for (var i = 0; i < input.length; i++) {
      hash = (hash * 31 + input.codeUnitAt(i)) & 0x7fffffff;
    }
    return hash;
  }
}

/// Daily pick result for all three content types
@freezed
class DailyPickResult with _$DailyPickResult {
  const factory DailyPickResult({
    required Game? game,
    required Story? story,
    required Craft? craft,
    required DateTime date,
    required int ageInDays,
    required String childId,
  }) = _DailyPickResult;

  factory DailyPickResult.fromJson(Map<String, dynamic> json) => _$DailyPickResultFromJson(json);
}

/// Content pool tracker for no-repeat guarantee
class ContentPoolTracker {
  final Map<String, List<String>> _history = {};

  /// Get history for a content type
  List<String> getHistory(String childId, String contentType) {
    final key = '$childId-$contentType';
    return _history[key] ?? [];
  }

  /// Add to history
  void addToHistory(String childId, String contentType, String contentId) {
    final key = '$childId-$contentType';
    final list = _history[key] ?? [];
    list.insert(0, contentId);
    // Keep only last 20
    if (list.length > 20) list.removeLast();
    _history[key] = list;
  }

  /// Clear history (for testing)
  void clear() => _history.clear();
}
// features/today/domain/content_repository.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hamrah_madaran/core/error/result.dart';
import 'content.dart';

part 'content_repository.freezed.dart';
part 'content_repository.g.dart';

abstract class ContentRepository {
  /// Load all content from seeded bundle
  Future<Result<ContentBundle>> loadSeededBundle();

  /// Load content from remote (if available)
  Future<Result<ContentBundle>> loadRemoteBundle(String baseUrl);

  /// Get all games
  Result<GameList> getGames();

  /// Get all stories
  Result<StoryList> getStories();

  /// Get all crafts
  Result<CraftList> getCrafts();

  /// Get all foods
  Result<FoodList> getFoods();

  /// Get all articles
  Result<ArticleList> getArticles();

  /// Get games filtered by age
  Result<GameList> getGamesForAge(int ageInMonths);

  /// Get stories filtered by age
  Result<StoryList> getStoriesForAge(int ageInMonths);

  /// Get crafts filtered by age
  Result<CraftList> getCraftsForAge(int ageInMonths);

  /// Search content
  Result<ContentSearchResult> search(ContentSearchQuery query);

  /// Get content by ID
  Result<Content?> getById(String id);
}

/// Bundle of all content
@freezed
class ContentBundle with _$ContentBundle {
  const factory ContentBundle({
    required int version,
    required GameList games,
    required StoryList stories,
    required CraftList crafts,
    required FoodList foods,
    required ArticleList articles,
    required DateTime loadedAt,
  }) = _ContentBundle;

  factory ContentBundle.fromJson(Map<String, dynamic> json) => _$ContentBundleFromJson(json);
}

/// Search query
@freezed
class ContentSearchQuery with _$ContentSearchQuery {
  const factory ContentSearchQuery({
    String? text,
    int? ageInMonths,
    String? contentType, // game, story, craft
    String? place, // home, car, outdoor, bath
    String? goal, // energy, focus, language, motor, creativity, calm
    int? maxDurationMinutes,
    bool? needsNoMaterials,
    @Default(false) bool favoritesOnly,
    @Default(false) bool completedOnly,
    String? childId, // for favorites/completed
  }) = _ContentSearchQuery;

  factory ContentSearchQuery.fromJson(Map<String, dynamic> json) => _$ContentSearchQueryFromJson(json);
}

/// Search result
@freezed
class ContentSearchResult with _$ContentSearchResult {
  const factory ContentSearchResult({
    required GameList games,
    required StoryList stories,
    required CraftList crafts,
    required FoodList foods,
    required ArticleList articles,
  }) = _ContentSearchResult;

  factory ContentSearchResult.fromJson(Map<String, dynamic> json) => _$ContentSearchResultFromJson(json);
}
// features/library/domain/library_repository.dart
import 'package:hamrah_madaran/core/error/result.dart';
import 'package:hamrah_madaran/features/today/domain/content.dart';

class ContentSearchQuery {
  const ContentSearchQuery({
    this.text,
    this.ageInMonths,
    this.contentType,
    this.place,
    this.goal,
    this.maxDurationMinutes,
    this.needsNoMaterials = false,
    this.favoritesOnly = false,
    this.completedOnly = false,
    this.childId,
  });

  final String? text;
  final int? ageInMonths;
  final String? contentType;
  final String? place;
  final String? goal;
  final int? maxDurationMinutes;
  final bool needsNoMaterials;
  final bool favoritesOnly;
  final bool completedOnly;
  final String? childId;
}

class ContentSearchResult {
  const ContentSearchResult({
    required this.games,
    required this.stories,
    required this.crafts,
    required this.foods,
    required this.articles,
  });

  final List<Game> games;
  final List<Story> stories;
  final List<Craft> crafts;
  final List<Food> foods;
  final List<Article> articles;
}

abstract class LibraryRepository {
  /// Get all content
  Result<GameList> getGames();
  Result<StoryList> getStories();
  Result<CraftList> getCrafts();

  /// Filtered content
  Result<GameList> getGamesForAge(int ageInMonths);
  Result<StoryList> getStoriesForAge(int ageInMonths);
  Result<CraftList> getCraftsForAge(int ageInMonths);

  /// Search with filters
  Result<ContentSearchResult> search(ContentSearchQuery query);

  /// Favorites
  Result<GameList> getFavoriteGames(String childId);
  Result<StoryList> getFavoriteStories(String childId);
  Result<CraftList> getFavoriteCrafts(String childId);

  /// Completed
  Result<GameList> getCompletedGames(String childId);
  Result<StoryList> getCompletedStories(String childId);
  Result<CraftList> getCompletedCrafts(String childId);

  /// Toggle favorite
  Future<Result<void>> toggleFavorite(String childId, String contentId, String contentType, bool favorited);
}
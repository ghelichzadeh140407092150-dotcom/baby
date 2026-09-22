// features/library/domain/library_repository.dart
import 'package:hamrah_madaran/core/error/result.dart';
import 'package:hamrah_madaran/features/today/domain/content.dart';

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
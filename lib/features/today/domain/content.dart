// features/today/domain/content.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hamrah_madaran/core/utils/persian_utils.dart';

part 'content.freezed.dart';
part 'content.g.dart';

/// Game content
@freezed
class Game with _$Game {
  const factory Game({
    required String id,
    required String type,
    required String title,
    required String slug,
    required int minAgeMonths,
    required int maxAgeMonths,
    @Default([]) List<String> tags,
    required int durationMinutes,
    String? thumbnail,
    required int contentVersion,
    required DateTime publishedAt,
    @Default(false) bool isPremium,
    required String goal, // energy, focus, language, motor, creativity, calm
    required String place, // home, car, outdoor, bath
    @Default([]) List<String> materials,
    @Default([]) List<String> steps,
    required String whatTheyLearn,
    String? body,
  }) = _Game;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);

  /// Check if game is eligible for a child's age
  bool isEligibleForAge(int ageInMonths) {
    return ageInMonths >= minAgeMonths && ageInMonths <= maxAgeMonths;
  }
}

/// Story content
@freezed
class Story with _$Story {
  const factory Story({
    required String id,
    required String type,
    required String title,
    required String slug,
    required int minAgeMonths,
    required int maxAgeMonths,
    @Default([]) List<String> tags,
    required int durationMinutes,
    String? thumbnail,
    required int contentVersion,
    required DateTime publishedAt,
    @Default(false) bool isPremium,
    required String audioUrl,
    String? audioAsset,
    required int durationSeconds,
    required String transcript,
    required String category, // bedtime, moral, folk, brandCharacter
    required String narrator,
    String? cover,
  }) = _Story;

  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);

  bool isEligibleForAge(int ageInMonths) {
    return ageInMonths >= minAgeMonths && ageInMonths <= maxAgeMonths;
  }
}

/// Craft content
@freezed
class Craft with _$Craft {
  const factory Craft({
    required String id,
    required String type,
    required String title,
    required String slug,
    required int minAgeMonths,
    required int maxAgeMonths,
    @Default([]) List<String> tags,
    required int durationMinutes,
    String? thumbnail,
    required int contentVersion,
    required DateTime publishedAt,
    @Default(false) bool isPremium,
    @Default([]) List<String> materials,
    @Default([]) List<CraftStep> steps,
    required String difficulty, // easy, medium
    String? resultImage,
    String? relatedProductSku,
  }) = _Craft;

  factory Craft.fromJson(Map<String, dynamic> json) => _$CraftFromJson(json);

  bool isEligibleForAge(int ageInMonths) {
    return ageInMonths >= minAgeMonths && ageInMonths <= maxAgeMonths;
  }
}

/// Craft step with optional image
@freezed
class CraftStep with _$CraftStep {
  const factory CraftStep({
    required String text,
    String? imageAsset,
  }) = _CraftStep;

  factory CraftStep.fromJson(Map<String, dynamic> json) => _$CraftStepFromJson(json);
}

/// Food content
@freezed
class Food with _$Food {
  const factory Food({
    required String id,
    required String type,
    required String title,
    required String slug,
    required int minAgeMonths,
    required int maxAgeMonths,
    @Default([]) List<String> tags,
    required int durationMinutes,
    String? thumbnail,
    required int contentVersion,
    required DateTime publishedAt,
    @Default(false) bool isPremium,
    required int allowedFromMonths,
    required String texture, // puree, mashed, softChunks, fingerFood
    @Default([]) List<String> preparation,
    required String portionGuide,
    @Default([]) List<String> allergens,
    @Default([]) List<String> avoidIf,
    required String sourceCitation,
  }) = _Food;

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);

  bool isEligibleForAge(int ageInMonths) {
    return ageInMonths >= minAgeMonths && ageInMonths <= maxAgeMonths;
  }
}

/// Article content
@freezed
class Article with _$Article {
  const factory Article({
    required String id,
    required String type,
    required String title,
    required String slug,
    required int minAgeMonths,
    required int maxAgeMonths,
    @Default([]) List<String> tags,
    required int durationMinutes,
    String? thumbnail,
    required int contentVersion,
    required DateTime publishedAt,
    @Default(false) bool isPremium,
    required String bodyMarkdown,
    required String sourceCitation,
    String? reviewedBy,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);

  bool isEligibleForAge(int ageInMonths) {
    return ageInMonths >= minAgeMonths && ageInMonths <= maxAgeMonths;
  }
}

/// Union type for all content
sealed class Content {
  const Content();

  bool isEligibleForAge(int ageInMonths);
}

/// Extensions for pattern matching
extension ContentExtension on Content {
  T when<T>({
    required T Function(Game) game,
    required T Function(Story) story,
    required T Function(Craft) craft,
    required T Function(Food) food,
    required T Function(Article) article,
  }) {
    if (this is Game) return game(this as Game);
    if (this is Story) return story(this as Story);
    if (this is Craft) return craft(this as Craft);
    if (this is Food) return food(this as Food);
    if (this is Article) return article(this as Article);
    throw StateError('Unknown content type');
  }
}

/// Type aliases for content lists
typedef GameList = List<Game>;
typedef StoryList = List<Story>;
typedef CraftList = List<Craft>;
typedef FoodList = List<Food>;
typedef ArticleList = List<Article>;
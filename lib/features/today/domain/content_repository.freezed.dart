// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContentBundle _$ContentBundleFromJson(Map<String, dynamic> json) {
  return _ContentBundle.fromJson(json);
}

/// @nodoc
mixin _$ContentBundle {
  int get version => throw _privateConstructorUsedError;
  List<Game> get games => throw _privateConstructorUsedError;
  List<Story> get stories => throw _privateConstructorUsedError;
  List<Craft> get crafts => throw _privateConstructorUsedError;
  List<Food> get foods => throw _privateConstructorUsedError;
  List<Article> get articles => throw _privateConstructorUsedError;
  DateTime get loadedAt => throw _privateConstructorUsedError;

  /// Serializes this ContentBundle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContentBundle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentBundleCopyWith<ContentBundle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentBundleCopyWith<$Res> {
  factory $ContentBundleCopyWith(
          ContentBundle value, $Res Function(ContentBundle) then) =
      _$ContentBundleCopyWithImpl<$Res, ContentBundle>;
  @useResult
  $Res call(
      {int version,
      List<Game> games,
      List<Story> stories,
      List<Craft> crafts,
      List<Food> foods,
      List<Article> articles,
      DateTime loadedAt});
}

/// @nodoc
class _$ContentBundleCopyWithImpl<$Res, $Val extends ContentBundle>
    implements $ContentBundleCopyWith<$Res> {
  _$ContentBundleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentBundle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? games = null,
    Object? stories = null,
    Object? crafts = null,
    Object? foods = null,
    Object? articles = null,
    Object? loadedAt = null,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      games: null == games
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>,
      stories: null == stories
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<Story>,
      crafts: null == crafts
          ? _value.crafts
          : crafts // ignore: cast_nullable_to_non_nullable
              as List<Craft>,
      foods: null == foods
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Food>,
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      loadedAt: null == loadedAt
          ? _value.loadedAt
          : loadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentBundleImplCopyWith<$Res>
    implements $ContentBundleCopyWith<$Res> {
  factory _$$ContentBundleImplCopyWith(
          _$ContentBundleImpl value, $Res Function(_$ContentBundleImpl) then) =
      __$$ContentBundleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int version,
      List<Game> games,
      List<Story> stories,
      List<Craft> crafts,
      List<Food> foods,
      List<Article> articles,
      DateTime loadedAt});
}

/// @nodoc
class __$$ContentBundleImplCopyWithImpl<$Res>
    extends _$ContentBundleCopyWithImpl<$Res, _$ContentBundleImpl>
    implements _$$ContentBundleImplCopyWith<$Res> {
  __$$ContentBundleImplCopyWithImpl(
      _$ContentBundleImpl _value, $Res Function(_$ContentBundleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentBundle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? games = null,
    Object? stories = null,
    Object? crafts = null,
    Object? foods = null,
    Object? articles = null,
    Object? loadedAt = null,
  }) {
    return _then(_$ContentBundleImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      games: null == games
          ? _value._games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>,
      stories: null == stories
          ? _value._stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<Story>,
      crafts: null == crafts
          ? _value._crafts
          : crafts // ignore: cast_nullable_to_non_nullable
              as List<Craft>,
      foods: null == foods
          ? _value._foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Food>,
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      loadedAt: null == loadedAt
          ? _value.loadedAt
          : loadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentBundleImpl implements _ContentBundle {
  const _$ContentBundleImpl(
      {required this.version,
      required final List<Game> games,
      required final List<Story> stories,
      required final List<Craft> crafts,
      required final List<Food> foods,
      required final List<Article> articles,
      required this.loadedAt})
      : _games = games,
        _stories = stories,
        _crafts = crafts,
        _foods = foods,
        _articles = articles;

  factory _$ContentBundleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentBundleImplFromJson(json);

  @override
  final int version;
  final List<Game> _games;
  @override
  List<Game> get games {
    if (_games is EqualUnmodifiableListView) return _games;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_games);
  }

  final List<Story> _stories;
  @override
  List<Story> get stories {
    if (_stories is EqualUnmodifiableListView) return _stories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stories);
  }

  final List<Craft> _crafts;
  @override
  List<Craft> get crafts {
    if (_crafts is EqualUnmodifiableListView) return _crafts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crafts);
  }

  final List<Food> _foods;
  @override
  List<Food> get foods {
    if (_foods is EqualUnmodifiableListView) return _foods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foods);
  }

  final List<Article> _articles;
  @override
  List<Article> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  final DateTime loadedAt;

  @override
  String toString() {
    return 'ContentBundle(version: $version, games: $games, stories: $stories, crafts: $crafts, foods: $foods, articles: $articles, loadedAt: $loadedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentBundleImpl &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality().equals(other._games, _games) &&
            const DeepCollectionEquality().equals(other._stories, _stories) &&
            const DeepCollectionEquality().equals(other._crafts, _crafts) &&
            const DeepCollectionEquality().equals(other._foods, _foods) &&
            const DeepCollectionEquality().equals(other._articles, _articles) &&
            (identical(other.loadedAt, loadedAt) ||
                other.loadedAt == loadedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      version,
      const DeepCollectionEquality().hash(_games),
      const DeepCollectionEquality().hash(_stories),
      const DeepCollectionEquality().hash(_crafts),
      const DeepCollectionEquality().hash(_foods),
      const DeepCollectionEquality().hash(_articles),
      loadedAt);

  /// Create a copy of ContentBundle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentBundleImplCopyWith<_$ContentBundleImpl> get copyWith =>
      __$$ContentBundleImplCopyWithImpl<_$ContentBundleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentBundleImplToJson(
      this,
    );
  }
}

abstract class _ContentBundle implements ContentBundle {
  const factory _ContentBundle(
      {required final int version,
      required final List<Game> games,
      required final List<Story> stories,
      required final List<Craft> crafts,
      required final List<Food> foods,
      required final List<Article> articles,
      required final DateTime loadedAt}) = _$ContentBundleImpl;

  factory _ContentBundle.fromJson(Map<String, dynamic> json) =
      _$ContentBundleImpl.fromJson;

  @override
  int get version;
  @override
  List<Game> get games;
  @override
  List<Story> get stories;
  @override
  List<Craft> get crafts;
  @override
  List<Food> get foods;
  @override
  List<Article> get articles;
  @override
  DateTime get loadedAt;

  /// Create a copy of ContentBundle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentBundleImplCopyWith<_$ContentBundleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContentSearchQuery _$ContentSearchQueryFromJson(Map<String, dynamic> json) {
  return _ContentSearchQuery.fromJson(json);
}

/// @nodoc
mixin _$ContentSearchQuery {
  String? get text => throw _privateConstructorUsedError;
  int? get ageInMonths => throw _privateConstructorUsedError;
  String? get contentType =>
      throw _privateConstructorUsedError; // game, story, craft
  String? get place =>
      throw _privateConstructorUsedError; // home, car, outdoor, bath
  String? get goal =>
      throw _privateConstructorUsedError; // energy, focus, language, motor, creativity, calm
  int? get maxDurationMinutes => throw _privateConstructorUsedError;
  bool? get needsNoMaterials => throw _privateConstructorUsedError;
  bool get favoritesOnly => throw _privateConstructorUsedError;
  bool get completedOnly => throw _privateConstructorUsedError;
  String? get childId => throw _privateConstructorUsedError;

  /// Serializes this ContentSearchQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContentSearchQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentSearchQueryCopyWith<ContentSearchQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentSearchQueryCopyWith<$Res> {
  factory $ContentSearchQueryCopyWith(
          ContentSearchQuery value, $Res Function(ContentSearchQuery) then) =
      _$ContentSearchQueryCopyWithImpl<$Res, ContentSearchQuery>;
  @useResult
  $Res call(
      {String? text,
      int? ageInMonths,
      String? contentType,
      String? place,
      String? goal,
      int? maxDurationMinutes,
      bool? needsNoMaterials,
      bool favoritesOnly,
      bool completedOnly,
      String? childId});
}

/// @nodoc
class _$ContentSearchQueryCopyWithImpl<$Res, $Val extends ContentSearchQuery>
    implements $ContentSearchQueryCopyWith<$Res> {
  _$ContentSearchQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentSearchQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? ageInMonths = freezed,
    Object? contentType = freezed,
    Object? place = freezed,
    Object? goal = freezed,
    Object? maxDurationMinutes = freezed,
    Object? needsNoMaterials = freezed,
    Object? favoritesOnly = null,
    Object? completedOnly = null,
    Object? childId = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      ageInMonths: freezed == ageInMonths
          ? _value.ageInMonths
          : ageInMonths // ignore: cast_nullable_to_non_nullable
              as int?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      goal: freezed == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String?,
      maxDurationMinutes: freezed == maxDurationMinutes
          ? _value.maxDurationMinutes
          : maxDurationMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      needsNoMaterials: freezed == needsNoMaterials
          ? _value.needsNoMaterials
          : needsNoMaterials // ignore: cast_nullable_to_non_nullable
              as bool?,
      favoritesOnly: null == favoritesOnly
          ? _value.favoritesOnly
          : favoritesOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      completedOnly: null == completedOnly
          ? _value.completedOnly
          : completedOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      childId: freezed == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentSearchQueryImplCopyWith<$Res>
    implements $ContentSearchQueryCopyWith<$Res> {
  factory _$$ContentSearchQueryImplCopyWith(_$ContentSearchQueryImpl value,
          $Res Function(_$ContentSearchQueryImpl) then) =
      __$$ContentSearchQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? text,
      int? ageInMonths,
      String? contentType,
      String? place,
      String? goal,
      int? maxDurationMinutes,
      bool? needsNoMaterials,
      bool favoritesOnly,
      bool completedOnly,
      String? childId});
}

/// @nodoc
class __$$ContentSearchQueryImplCopyWithImpl<$Res>
    extends _$ContentSearchQueryCopyWithImpl<$Res, _$ContentSearchQueryImpl>
    implements _$$ContentSearchQueryImplCopyWith<$Res> {
  __$$ContentSearchQueryImplCopyWithImpl(_$ContentSearchQueryImpl _value,
      $Res Function(_$ContentSearchQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentSearchQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? ageInMonths = freezed,
    Object? contentType = freezed,
    Object? place = freezed,
    Object? goal = freezed,
    Object? maxDurationMinutes = freezed,
    Object? needsNoMaterials = freezed,
    Object? favoritesOnly = null,
    Object? completedOnly = null,
    Object? childId = freezed,
  }) {
    return _then(_$ContentSearchQueryImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      ageInMonths: freezed == ageInMonths
          ? _value.ageInMonths
          : ageInMonths // ignore: cast_nullable_to_non_nullable
              as int?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      goal: freezed == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String?,
      maxDurationMinutes: freezed == maxDurationMinutes
          ? _value.maxDurationMinutes
          : maxDurationMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      needsNoMaterials: freezed == needsNoMaterials
          ? _value.needsNoMaterials
          : needsNoMaterials // ignore: cast_nullable_to_non_nullable
              as bool?,
      favoritesOnly: null == favoritesOnly
          ? _value.favoritesOnly
          : favoritesOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      completedOnly: null == completedOnly
          ? _value.completedOnly
          : completedOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      childId: freezed == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentSearchQueryImpl implements _ContentSearchQuery {
  const _$ContentSearchQueryImpl(
      {this.text,
      this.ageInMonths,
      this.contentType,
      this.place,
      this.goal,
      this.maxDurationMinutes,
      this.needsNoMaterials,
      this.favoritesOnly = false,
      this.completedOnly = false,
      this.childId});

  factory _$ContentSearchQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentSearchQueryImplFromJson(json);

  @override
  final String? text;
  @override
  final int? ageInMonths;
  @override
  final String? contentType;
// game, story, craft
  @override
  final String? place;
// home, car, outdoor, bath
  @override
  final String? goal;
// energy, focus, language, motor, creativity, calm
  @override
  final int? maxDurationMinutes;
  @override
  final bool? needsNoMaterials;
  @override
  @JsonKey()
  final bool favoritesOnly;
  @override
  @JsonKey()
  final bool completedOnly;
  @override
  final String? childId;

  @override
  String toString() {
    return 'ContentSearchQuery(text: $text, ageInMonths: $ageInMonths, contentType: $contentType, place: $place, goal: $goal, maxDurationMinutes: $maxDurationMinutes, needsNoMaterials: $needsNoMaterials, favoritesOnly: $favoritesOnly, completedOnly: $completedOnly, childId: $childId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentSearchQueryImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.ageInMonths, ageInMonths) ||
                other.ageInMonths == ageInMonths) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.goal, goal) || other.goal == goal) &&
            (identical(other.maxDurationMinutes, maxDurationMinutes) ||
                other.maxDurationMinutes == maxDurationMinutes) &&
            (identical(other.needsNoMaterials, needsNoMaterials) ||
                other.needsNoMaterials == needsNoMaterials) &&
            (identical(other.favoritesOnly, favoritesOnly) ||
                other.favoritesOnly == favoritesOnly) &&
            (identical(other.completedOnly, completedOnly) ||
                other.completedOnly == completedOnly) &&
            (identical(other.childId, childId) || other.childId == childId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      text,
      ageInMonths,
      contentType,
      place,
      goal,
      maxDurationMinutes,
      needsNoMaterials,
      favoritesOnly,
      completedOnly,
      childId);

  /// Create a copy of ContentSearchQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentSearchQueryImplCopyWith<_$ContentSearchQueryImpl> get copyWith =>
      __$$ContentSearchQueryImplCopyWithImpl<_$ContentSearchQueryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentSearchQueryImplToJson(
      this,
    );
  }
}

abstract class _ContentSearchQuery implements ContentSearchQuery {
  const factory _ContentSearchQuery(
      {final String? text,
      final int? ageInMonths,
      final String? contentType,
      final String? place,
      final String? goal,
      final int? maxDurationMinutes,
      final bool? needsNoMaterials,
      final bool favoritesOnly,
      final bool completedOnly,
      final String? childId}) = _$ContentSearchQueryImpl;

  factory _ContentSearchQuery.fromJson(Map<String, dynamic> json) =
      _$ContentSearchQueryImpl.fromJson;

  @override
  String? get text;
  @override
  int? get ageInMonths;
  @override
  String? get contentType; // game, story, craft
  @override
  String? get place; // home, car, outdoor, bath
  @override
  String? get goal; // energy, focus, language, motor, creativity, calm
  @override
  int? get maxDurationMinutes;
  @override
  bool? get needsNoMaterials;
  @override
  bool get favoritesOnly;
  @override
  bool get completedOnly;
  @override
  String? get childId;

  /// Create a copy of ContentSearchQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentSearchQueryImplCopyWith<_$ContentSearchQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContentSearchResult _$ContentSearchResultFromJson(Map<String, dynamic> json) {
  return _ContentSearchResult.fromJson(json);
}

/// @nodoc
mixin _$ContentSearchResult {
  List<Game> get games => throw _privateConstructorUsedError;
  List<Story> get stories => throw _privateConstructorUsedError;
  List<Craft> get crafts => throw _privateConstructorUsedError;
  List<Food> get foods => throw _privateConstructorUsedError;
  List<Article> get articles => throw _privateConstructorUsedError;

  /// Serializes this ContentSearchResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContentSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentSearchResultCopyWith<ContentSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentSearchResultCopyWith<$Res> {
  factory $ContentSearchResultCopyWith(
          ContentSearchResult value, $Res Function(ContentSearchResult) then) =
      _$ContentSearchResultCopyWithImpl<$Res, ContentSearchResult>;
  @useResult
  $Res call(
      {List<Game> games,
      List<Story> stories,
      List<Craft> crafts,
      List<Food> foods,
      List<Article> articles});
}

/// @nodoc
class _$ContentSearchResultCopyWithImpl<$Res, $Val extends ContentSearchResult>
    implements $ContentSearchResultCopyWith<$Res> {
  _$ContentSearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? games = null,
    Object? stories = null,
    Object? crafts = null,
    Object? foods = null,
    Object? articles = null,
  }) {
    return _then(_value.copyWith(
      games: null == games
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>,
      stories: null == stories
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<Story>,
      crafts: null == crafts
          ? _value.crafts
          : crafts // ignore: cast_nullable_to_non_nullable
              as List<Craft>,
      foods: null == foods
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Food>,
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentSearchResultImplCopyWith<$Res>
    implements $ContentSearchResultCopyWith<$Res> {
  factory _$$ContentSearchResultImplCopyWith(_$ContentSearchResultImpl value,
          $Res Function(_$ContentSearchResultImpl) then) =
      __$$ContentSearchResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Game> games,
      List<Story> stories,
      List<Craft> crafts,
      List<Food> foods,
      List<Article> articles});
}

/// @nodoc
class __$$ContentSearchResultImplCopyWithImpl<$Res>
    extends _$ContentSearchResultCopyWithImpl<$Res, _$ContentSearchResultImpl>
    implements _$$ContentSearchResultImplCopyWith<$Res> {
  __$$ContentSearchResultImplCopyWithImpl(_$ContentSearchResultImpl _value,
      $Res Function(_$ContentSearchResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? games = null,
    Object? stories = null,
    Object? crafts = null,
    Object? foods = null,
    Object? articles = null,
  }) {
    return _then(_$ContentSearchResultImpl(
      games: null == games
          ? _value._games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>,
      stories: null == stories
          ? _value._stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<Story>,
      crafts: null == crafts
          ? _value._crafts
          : crafts // ignore: cast_nullable_to_non_nullable
              as List<Craft>,
      foods: null == foods
          ? _value._foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Food>,
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentSearchResultImpl implements _ContentSearchResult {
  const _$ContentSearchResultImpl(
      {required final List<Game> games,
      required final List<Story> stories,
      required final List<Craft> crafts,
      required final List<Food> foods,
      required final List<Article> articles})
      : _games = games,
        _stories = stories,
        _crafts = crafts,
        _foods = foods,
        _articles = articles;

  factory _$ContentSearchResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentSearchResultImplFromJson(json);

  final List<Game> _games;
  @override
  List<Game> get games {
    if (_games is EqualUnmodifiableListView) return _games;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_games);
  }

  final List<Story> _stories;
  @override
  List<Story> get stories {
    if (_stories is EqualUnmodifiableListView) return _stories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stories);
  }

  final List<Craft> _crafts;
  @override
  List<Craft> get crafts {
    if (_crafts is EqualUnmodifiableListView) return _crafts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crafts);
  }

  final List<Food> _foods;
  @override
  List<Food> get foods {
    if (_foods is EqualUnmodifiableListView) return _foods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foods);
  }

  final List<Article> _articles;
  @override
  List<Article> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'ContentSearchResult(games: $games, stories: $stories, crafts: $crafts, foods: $foods, articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentSearchResultImpl &&
            const DeepCollectionEquality().equals(other._games, _games) &&
            const DeepCollectionEquality().equals(other._stories, _stories) &&
            const DeepCollectionEquality().equals(other._crafts, _crafts) &&
            const DeepCollectionEquality().equals(other._foods, _foods) &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_games),
      const DeepCollectionEquality().hash(_stories),
      const DeepCollectionEquality().hash(_crafts),
      const DeepCollectionEquality().hash(_foods),
      const DeepCollectionEquality().hash(_articles));

  /// Create a copy of ContentSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentSearchResultImplCopyWith<_$ContentSearchResultImpl> get copyWith =>
      __$$ContentSearchResultImplCopyWithImpl<_$ContentSearchResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentSearchResultImplToJson(
      this,
    );
  }
}

abstract class _ContentSearchResult implements ContentSearchResult {
  const factory _ContentSearchResult(
      {required final List<Game> games,
      required final List<Story> stories,
      required final List<Craft> crafts,
      required final List<Food> foods,
      required final List<Article> articles}) = _$ContentSearchResultImpl;

  factory _ContentSearchResult.fromJson(Map<String, dynamic> json) =
      _$ContentSearchResultImpl.fromJson;

  @override
  List<Game> get games;
  @override
  List<Story> get stories;
  @override
  List<Craft> get crafts;
  @override
  List<Food> get foods;
  @override
  List<Article> get articles;

  /// Create a copy of ContentSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentSearchResultImplCopyWith<_$ContentSearchResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

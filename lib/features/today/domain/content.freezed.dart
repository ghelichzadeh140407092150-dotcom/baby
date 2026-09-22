// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Game _$GameFromJson(Map<String, dynamic> json) {
  return _Game.fromJson(json);
}

/// @nodoc
mixin _$Game {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  int get minAgeMonths => throw _privateConstructorUsedError;
  int get maxAgeMonths => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  int get durationMinutes => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  int get contentVersion => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;
  bool get isPremium => throw _privateConstructorUsedError;
  String get goal =>
      throw _privateConstructorUsedError; // energy, focus, language, motor, creativity, calm
  String get place =>
      throw _privateConstructorUsedError; // home, car, outdoor, bath
  List<String> get materials => throw _privateConstructorUsedError;
  List<String> get steps => throw _privateConstructorUsedError;
  String get whatTheyLearn => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;

  /// Serializes this Game to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res, Game>;
  @useResult
  $Res call(
      {String id,
      String type,
      String title,
      String slug,
      int minAgeMonths,
      int maxAgeMonths,
      List<String> tags,
      int durationMinutes,
      String? thumbnail,
      int contentVersion,
      DateTime publishedAt,
      bool isPremium,
      String goal,
      String place,
      List<String> materials,
      List<String> steps,
      String whatTheyLearn,
      String? body});
}

/// @nodoc
class _$GameCopyWithImpl<$Res, $Val extends Game>
    implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? slug = null,
    Object? minAgeMonths = null,
    Object? maxAgeMonths = null,
    Object? tags = null,
    Object? durationMinutes = null,
    Object? thumbnail = freezed,
    Object? contentVersion = null,
    Object? publishedAt = null,
    Object? isPremium = null,
    Object? goal = null,
    Object? place = null,
    Object? materials = null,
    Object? steps = null,
    Object? whatTheyLearn = null,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      minAgeMonths: null == minAgeMonths
          ? _value.minAgeMonths
          : minAgeMonths // ignore: cast_nullable_to_non_nullable
              as int,
      maxAgeMonths: null == maxAgeMonths
          ? _value.maxAgeMonths
          : maxAgeMonths // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      contentVersion: null == contentVersion
          ? _value.contentVersion
          : contentVersion // ignore: cast_nullable_to_non_nullable
              as int,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      materials: null == materials
          ? _value.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<String>,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<String>,
      whatTheyLearn: null == whatTheyLearn
          ? _value.whatTheyLearn
          : whatTheyLearn // ignore: cast_nullable_to_non_nullable
              as String,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameImplCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$$GameImplCopyWith(
          _$GameImpl value, $Res Function(_$GameImpl) then) =
      __$$GameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String title,
      String slug,
      int minAgeMonths,
      int maxAgeMonths,
      List<String> tags,
      int durationMinutes,
      String? thumbnail,
      int contentVersion,
      DateTime publishedAt,
      bool isPremium,
      String goal,
      String place,
      List<String> materials,
      List<String> steps,
      String whatTheyLearn,
      String? body});
}

/// @nodoc
class __$$GameImplCopyWithImpl<$Res>
    extends _$GameCopyWithImpl<$Res, _$GameImpl>
    implements _$$GameImplCopyWith<$Res> {
  __$$GameImplCopyWithImpl(_$GameImpl _value, $Res Function(_$GameImpl) _then)
      : super(_value, _then);

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? slug = null,
    Object? minAgeMonths = null,
    Object? maxAgeMonths = null,
    Object? tags = null,
    Object? durationMinutes = null,
    Object? thumbnail = freezed,
    Object? contentVersion = null,
    Object? publishedAt = null,
    Object? isPremium = null,
    Object? goal = null,
    Object? place = null,
    Object? materials = null,
    Object? steps = null,
    Object? whatTheyLearn = null,
    Object? body = freezed,
  }) {
    return _then(_$GameImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      minAgeMonths: null == minAgeMonths
          ? _value.minAgeMonths
          : minAgeMonths // ignore: cast_nullable_to_non_nullable
              as int,
      maxAgeMonths: null == maxAgeMonths
          ? _value.maxAgeMonths
          : maxAgeMonths // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      contentVersion: null == contentVersion
          ? _value.contentVersion
          : contentVersion // ignore: cast_nullable_to_non_nullable
              as int,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      materials: null == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<String>,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<String>,
      whatTheyLearn: null == whatTheyLearn
          ? _value.whatTheyLearn
          : whatTheyLearn // ignore: cast_nullable_to_non_nullable
              as String,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameImpl implements _Game {
  const _$GameImpl(
      {required this.id,
      required this.type,
      required this.title,
      required this.slug,
      required this.minAgeMonths,
      required this.maxAgeMonths,
      final List<String> tags = const [],
      required this.durationMinutes,
      this.thumbnail,
      required this.contentVersion,
      required this.publishedAt,
      this.isPremium = false,
      required this.goal,
      required this.place,
      final List<String> materials = const [],
      final List<String> steps = const [],
      required this.whatTheyLearn,
      this.body})
      : _tags = tags,
        _materials = materials,
        _steps = steps;

  factory _$GameImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String title;
  @override
  final String slug;
  @override
  final int minAgeMonths;
  @override
  final int maxAgeMonths;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final int durationMinutes;
  @override
  final String? thumbnail;
  @override
  final int contentVersion;
  @override
  final DateTime publishedAt;
  @override
  @JsonKey()
  final bool isPremium;
  @override
  final String goal;
// energy, focus, language, motor, creativity, calm
  @override
  final String place;
// home, car, outdoor, bath
  final List<String> _materials;
// home, car, outdoor, bath
  @override
  @JsonKey()
  List<String> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  final List<String> _steps;
  @override
  @JsonKey()
  List<String> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  final String whatTheyLearn;
  @override
  final String? body;

  @override
  String toString() {
    return 'Game(id: $id, type: $type, title: $title, slug: $slug, minAgeMonths: $minAgeMonths, maxAgeMonths: $maxAgeMonths, tags: $tags, durationMinutes: $durationMinutes, thumbnail: $thumbnail, contentVersion: $contentVersion, publishedAt: $publishedAt, isPremium: $isPremium, goal: $goal, place: $place, materials: $materials, steps: $steps, whatTheyLearn: $whatTheyLearn, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.minAgeMonths, minAgeMonths) ||
                other.minAgeMonths == minAgeMonths) &&
            (identical(other.maxAgeMonths, maxAgeMonths) ||
                other.maxAgeMonths == maxAgeMonths) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.contentVersion, contentVersion) ||
                other.contentVersion == contentVersion) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium) &&
            (identical(other.goal, goal) || other.goal == goal) &&
            (identical(other.place, place) || other.place == place) &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            (identical(other.whatTheyLearn, whatTheyLearn) ||
                other.whatTheyLearn == whatTheyLearn) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      title,
      slug,
      minAgeMonths,
      maxAgeMonths,
      const DeepCollectionEquality().hash(_tags),
      durationMinutes,
      thumbnail,
      contentVersion,
      publishedAt,
      isPremium,
      goal,
      place,
      const DeepCollectionEquality().hash(_materials),
      const DeepCollectionEquality().hash(_steps),
      whatTheyLearn,
      body);

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      __$$GameImplCopyWithImpl<_$GameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameImplToJson(
      this,
    );
  }
}

abstract class _Game implements Game {
  const factory _Game(
      {required final String id,
      required final String type,
      required final String title,
      required final String slug,
      required final int minAgeMonths,
      required final int maxAgeMonths,
      final List<String> tags,
      required final int durationMinutes,
      final String? thumbnail,
      required final int contentVersion,
      required final DateTime publishedAt,
      final bool isPremium,
      required final String goal,
      required final String place,
      final List<String> materials,
      final List<String> steps,
      required final String whatTheyLearn,
      final String? body}) = _$GameImpl;

  factory _Game.fromJson(Map<String, dynamic> json) = _$GameImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get title;
  @override
  String get slug;
  @override
  int get minAgeMonths;
  @override
  int get maxAgeMonths;
  @override
  List<String> get tags;
  @override
  int get durationMinutes;
  @override
  String? get thumbnail;
  @override
  int get contentVersion;
  @override
  DateTime get publishedAt;
  @override
  bool get isPremium;
  @override
  String get goal; // energy, focus, language, motor, creativity, calm
  @override
  String get place; // home, car, outdoor, bath
  @override
  List<String> get materials;
  @override
  List<String> get steps;
  @override
  String get whatTheyLearn;
  @override
  String? get body;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Story _$StoryFromJson(Map<String, dynamic> json) {
  return _Story.fromJson(json);
}

/// @nodoc
mixin _$Story {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  int get minAgeMonths => throw _privateConstructorUsedError;
  int get maxAgeMonths => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  int get durationMinutes => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  int get contentVersion => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;
  bool get isPremium => throw _privateConstructorUsedError;
  String get audioUrl => throw _privateConstructorUsedError;
  String? get audioAsset => throw _privateConstructorUsedError;
  int get durationSeconds => throw _privateConstructorUsedError;
  String get transcript => throw _privateConstructorUsedError;
  String get category =>
      throw _privateConstructorUsedError; // bedtime, moral, folk, brandCharacter
  String get narrator => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;

  /// Serializes this Story to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Story
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoryCopyWith<Story> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryCopyWith<$Res> {
  factory $StoryCopyWith(Story value, $Res Function(Story) then) =
      _$StoryCopyWithImpl<$Res, Story>;
  @useResult
  $Res call(
      {String id,
      String type,
      String title,
      String slug,
      int minAgeMonths,
      int maxAgeMonths,
      List<String> tags,
      int durationMinutes,
      String? thumbnail,
      int contentVersion,
      DateTime publishedAt,
      bool isPremium,
      String audioUrl,
      String? audioAsset,
      int durationSeconds,
      String transcript,
      String category,
      String narrator,
      String? cover});
}

/// @nodoc
class _$StoryCopyWithImpl<$Res, $Val extends Story>
    implements $StoryCopyWith<$Res> {
  _$StoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Story
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? slug = null,
    Object? minAgeMonths = null,
    Object? maxAgeMonths = null,
    Object? tags = null,
    Object? durationMinutes = null,
    Object? thumbnail = freezed,
    Object? contentVersion = null,
    Object? publishedAt = null,
    Object? isPremium = null,
    Object? audioUrl = null,
    Object? audioAsset = freezed,
    Object? durationSeconds = null,
    Object? transcript = null,
    Object? category = null,
    Object? narrator = null,
    Object? cover = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      minAgeMonths: null == minAgeMonths
          ? _value.minAgeMonths
          : minAgeMonths // ignore: cast_nullable_to_non_nullable
              as int,
      maxAgeMonths: null == maxAgeMonths
          ? _value.maxAgeMonths
          : maxAgeMonths // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      contentVersion: null == contentVersion
          ? _value.contentVersion
          : contentVersion // ignore: cast_nullable_to_non_nullable
              as int,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      audioUrl: null == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
      audioAsset: freezed == audioAsset
          ? _value.audioAsset
          : audioAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      durationSeconds: null == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      transcript: null == transcript
          ? _value.transcript
          : transcript // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      narrator: null == narrator
          ? _value.narrator
          : narrator // ignore: cast_nullable_to_non_nullable
              as String,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoryImplCopyWith<$Res> implements $StoryCopyWith<$Res> {
  factory _$$StoryImplCopyWith(
          _$StoryImpl value, $Res Function(_$StoryImpl) then) =
      __$$StoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String title,
      String slug,
      int minAgeMonths,
      int maxAgeMonths,
      List<String> tags,
      int durationMinutes,
      String? thumbnail,
      int contentVersion,
      DateTime publishedAt,
      bool isPremium,
      String audioUrl,
      String? audioAsset,
      int durationSeconds,
      String transcript,
      String category,
      String narrator,
      String? cover});
}

/// @nodoc
class __$$StoryImplCopyWithImpl<$Res>
    extends _$StoryCopyWithImpl<$Res, _$StoryImpl>
    implements _$$StoryImplCopyWith<$Res> {
  __$$StoryImplCopyWithImpl(
      _$StoryImpl _value, $Res Function(_$StoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Story
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? slug = null,
    Object? minAgeMonths = null,
    Object? maxAgeMonths = null,
    Object? tags = null,
    Object? durationMinutes = null,
    Object? thumbnail = freezed,
    Object? contentVersion = null,
    Object? publishedAt = null,
    Object? isPremium = null,
    Object? audioUrl = null,
    Object? audioAsset = freezed,
    Object? durationSeconds = null,
    Object? transcript = null,
    Object? category = null,
    Object? narrator = null,
    Object? cover = freezed,
  }) {
    return _then(_$StoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      minAgeMonths: null == minAgeMonths
          ? _value.minAgeMonths
          : minAgeMonths // ignore: cast_nullable_to_non_nullable
              as int,
      maxAgeMonths: null == maxAgeMonths
          ? _value.maxAgeMonths
          : maxAgeMonths // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      contentVersion: null == contentVersion
          ? _value.contentVersion
          : contentVersion // ignore: cast_nullable_to_non_nullable
              as int,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      audioUrl: null == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
      audioAsset: freezed == audioAsset
          ? _value.audioAsset
          : audioAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      durationSeconds: null == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      transcript: null == transcript
          ? _value.transcript
          : transcript // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      narrator: null == narrator
          ? _value.narrator
          : narrator // ignore: cast_nullable_to_non_nullable
              as String,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoryImpl implements _Story {
  const _$StoryImpl(
      {required this.id,
      required this.type,
      required this.title,
      required this.slug,
      required this.minAgeMonths,
      required this.maxAgeMonths,
      final List<String> tags = const [],
      required this.durationMinutes,
      this.thumbnail,
      required this.contentVersion,
      required this.publishedAt,
      this.isPremium = false,
      required this.audioUrl,
      this.audioAsset,
      required this.durationSeconds,
      required this.transcript,
      required this.category,
      required this.narrator,
      this.cover})
      : _tags = tags;

  factory _$StoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoryImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String title;
  @override
  final String slug;
  @override
  final int minAgeMonths;
  @override
  final int maxAgeMonths;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final int durationMinutes;
  @override
  final String? thumbnail;
  @override
  final int contentVersion;
  @override
  final DateTime publishedAt;
  @override
  @JsonKey()
  final bool isPremium;
  @override
  final String audioUrl;
  @override
  final String? audioAsset;
  @override
  final int durationSeconds;
  @override
  final String transcript;
  @override
  final String category;
// bedtime, moral, folk, brandCharacter
  @override
  final String narrator;
  @override
  final String? cover;

  @override
  String toString() {
    return 'Story(id: $id, type: $type, title: $title, slug: $slug, minAgeMonths: $minAgeMonths, maxAgeMonths: $maxAgeMonths, tags: $tags, durationMinutes: $durationMinutes, thumbnail: $thumbnail, contentVersion: $contentVersion, publishedAt: $publishedAt, isPremium: $isPremium, audioUrl: $audioUrl, audioAsset: $audioAsset, durationSeconds: $durationSeconds, transcript: $transcript, category: $category, narrator: $narrator, cover: $cover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.minAgeMonths, minAgeMonths) ||
                other.minAgeMonths == minAgeMonths) &&
            (identical(other.maxAgeMonths, maxAgeMonths) ||
                other.maxAgeMonths == maxAgeMonths) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.contentVersion, contentVersion) ||
                other.contentVersion == contentVersion) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium) &&
            (identical(other.audioUrl, audioUrl) ||
                other.audioUrl == audioUrl) &&
            (identical(other.audioAsset, audioAsset) ||
                other.audioAsset == audioAsset) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds) &&
            (identical(other.transcript, transcript) ||
                other.transcript == transcript) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.narrator, narrator) ||
                other.narrator == narrator) &&
            (identical(other.cover, cover) || other.cover == cover));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        type,
        title,
        slug,
        minAgeMonths,
        maxAgeMonths,
        const DeepCollectionEquality().hash(_tags),
        durationMinutes,
        thumbnail,
        contentVersion,
        publishedAt,
        isPremium,
        audioUrl,
        audioAsset,
        durationSeconds,
        transcript,
        category,
        narrator,
        cover
      ]);

  /// Create a copy of Story
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoryImplCopyWith<_$StoryImpl> get copyWith =>
      __$$StoryImplCopyWithImpl<_$StoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoryImplToJson(
      this,
    );
  }
}

abstract class _Story implements Story {
  const factory _Story(
      {required final String id,
      required final String type,
      required final String title,
      required final String slug,
      required final int minAgeMonths,
      required final int maxAgeMonths,
      final List<String> tags,
      required final int durationMinutes,
      final String? thumbnail,
      required final int contentVersion,
      required final DateTime publishedAt,
      final bool isPremium,
      required final String audioUrl,
      final String? audioAsset,
      required final int durationSeconds,
      required final String transcript,
      required final String category,
      required final String narrator,
      final String? cover}) = _$StoryImpl;

  factory _Story.fromJson(Map<String, dynamic> json) = _$StoryImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get title;
  @override
  String get slug;
  @override
  int get minAgeMonths;
  @override
  int get maxAgeMonths;
  @override
  List<String> get tags;
  @override
  int get durationMinutes;
  @override
  String? get thumbnail;
  @override
  int get contentVersion;
  @override
  DateTime get publishedAt;
  @override
  bool get isPremium;
  @override
  String get audioUrl;
  @override
  String? get audioAsset;
  @override
  int get durationSeconds;
  @override
  String get transcript;
  @override
  String get category; // bedtime, moral, folk, brandCharacter
  @override
  String get narrator;
  @override
  String? get cover;

  /// Create a copy of Story
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoryImplCopyWith<_$StoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Craft _$CraftFromJson(Map<String, dynamic> json) {
  return _Craft.fromJson(json);
}

/// @nodoc
mixin _$Craft {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  int get minAgeMonths => throw _privateConstructorUsedError;
  int get maxAgeMonths => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  int get durationMinutes => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  int get contentVersion => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;
  bool get isPremium => throw _privateConstructorUsedError;
  List<String> get materials => throw _privateConstructorUsedError;
  List<CraftStep> get steps => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError; // easy, medium
  String? get resultImage => throw _privateConstructorUsedError;
  String? get relatedProductSku => throw _privateConstructorUsedError;

  /// Serializes this Craft to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Craft
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CraftCopyWith<Craft> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CraftCopyWith<$Res> {
  factory $CraftCopyWith(Craft value, $Res Function(Craft) then) =
      _$CraftCopyWithImpl<$Res, Craft>;
  @useResult
  $Res call(
      {String id,
      String type,
      String title,
      String slug,
      int minAgeMonths,
      int maxAgeMonths,
      List<String> tags,
      int durationMinutes,
      String? thumbnail,
      int contentVersion,
      DateTime publishedAt,
      bool isPremium,
      List<String> materials,
      List<CraftStep> steps,
      String difficulty,
      String? resultImage,
      String? relatedProductSku});
}

/// @nodoc
class _$CraftCopyWithImpl<$Res, $Val extends Craft>
    implements $CraftCopyWith<$Res> {
  _$CraftCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Craft
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? slug = null,
    Object? minAgeMonths = null,
    Object? maxAgeMonths = null,
    Object? tags = null,
    Object? durationMinutes = null,
    Object? thumbnail = freezed,
    Object? contentVersion = null,
    Object? publishedAt = null,
    Object? isPremium = null,
    Object? materials = null,
    Object? steps = null,
    Object? difficulty = null,
    Object? resultImage = freezed,
    Object? relatedProductSku = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      minAgeMonths: null == minAgeMonths
          ? _value.minAgeMonths
          : minAgeMonths // ignore: cast_nullable_to_non_nullable
              as int,
      maxAgeMonths: null == maxAgeMonths
          ? _value.maxAgeMonths
          : maxAgeMonths // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      contentVersion: null == contentVersion
          ? _value.contentVersion
          : contentVersion // ignore: cast_nullable_to_non_nullable
              as int,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      materials: null == materials
          ? _value.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<String>,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<CraftStep>,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      resultImage: freezed == resultImage
          ? _value.resultImage
          : resultImage // ignore: cast_nullable_to_non_nullable
              as String?,
      relatedProductSku: freezed == relatedProductSku
          ? _value.relatedProductSku
          : relatedProductSku // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CraftImplCopyWith<$Res> implements $CraftCopyWith<$Res> {
  factory _$$CraftImplCopyWith(
          _$CraftImpl value, $Res Function(_$CraftImpl) then) =
      __$$CraftImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String title,
      String slug,
      int minAgeMonths,
      int maxAgeMonths,
      List<String> tags,
      int durationMinutes,
      String? thumbnail,
      int contentVersion,
      DateTime publishedAt,
      bool isPremium,
      List<String> materials,
      List<CraftStep> steps,
      String difficulty,
      String? resultImage,
      String? relatedProductSku});
}

/// @nodoc
class __$$CraftImplCopyWithImpl<$Res>
    extends _$CraftCopyWithImpl<$Res, _$CraftImpl>
    implements _$$CraftImplCopyWith<$Res> {
  __$$CraftImplCopyWithImpl(
      _$CraftImpl _value, $Res Function(_$CraftImpl) _then)
      : super(_value, _then);

  /// Create a copy of Craft
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? slug = null,
    Object? minAgeMonths = null,
    Object? maxAgeMonths = null,
    Object? tags = null,
    Object? durationMinutes = null,
    Object? thumbnail = freezed,
    Object? contentVersion = null,
    Object? publishedAt = null,
    Object? isPremium = null,
    Object? materials = null,
    Object? steps = null,
    Object? difficulty = null,
    Object? resultImage = freezed,
    Object? relatedProductSku = freezed,
  }) {
    return _then(_$CraftImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      minAgeMonths: null == minAgeMonths
          ? _value.minAgeMonths
          : minAgeMonths // ignore: cast_nullable_to_non_nullable
              as int,
      maxAgeMonths: null == maxAgeMonths
          ? _value.maxAgeMonths
          : maxAgeMonths // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      contentVersion: null == contentVersion
          ? _value.contentVersion
          : contentVersion // ignore: cast_nullable_to_non_nullable
              as int,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      materials: null == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<String>,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<CraftStep>,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      resultImage: freezed == resultImage
          ? _value.resultImage
          : resultImage // ignore: cast_nullable_to_non_nullable
              as String?,
      relatedProductSku: freezed == relatedProductSku
          ? _value.relatedProductSku
          : relatedProductSku // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CraftImpl implements _Craft {
  const _$CraftImpl(
      {required this.id,
      required this.type,
      required this.title,
      required this.slug,
      required this.minAgeMonths,
      required this.maxAgeMonths,
      final List<String> tags = const [],
      required this.durationMinutes,
      this.thumbnail,
      required this.contentVersion,
      required this.publishedAt,
      this.isPremium = false,
      final List<String> materials = const [],
      final List<CraftStep> steps = const [],
      required this.difficulty,
      this.resultImage,
      this.relatedProductSku})
      : _tags = tags,
        _materials = materials,
        _steps = steps;

  factory _$CraftImpl.fromJson(Map<String, dynamic> json) =>
      _$$CraftImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String title;
  @override
  final String slug;
  @override
  final int minAgeMonths;
  @override
  final int maxAgeMonths;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final int durationMinutes;
  @override
  final String? thumbnail;
  @override
  final int contentVersion;
  @override
  final DateTime publishedAt;
  @override
  @JsonKey()
  final bool isPremium;
  final List<String> _materials;
  @override
  @JsonKey()
  List<String> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  final List<CraftStep> _steps;
  @override
  @JsonKey()
  List<CraftStep> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  final String difficulty;
// easy, medium
  @override
  final String? resultImage;
  @override
  final String? relatedProductSku;

  @override
  String toString() {
    return 'Craft(id: $id, type: $type, title: $title, slug: $slug, minAgeMonths: $minAgeMonths, maxAgeMonths: $maxAgeMonths, tags: $tags, durationMinutes: $durationMinutes, thumbnail: $thumbnail, contentVersion: $contentVersion, publishedAt: $publishedAt, isPremium: $isPremium, materials: $materials, steps: $steps, difficulty: $difficulty, resultImage: $resultImage, relatedProductSku: $relatedProductSku)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CraftImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.minAgeMonths, minAgeMonths) ||
                other.minAgeMonths == minAgeMonths) &&
            (identical(other.maxAgeMonths, maxAgeMonths) ||
                other.maxAgeMonths == maxAgeMonths) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.contentVersion, contentVersion) ||
                other.contentVersion == contentVersion) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium) &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.resultImage, resultImage) ||
                other.resultImage == resultImage) &&
            (identical(other.relatedProductSku, relatedProductSku) ||
                other.relatedProductSku == relatedProductSku));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      title,
      slug,
      minAgeMonths,
      maxAgeMonths,
      const DeepCollectionEquality().hash(_tags),
      durationMinutes,
      thumbnail,
      contentVersion,
      publishedAt,
      isPremium,
      const DeepCollectionEquality().hash(_materials),
      const DeepCollectionEquality().hash(_steps),
      difficulty,
      resultImage,
      relatedProductSku);

  /// Create a copy of Craft
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CraftImplCopyWith<_$CraftImpl> get copyWith =>
      __$$CraftImplCopyWithImpl<_$CraftImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CraftImplToJson(
      this,
    );
  }
}

abstract class _Craft implements Craft {
  const factory _Craft(
      {required final String id,
      required final String type,
      required final String title,
      required final String slug,
      required final int minAgeMonths,
      required final int maxAgeMonths,
      final List<String> tags,
      required final int durationMinutes,
      final String? thumbnail,
      required final int contentVersion,
      required final DateTime publishedAt,
      final bool isPremium,
      final List<String> materials,
      final List<CraftStep> steps,
      required final String difficulty,
      final String? resultImage,
      final String? relatedProductSku}) = _$CraftImpl;

  factory _Craft.fromJson(Map<String, dynamic> json) = _$CraftImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get title;
  @override
  String get slug;
  @override
  int get minAgeMonths;
  @override
  int get maxAgeMonths;
  @override
  List<String> get tags;
  @override
  int get durationMinutes;
  @override
  String? get thumbnail;
  @override
  int get contentVersion;
  @override
  DateTime get publishedAt;
  @override
  bool get isPremium;
  @override
  List<String> get materials;
  @override
  List<CraftStep> get steps;
  @override
  String get difficulty; // easy, medium
  @override
  String? get resultImage;
  @override
  String? get relatedProductSku;

  /// Create a copy of Craft
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CraftImplCopyWith<_$CraftImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CraftStep _$CraftStepFromJson(Map<String, dynamic> json) {
  return _CraftStep.fromJson(json);
}

/// @nodoc
mixin _$CraftStep {
  String get text => throw _privateConstructorUsedError;
  String? get imageAsset => throw _privateConstructorUsedError;

  /// Serializes this CraftStep to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CraftStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CraftStepCopyWith<CraftStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CraftStepCopyWith<$Res> {
  factory $CraftStepCopyWith(CraftStep value, $Res Function(CraftStep) then) =
      _$CraftStepCopyWithImpl<$Res, CraftStep>;
  @useResult
  $Res call({String text, String? imageAsset});
}

/// @nodoc
class _$CraftStepCopyWithImpl<$Res, $Val extends CraftStep>
    implements $CraftStepCopyWith<$Res> {
  _$CraftStepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CraftStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? imageAsset = freezed,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      imageAsset: freezed == imageAsset
          ? _value.imageAsset
          : imageAsset // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CraftStepImplCopyWith<$Res>
    implements $CraftStepCopyWith<$Res> {
  factory _$$CraftStepImplCopyWith(
          _$CraftStepImpl value, $Res Function(_$CraftStepImpl) then) =
      __$$CraftStepImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String? imageAsset});
}

/// @nodoc
class __$$CraftStepImplCopyWithImpl<$Res>
    extends _$CraftStepCopyWithImpl<$Res, _$CraftStepImpl>
    implements _$$CraftStepImplCopyWith<$Res> {
  __$$CraftStepImplCopyWithImpl(
      _$CraftStepImpl _value, $Res Function(_$CraftStepImpl) _then)
      : super(_value, _then);

  /// Create a copy of CraftStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? imageAsset = freezed,
  }) {
    return _then(_$CraftStepImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      imageAsset: freezed == imageAsset
          ? _value.imageAsset
          : imageAsset // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CraftStepImpl implements _CraftStep {
  const _$CraftStepImpl({required this.text, this.imageAsset});

  factory _$CraftStepImpl.fromJson(Map<String, dynamic> json) =>
      _$$CraftStepImplFromJson(json);

  @override
  final String text;
  @override
  final String? imageAsset;

  @override
  String toString() {
    return 'CraftStep(text: $text, imageAsset: $imageAsset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CraftStepImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.imageAsset, imageAsset) ||
                other.imageAsset == imageAsset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, imageAsset);

  /// Create a copy of CraftStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CraftStepImplCopyWith<_$CraftStepImpl> get copyWith =>
      __$$CraftStepImplCopyWithImpl<_$CraftStepImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CraftStepImplToJson(
      this,
    );
  }
}

abstract class _CraftStep implements CraftStep {
  const factory _CraftStep(
      {required final String text, final String? imageAsset}) = _$CraftStepImpl;

  factory _CraftStep.fromJson(Map<String, dynamic> json) =
      _$CraftStepImpl.fromJson;

  @override
  String get text;
  @override
  String? get imageAsset;

  /// Create a copy of CraftStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CraftStepImplCopyWith<_$CraftStepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Food _$FoodFromJson(Map<String, dynamic> json) {
  return _Food.fromJson(json);
}

/// @nodoc
mixin _$Food {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  int get minAgeMonths => throw _privateConstructorUsedError;
  int get maxAgeMonths => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  int get durationMinutes => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  int get contentVersion => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;
  bool get isPremium => throw _privateConstructorUsedError;
  int get allowedFromMonths => throw _privateConstructorUsedError;
  String get texture =>
      throw _privateConstructorUsedError; // puree, mashed, softChunks, fingerFood
  List<String> get preparation => throw _privateConstructorUsedError;
  String get portionGuide => throw _privateConstructorUsedError;
  List<String> get allergens => throw _privateConstructorUsedError;
  List<String> get avoidIf => throw _privateConstructorUsedError;
  String get sourceCitation => throw _privateConstructorUsedError;

  /// Serializes this Food to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Food
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoodCopyWith<Food> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodCopyWith<$Res> {
  factory $FoodCopyWith(Food value, $Res Function(Food) then) =
      _$FoodCopyWithImpl<$Res, Food>;
  @useResult
  $Res call(
      {String id,
      String type,
      String title,
      String slug,
      int minAgeMonths,
      int maxAgeMonths,
      List<String> tags,
      int durationMinutes,
      String? thumbnail,
      int contentVersion,
      DateTime publishedAt,
      bool isPremium,
      int allowedFromMonths,
      String texture,
      List<String> preparation,
      String portionGuide,
      List<String> allergens,
      List<String> avoidIf,
      String sourceCitation});
}

/// @nodoc
class _$FoodCopyWithImpl<$Res, $Val extends Food>
    implements $FoodCopyWith<$Res> {
  _$FoodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Food
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? slug = null,
    Object? minAgeMonths = null,
    Object? maxAgeMonths = null,
    Object? tags = null,
    Object? durationMinutes = null,
    Object? thumbnail = freezed,
    Object? contentVersion = null,
    Object? publishedAt = null,
    Object? isPremium = null,
    Object? allowedFromMonths = null,
    Object? texture = null,
    Object? preparation = null,
    Object? portionGuide = null,
    Object? allergens = null,
    Object? avoidIf = null,
    Object? sourceCitation = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      minAgeMonths: null == minAgeMonths
          ? _value.minAgeMonths
          : minAgeMonths // ignore: cast_nullable_to_non_nullable
              as int,
      maxAgeMonths: null == maxAgeMonths
          ? _value.maxAgeMonths
          : maxAgeMonths // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      contentVersion: null == contentVersion
          ? _value.contentVersion
          : contentVersion // ignore: cast_nullable_to_non_nullable
              as int,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      allowedFromMonths: null == allowedFromMonths
          ? _value.allowedFromMonths
          : allowedFromMonths // ignore: cast_nullable_to_non_nullable
              as int,
      texture: null == texture
          ? _value.texture
          : texture // ignore: cast_nullable_to_non_nullable
              as String,
      preparation: null == preparation
          ? _value.preparation
          : preparation // ignore: cast_nullable_to_non_nullable
              as List<String>,
      portionGuide: null == portionGuide
          ? _value.portionGuide
          : portionGuide // ignore: cast_nullable_to_non_nullable
              as String,
      allergens: null == allergens
          ? _value.allergens
          : allergens // ignore: cast_nullable_to_non_nullable
              as List<String>,
      avoidIf: null == avoidIf
          ? _value.avoidIf
          : avoidIf // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sourceCitation: null == sourceCitation
          ? _value.sourceCitation
          : sourceCitation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoodImplCopyWith<$Res> implements $FoodCopyWith<$Res> {
  factory _$$FoodImplCopyWith(
          _$FoodImpl value, $Res Function(_$FoodImpl) then) =
      __$$FoodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String title,
      String slug,
      int minAgeMonths,
      int maxAgeMonths,
      List<String> tags,
      int durationMinutes,
      String? thumbnail,
      int contentVersion,
      DateTime publishedAt,
      bool isPremium,
      int allowedFromMonths,
      String texture,
      List<String> preparation,
      String portionGuide,
      List<String> allergens,
      List<String> avoidIf,
      String sourceCitation});
}

/// @nodoc
class __$$FoodImplCopyWithImpl<$Res>
    extends _$FoodCopyWithImpl<$Res, _$FoodImpl>
    implements _$$FoodImplCopyWith<$Res> {
  __$$FoodImplCopyWithImpl(_$FoodImpl _value, $Res Function(_$FoodImpl) _then)
      : super(_value, _then);

  /// Create a copy of Food
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? slug = null,
    Object? minAgeMonths = null,
    Object? maxAgeMonths = null,
    Object? tags = null,
    Object? durationMinutes = null,
    Object? thumbnail = freezed,
    Object? contentVersion = null,
    Object? publishedAt = null,
    Object? isPremium = null,
    Object? allowedFromMonths = null,
    Object? texture = null,
    Object? preparation = null,
    Object? portionGuide = null,
    Object? allergens = null,
    Object? avoidIf = null,
    Object? sourceCitation = null,
  }) {
    return _then(_$FoodImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      minAgeMonths: null == minAgeMonths
          ? _value.minAgeMonths
          : minAgeMonths // ignore: cast_nullable_to_non_nullable
              as int,
      maxAgeMonths: null == maxAgeMonths
          ? _value.maxAgeMonths
          : maxAgeMonths // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      contentVersion: null == contentVersion
          ? _value.contentVersion
          : contentVersion // ignore: cast_nullable_to_non_nullable
              as int,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      allowedFromMonths: null == allowedFromMonths
          ? _value.allowedFromMonths
          : allowedFromMonths // ignore: cast_nullable_to_non_nullable
              as int,
      texture: null == texture
          ? _value.texture
          : texture // ignore: cast_nullable_to_non_nullable
              as String,
      preparation: null == preparation
          ? _value._preparation
          : preparation // ignore: cast_nullable_to_non_nullable
              as List<String>,
      portionGuide: null == portionGuide
          ? _value.portionGuide
          : portionGuide // ignore: cast_nullable_to_non_nullable
              as String,
      allergens: null == allergens
          ? _value._allergens
          : allergens // ignore: cast_nullable_to_non_nullable
              as List<String>,
      avoidIf: null == avoidIf
          ? _value._avoidIf
          : avoidIf // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sourceCitation: null == sourceCitation
          ? _value.sourceCitation
          : sourceCitation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoodImpl implements _Food {
  const _$FoodImpl(
      {required this.id,
      required this.type,
      required this.title,
      required this.slug,
      required this.minAgeMonths,
      required this.maxAgeMonths,
      final List<String> tags = const [],
      required this.durationMinutes,
      this.thumbnail,
      required this.contentVersion,
      required this.publishedAt,
      this.isPremium = false,
      required this.allowedFromMonths,
      required this.texture,
      final List<String> preparation = const [],
      required this.portionGuide,
      final List<String> allergens = const [],
      final List<String> avoidIf = const [],
      required this.sourceCitation})
      : _tags = tags,
        _preparation = preparation,
        _allergens = allergens,
        _avoidIf = avoidIf;

  factory _$FoodImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoodImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String title;
  @override
  final String slug;
  @override
  final int minAgeMonths;
  @override
  final int maxAgeMonths;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final int durationMinutes;
  @override
  final String? thumbnail;
  @override
  final int contentVersion;
  @override
  final DateTime publishedAt;
  @override
  @JsonKey()
  final bool isPremium;
  @override
  final int allowedFromMonths;
  @override
  final String texture;
// puree, mashed, softChunks, fingerFood
  final List<String> _preparation;
// puree, mashed, softChunks, fingerFood
  @override
  @JsonKey()
  List<String> get preparation {
    if (_preparation is EqualUnmodifiableListView) return _preparation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preparation);
  }

  @override
  final String portionGuide;
  final List<String> _allergens;
  @override
  @JsonKey()
  List<String> get allergens {
    if (_allergens is EqualUnmodifiableListView) return _allergens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allergens);
  }

  final List<String> _avoidIf;
  @override
  @JsonKey()
  List<String> get avoidIf {
    if (_avoidIf is EqualUnmodifiableListView) return _avoidIf;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_avoidIf);
  }

  @override
  final String sourceCitation;

  @override
  String toString() {
    return 'Food(id: $id, type: $type, title: $title, slug: $slug, minAgeMonths: $minAgeMonths, maxAgeMonths: $maxAgeMonths, tags: $tags, durationMinutes: $durationMinutes, thumbnail: $thumbnail, contentVersion: $contentVersion, publishedAt: $publishedAt, isPremium: $isPremium, allowedFromMonths: $allowedFromMonths, texture: $texture, preparation: $preparation, portionGuide: $portionGuide, allergens: $allergens, avoidIf: $avoidIf, sourceCitation: $sourceCitation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.minAgeMonths, minAgeMonths) ||
                other.minAgeMonths == minAgeMonths) &&
            (identical(other.maxAgeMonths, maxAgeMonths) ||
                other.maxAgeMonths == maxAgeMonths) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.contentVersion, contentVersion) ||
                other.contentVersion == contentVersion) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium) &&
            (identical(other.allowedFromMonths, allowedFromMonths) ||
                other.allowedFromMonths == allowedFromMonths) &&
            (identical(other.texture, texture) || other.texture == texture) &&
            const DeepCollectionEquality()
                .equals(other._preparation, _preparation) &&
            (identical(other.portionGuide, portionGuide) ||
                other.portionGuide == portionGuide) &&
            const DeepCollectionEquality()
                .equals(other._allergens, _allergens) &&
            const DeepCollectionEquality().equals(other._avoidIf, _avoidIf) &&
            (identical(other.sourceCitation, sourceCitation) ||
                other.sourceCitation == sourceCitation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        type,
        title,
        slug,
        minAgeMonths,
        maxAgeMonths,
        const DeepCollectionEquality().hash(_tags),
        durationMinutes,
        thumbnail,
        contentVersion,
        publishedAt,
        isPremium,
        allowedFromMonths,
        texture,
        const DeepCollectionEquality().hash(_preparation),
        portionGuide,
        const DeepCollectionEquality().hash(_allergens),
        const DeepCollectionEquality().hash(_avoidIf),
        sourceCitation
      ]);

  /// Create a copy of Food
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodImplCopyWith<_$FoodImpl> get copyWith =>
      __$$FoodImplCopyWithImpl<_$FoodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FoodImplToJson(
      this,
    );
  }
}

abstract class _Food implements Food {
  const factory _Food(
      {required final String id,
      required final String type,
      required final String title,
      required final String slug,
      required final int minAgeMonths,
      required final int maxAgeMonths,
      final List<String> tags,
      required final int durationMinutes,
      final String? thumbnail,
      required final int contentVersion,
      required final DateTime publishedAt,
      final bool isPremium,
      required final int allowedFromMonths,
      required final String texture,
      final List<String> preparation,
      required final String portionGuide,
      final List<String> allergens,
      final List<String> avoidIf,
      required final String sourceCitation}) = _$FoodImpl;

  factory _Food.fromJson(Map<String, dynamic> json) = _$FoodImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get title;
  @override
  String get slug;
  @override
  int get minAgeMonths;
  @override
  int get maxAgeMonths;
  @override
  List<String> get tags;
  @override
  int get durationMinutes;
  @override
  String? get thumbnail;
  @override
  int get contentVersion;
  @override
  DateTime get publishedAt;
  @override
  bool get isPremium;
  @override
  int get allowedFromMonths;
  @override
  String get texture; // puree, mashed, softChunks, fingerFood
  @override
  List<String> get preparation;
  @override
  String get portionGuide;
  @override
  List<String> get allergens;
  @override
  List<String> get avoidIf;
  @override
  String get sourceCitation;

  /// Create a copy of Food
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodImplCopyWith<_$FoodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return _Article.fromJson(json);
}

/// @nodoc
mixin _$Article {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  int get minAgeMonths => throw _privateConstructorUsedError;
  int get maxAgeMonths => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  int get durationMinutes => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  int get contentVersion => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;
  bool get isPremium => throw _privateConstructorUsedError;
  String get bodyMarkdown => throw _privateConstructorUsedError;
  String get sourceCitation => throw _privateConstructorUsedError;
  String? get reviewedBy => throw _privateConstructorUsedError;

  /// Serializes this Article to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res, Article>;
  @useResult
  $Res call(
      {String id,
      String type,
      String title,
      String slug,
      int minAgeMonths,
      int maxAgeMonths,
      List<String> tags,
      int durationMinutes,
      String? thumbnail,
      int contentVersion,
      DateTime publishedAt,
      bool isPremium,
      String bodyMarkdown,
      String sourceCitation,
      String? reviewedBy});
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res, $Val extends Article>
    implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? slug = null,
    Object? minAgeMonths = null,
    Object? maxAgeMonths = null,
    Object? tags = null,
    Object? durationMinutes = null,
    Object? thumbnail = freezed,
    Object? contentVersion = null,
    Object? publishedAt = null,
    Object? isPremium = null,
    Object? bodyMarkdown = null,
    Object? sourceCitation = null,
    Object? reviewedBy = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      minAgeMonths: null == minAgeMonths
          ? _value.minAgeMonths
          : minAgeMonths // ignore: cast_nullable_to_non_nullable
              as int,
      maxAgeMonths: null == maxAgeMonths
          ? _value.maxAgeMonths
          : maxAgeMonths // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      contentVersion: null == contentVersion
          ? _value.contentVersion
          : contentVersion // ignore: cast_nullable_to_non_nullable
              as int,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      bodyMarkdown: null == bodyMarkdown
          ? _value.bodyMarkdown
          : bodyMarkdown // ignore: cast_nullable_to_non_nullable
              as String,
      sourceCitation: null == sourceCitation
          ? _value.sourceCitation
          : sourceCitation // ignore: cast_nullable_to_non_nullable
              as String,
      reviewedBy: freezed == reviewedBy
          ? _value.reviewedBy
          : reviewedBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleImplCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$$ArticleImplCopyWith(
          _$ArticleImpl value, $Res Function(_$ArticleImpl) then) =
      __$$ArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String title,
      String slug,
      int minAgeMonths,
      int maxAgeMonths,
      List<String> tags,
      int durationMinutes,
      String? thumbnail,
      int contentVersion,
      DateTime publishedAt,
      bool isPremium,
      String bodyMarkdown,
      String sourceCitation,
      String? reviewedBy});
}

/// @nodoc
class __$$ArticleImplCopyWithImpl<$Res>
    extends _$ArticleCopyWithImpl<$Res, _$ArticleImpl>
    implements _$$ArticleImplCopyWith<$Res> {
  __$$ArticleImplCopyWithImpl(
      _$ArticleImpl _value, $Res Function(_$ArticleImpl) _then)
      : super(_value, _then);

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? slug = null,
    Object? minAgeMonths = null,
    Object? maxAgeMonths = null,
    Object? tags = null,
    Object? durationMinutes = null,
    Object? thumbnail = freezed,
    Object? contentVersion = null,
    Object? publishedAt = null,
    Object? isPremium = null,
    Object? bodyMarkdown = null,
    Object? sourceCitation = null,
    Object? reviewedBy = freezed,
  }) {
    return _then(_$ArticleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      minAgeMonths: null == minAgeMonths
          ? _value.minAgeMonths
          : minAgeMonths // ignore: cast_nullable_to_non_nullable
              as int,
      maxAgeMonths: null == maxAgeMonths
          ? _value.maxAgeMonths
          : maxAgeMonths // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      contentVersion: null == contentVersion
          ? _value.contentVersion
          : contentVersion // ignore: cast_nullable_to_non_nullable
              as int,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      bodyMarkdown: null == bodyMarkdown
          ? _value.bodyMarkdown
          : bodyMarkdown // ignore: cast_nullable_to_non_nullable
              as String,
      sourceCitation: null == sourceCitation
          ? _value.sourceCitation
          : sourceCitation // ignore: cast_nullable_to_non_nullable
              as String,
      reviewedBy: freezed == reviewedBy
          ? _value.reviewedBy
          : reviewedBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleImpl implements _Article {
  const _$ArticleImpl(
      {required this.id,
      required this.type,
      required this.title,
      required this.slug,
      required this.minAgeMonths,
      required this.maxAgeMonths,
      final List<String> tags = const [],
      required this.durationMinutes,
      this.thumbnail,
      required this.contentVersion,
      required this.publishedAt,
      this.isPremium = false,
      required this.bodyMarkdown,
      required this.sourceCitation,
      this.reviewedBy})
      : _tags = tags;

  factory _$ArticleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String title;
  @override
  final String slug;
  @override
  final int minAgeMonths;
  @override
  final int maxAgeMonths;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final int durationMinutes;
  @override
  final String? thumbnail;
  @override
  final int contentVersion;
  @override
  final DateTime publishedAt;
  @override
  @JsonKey()
  final bool isPremium;
  @override
  final String bodyMarkdown;
  @override
  final String sourceCitation;
  @override
  final String? reviewedBy;

  @override
  String toString() {
    return 'Article(id: $id, type: $type, title: $title, slug: $slug, minAgeMonths: $minAgeMonths, maxAgeMonths: $maxAgeMonths, tags: $tags, durationMinutes: $durationMinutes, thumbnail: $thumbnail, contentVersion: $contentVersion, publishedAt: $publishedAt, isPremium: $isPremium, bodyMarkdown: $bodyMarkdown, sourceCitation: $sourceCitation, reviewedBy: $reviewedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.minAgeMonths, minAgeMonths) ||
                other.minAgeMonths == minAgeMonths) &&
            (identical(other.maxAgeMonths, maxAgeMonths) ||
                other.maxAgeMonths == maxAgeMonths) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.contentVersion, contentVersion) ||
                other.contentVersion == contentVersion) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium) &&
            (identical(other.bodyMarkdown, bodyMarkdown) ||
                other.bodyMarkdown == bodyMarkdown) &&
            (identical(other.sourceCitation, sourceCitation) ||
                other.sourceCitation == sourceCitation) &&
            (identical(other.reviewedBy, reviewedBy) ||
                other.reviewedBy == reviewedBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      title,
      slug,
      minAgeMonths,
      maxAgeMonths,
      const DeepCollectionEquality().hash(_tags),
      durationMinutes,
      thumbnail,
      contentVersion,
      publishedAt,
      isPremium,
      bodyMarkdown,
      sourceCitation,
      reviewedBy);

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      __$$ArticleImplCopyWithImpl<_$ArticleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleImplToJson(
      this,
    );
  }
}

abstract class _Article implements Article {
  const factory _Article(
      {required final String id,
      required final String type,
      required final String title,
      required final String slug,
      required final int minAgeMonths,
      required final int maxAgeMonths,
      final List<String> tags,
      required final int durationMinutes,
      final String? thumbnail,
      required final int contentVersion,
      required final DateTime publishedAt,
      final bool isPremium,
      required final String bodyMarkdown,
      required final String sourceCitation,
      final String? reviewedBy}) = _$ArticleImpl;

  factory _Article.fromJson(Map<String, dynamic> json) = _$ArticleImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get title;
  @override
  String get slug;
  @override
  int get minAgeMonths;
  @override
  int get maxAgeMonths;
  @override
  List<String> get tags;
  @override
  int get durationMinutes;
  @override
  String? get thumbnail;
  @override
  int get contentVersion;
  @override
  DateTime get publishedAt;
  @override
  bool get isPremium;
  @override
  String get bodyMarkdown;
  @override
  String get sourceCitation;
  @override
  String? get reviewedBy;

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

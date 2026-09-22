// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_pick.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DailyPickResult _$DailyPickResultFromJson(Map<String, dynamic> json) {
  return _DailyPickResult.fromJson(json);
}

/// @nodoc
mixin _$DailyPickResult {
  Game? get game => throw _privateConstructorUsedError;
  Story? get story => throw _privateConstructorUsedError;
  Craft? get craft => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  int get ageInDays => throw _privateConstructorUsedError;
  String get childId => throw _privateConstructorUsedError;

  /// Serializes this DailyPickResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyPickResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyPickResultCopyWith<DailyPickResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyPickResultCopyWith<$Res> {
  factory $DailyPickResultCopyWith(
          DailyPickResult value, $Res Function(DailyPickResult) then) =
      _$DailyPickResultCopyWithImpl<$Res, DailyPickResult>;
  @useResult
  $Res call(
      {Game? game,
      Story? story,
      Craft? craft,
      DateTime date,
      int ageInDays,
      String childId});

  $GameCopyWith<$Res>? get game;
  $StoryCopyWith<$Res>? get story;
  $CraftCopyWith<$Res>? get craft;
}

/// @nodoc
class _$DailyPickResultCopyWithImpl<$Res, $Val extends DailyPickResult>
    implements $DailyPickResultCopyWith<$Res> {
  _$DailyPickResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyPickResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = freezed,
    Object? story = freezed,
    Object? craft = freezed,
    Object? date = null,
    Object? ageInDays = null,
    Object? childId = null,
  }) {
    return _then(_value.copyWith(
      game: freezed == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game?,
      story: freezed == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as Story?,
      craft: freezed == craft
          ? _value.craft
          : craft // ignore: cast_nullable_to_non_nullable
              as Craft?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ageInDays: null == ageInDays
          ? _value.ageInDays
          : ageInDays // ignore: cast_nullable_to_non_nullable
              as int,
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of DailyPickResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameCopyWith<$Res>? get game {
    if (_value.game == null) {
      return null;
    }

    return $GameCopyWith<$Res>(_value.game!, (value) {
      return _then(_value.copyWith(game: value) as $Val);
    });
  }

  /// Create a copy of DailyPickResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoryCopyWith<$Res>? get story {
    if (_value.story == null) {
      return null;
    }

    return $StoryCopyWith<$Res>(_value.story!, (value) {
      return _then(_value.copyWith(story: value) as $Val);
    });
  }

  /// Create a copy of DailyPickResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CraftCopyWith<$Res>? get craft {
    if (_value.craft == null) {
      return null;
    }

    return $CraftCopyWith<$Res>(_value.craft!, (value) {
      return _then(_value.copyWith(craft: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DailyPickResultImplCopyWith<$Res>
    implements $DailyPickResultCopyWith<$Res> {
  factory _$$DailyPickResultImplCopyWith(_$DailyPickResultImpl value,
          $Res Function(_$DailyPickResultImpl) then) =
      __$$DailyPickResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Game? game,
      Story? story,
      Craft? craft,
      DateTime date,
      int ageInDays,
      String childId});

  @override
  $GameCopyWith<$Res>? get game;
  @override
  $StoryCopyWith<$Res>? get story;
  @override
  $CraftCopyWith<$Res>? get craft;
}

/// @nodoc
class __$$DailyPickResultImplCopyWithImpl<$Res>
    extends _$DailyPickResultCopyWithImpl<$Res, _$DailyPickResultImpl>
    implements _$$DailyPickResultImplCopyWith<$Res> {
  __$$DailyPickResultImplCopyWithImpl(
      _$DailyPickResultImpl _value, $Res Function(_$DailyPickResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyPickResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = freezed,
    Object? story = freezed,
    Object? craft = freezed,
    Object? date = null,
    Object? ageInDays = null,
    Object? childId = null,
  }) {
    return _then(_$DailyPickResultImpl(
      game: freezed == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game?,
      story: freezed == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as Story?,
      craft: freezed == craft
          ? _value.craft
          : craft // ignore: cast_nullable_to_non_nullable
              as Craft?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ageInDays: null == ageInDays
          ? _value.ageInDays
          : ageInDays // ignore: cast_nullable_to_non_nullable
              as int,
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyPickResultImpl implements _DailyPickResult {
  const _$DailyPickResultImpl(
      {required this.game,
      required this.story,
      required this.craft,
      required this.date,
      required this.ageInDays,
      required this.childId});

  factory _$DailyPickResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyPickResultImplFromJson(json);

  @override
  final Game? game;
  @override
  final Story? story;
  @override
  final Craft? craft;
  @override
  final DateTime date;
  @override
  final int ageInDays;
  @override
  final String childId;

  @override
  String toString() {
    return 'DailyPickResult(game: $game, story: $story, craft: $craft, date: $date, ageInDays: $ageInDays, childId: $childId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyPickResultImpl &&
            (identical(other.game, game) || other.game == game) &&
            (identical(other.story, story) || other.story == story) &&
            (identical(other.craft, craft) || other.craft == craft) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.ageInDays, ageInDays) ||
                other.ageInDays == ageInDays) &&
            (identical(other.childId, childId) || other.childId == childId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, game, story, craft, date, ageInDays, childId);

  /// Create a copy of DailyPickResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyPickResultImplCopyWith<_$DailyPickResultImpl> get copyWith =>
      __$$DailyPickResultImplCopyWithImpl<_$DailyPickResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyPickResultImplToJson(
      this,
    );
  }
}

abstract class _DailyPickResult implements DailyPickResult {
  const factory _DailyPickResult(
      {required final Game? game,
      required final Story? story,
      required final Craft? craft,
      required final DateTime date,
      required final int ageInDays,
      required final String childId}) = _$DailyPickResultImpl;

  factory _DailyPickResult.fromJson(Map<String, dynamic> json) =
      _$DailyPickResultImpl.fromJson;

  @override
  Game? get game;
  @override
  Story? get story;
  @override
  Craft? get craft;
  @override
  DateTime get date;
  @override
  int get ageInDays;
  @override
  String get childId;

  /// Create a copy of DailyPickResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyPickResultImplCopyWith<_$DailyPickResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

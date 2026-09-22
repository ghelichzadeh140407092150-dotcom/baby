// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'today_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodayState _$TodayStateFromJson(Map<String, dynamic> json) {
  return _TodayState.fromJson(json);
}

/// @nodoc
mixin _$TodayState {
  Game? get game => throw _privateConstructorUsedError;
  Story? get story => throw _privateConstructorUsedError;
  Craft? get craft => throw _privateConstructorUsedError;
  String? get vaccineReminder => throw _privateConstructorUsedError;
  String? get measurementReminder => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  int get childAgeInDays => throw _privateConstructorUsedError;
  int get childAgeInMonths => throw _privateConstructorUsedError;
  String get childName => throw _privateConstructorUsedError;

  /// Serializes this TodayState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodayState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodayStateCopyWith<TodayState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodayStateCopyWith<$Res> {
  factory $TodayStateCopyWith(
          TodayState value, $Res Function(TodayState) then) =
      _$TodayStateCopyWithImpl<$Res, TodayState>;
  @useResult
  $Res call(
      {Game? game,
      Story? story,
      Craft? craft,
      String? vaccineReminder,
      String? measurementReminder,
      bool isLoading,
      String? error,
      DateTime date,
      int childAgeInDays,
      int childAgeInMonths,
      String childName});

  $GameCopyWith<$Res>? get game;
  $StoryCopyWith<$Res>? get story;
  $CraftCopyWith<$Res>? get craft;
}

/// @nodoc
class _$TodayStateCopyWithImpl<$Res, $Val extends TodayState>
    implements $TodayStateCopyWith<$Res> {
  _$TodayStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodayState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = freezed,
    Object? story = freezed,
    Object? craft = freezed,
    Object? vaccineReminder = freezed,
    Object? measurementReminder = freezed,
    Object? isLoading = null,
    Object? error = freezed,
    Object? date = null,
    Object? childAgeInDays = null,
    Object? childAgeInMonths = null,
    Object? childName = null,
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
      vaccineReminder: freezed == vaccineReminder
          ? _value.vaccineReminder
          : vaccineReminder // ignore: cast_nullable_to_non_nullable
              as String?,
      measurementReminder: freezed == measurementReminder
          ? _value.measurementReminder
          : measurementReminder // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      childAgeInDays: null == childAgeInDays
          ? _value.childAgeInDays
          : childAgeInDays // ignore: cast_nullable_to_non_nullable
              as int,
      childAgeInMonths: null == childAgeInMonths
          ? _value.childAgeInMonths
          : childAgeInMonths // ignore: cast_nullable_to_non_nullable
              as int,
      childName: null == childName
          ? _value.childName
          : childName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of TodayState
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

  /// Create a copy of TodayState
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

  /// Create a copy of TodayState
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
abstract class _$$TodayStateImplCopyWith<$Res>
    implements $TodayStateCopyWith<$Res> {
  factory _$$TodayStateImplCopyWith(
          _$TodayStateImpl value, $Res Function(_$TodayStateImpl) then) =
      __$$TodayStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Game? game,
      Story? story,
      Craft? craft,
      String? vaccineReminder,
      String? measurementReminder,
      bool isLoading,
      String? error,
      DateTime date,
      int childAgeInDays,
      int childAgeInMonths,
      String childName});

  @override
  $GameCopyWith<$Res>? get game;
  @override
  $StoryCopyWith<$Res>? get story;
  @override
  $CraftCopyWith<$Res>? get craft;
}

/// @nodoc
class __$$TodayStateImplCopyWithImpl<$Res>
    extends _$TodayStateCopyWithImpl<$Res, _$TodayStateImpl>
    implements _$$TodayStateImplCopyWith<$Res> {
  __$$TodayStateImplCopyWithImpl(
      _$TodayStateImpl _value, $Res Function(_$TodayStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodayState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = freezed,
    Object? story = freezed,
    Object? craft = freezed,
    Object? vaccineReminder = freezed,
    Object? measurementReminder = freezed,
    Object? isLoading = null,
    Object? error = freezed,
    Object? date = null,
    Object? childAgeInDays = null,
    Object? childAgeInMonths = null,
    Object? childName = null,
  }) {
    return _then(_$TodayStateImpl(
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
      vaccineReminder: freezed == vaccineReminder
          ? _value.vaccineReminder
          : vaccineReminder // ignore: cast_nullable_to_non_nullable
              as String?,
      measurementReminder: freezed == measurementReminder
          ? _value.measurementReminder
          : measurementReminder // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      childAgeInDays: null == childAgeInDays
          ? _value.childAgeInDays
          : childAgeInDays // ignore: cast_nullable_to_non_nullable
              as int,
      childAgeInMonths: null == childAgeInMonths
          ? _value.childAgeInMonths
          : childAgeInMonths // ignore: cast_nullable_to_non_nullable
              as int,
      childName: null == childName
          ? _value.childName
          : childName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodayStateImpl implements _TodayState {
  const _$TodayStateImpl(
      {required this.game,
      required this.story,
      required this.craft,
      required this.vaccineReminder,
      required this.measurementReminder,
      required this.isLoading,
      this.error,
      required this.date,
      required this.childAgeInDays,
      required this.childAgeInMonths,
      required this.childName});

  factory _$TodayStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodayStateImplFromJson(json);

  @override
  final Game? game;
  @override
  final Story? story;
  @override
  final Craft? craft;
  @override
  final String? vaccineReminder;
  @override
  final String? measurementReminder;
  @override
  final bool isLoading;
  @override
  final String? error;
  @override
  final DateTime date;
  @override
  final int childAgeInDays;
  @override
  final int childAgeInMonths;
  @override
  final String childName;

  @override
  String toString() {
    return 'TodayState(game: $game, story: $story, craft: $craft, vaccineReminder: $vaccineReminder, measurementReminder: $measurementReminder, isLoading: $isLoading, error: $error, date: $date, childAgeInDays: $childAgeInDays, childAgeInMonths: $childAgeInMonths, childName: $childName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodayStateImpl &&
            (identical(other.game, game) || other.game == game) &&
            (identical(other.story, story) || other.story == story) &&
            (identical(other.craft, craft) || other.craft == craft) &&
            (identical(other.vaccineReminder, vaccineReminder) ||
                other.vaccineReminder == vaccineReminder) &&
            (identical(other.measurementReminder, measurementReminder) ||
                other.measurementReminder == measurementReminder) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.childAgeInDays, childAgeInDays) ||
                other.childAgeInDays == childAgeInDays) &&
            (identical(other.childAgeInMonths, childAgeInMonths) ||
                other.childAgeInMonths == childAgeInMonths) &&
            (identical(other.childName, childName) ||
                other.childName == childName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      game,
      story,
      craft,
      vaccineReminder,
      measurementReminder,
      isLoading,
      error,
      date,
      childAgeInDays,
      childAgeInMonths,
      childName);

  /// Create a copy of TodayState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodayStateImplCopyWith<_$TodayStateImpl> get copyWith =>
      __$$TodayStateImplCopyWithImpl<_$TodayStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodayStateImplToJson(
      this,
    );
  }
}

abstract class _TodayState implements TodayState {
  const factory _TodayState(
      {required final Game? game,
      required final Story? story,
      required final Craft? craft,
      required final String? vaccineReminder,
      required final String? measurementReminder,
      required final bool isLoading,
      final String? error,
      required final DateTime date,
      required final int childAgeInDays,
      required final int childAgeInMonths,
      required final String childName}) = _$TodayStateImpl;

  factory _TodayState.fromJson(Map<String, dynamic> json) =
      _$TodayStateImpl.fromJson;

  @override
  Game? get game;
  @override
  Story? get story;
  @override
  Craft? get craft;
  @override
  String? get vaccineReminder;
  @override
  String? get measurementReminder;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  DateTime get date;
  @override
  int get childAgeInDays;
  @override
  int get childAgeInMonths;
  @override
  String get childName;

  /// Create a copy of TodayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodayStateImplCopyWith<_$TodayStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActivityLog _$ActivityLogFromJson(Map<String, dynamic> json) {
  return _ActivityLog.fromJson(json);
}

/// @nodoc
mixin _$ActivityLog {
  String get id => throw _privateConstructorUsedError;
  String get childId => throw _privateConstructorUsedError;
  String get contentId => throw _privateConstructorUsedError;
  String get contentType =>
      throw _privateConstructorUsedError; // game, story, craft
  DateTime get completedAt => throw _privateConstructorUsedError;
  bool get favorited => throw _privateConstructorUsedError;

  /// Serializes this ActivityLog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActivityLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityLogCopyWith<ActivityLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityLogCopyWith<$Res> {
  factory $ActivityLogCopyWith(
          ActivityLog value, $Res Function(ActivityLog) then) =
      _$ActivityLogCopyWithImpl<$Res, ActivityLog>;
  @useResult
  $Res call(
      {String id,
      String childId,
      String contentId,
      String contentType,
      DateTime completedAt,
      bool favorited});
}

/// @nodoc
class _$ActivityLogCopyWithImpl<$Res, $Val extends ActivityLog>
    implements $ActivityLogCopyWith<$Res> {
  _$ActivityLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? childId = null,
    Object? contentId = null,
    Object? contentType = null,
    Object? completedAt = null,
    Object? favorited = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as String,
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      favorited: null == favorited
          ? _value.favorited
          : favorited // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivityLogImplCopyWith<$Res>
    implements $ActivityLogCopyWith<$Res> {
  factory _$$ActivityLogImplCopyWith(
          _$ActivityLogImpl value, $Res Function(_$ActivityLogImpl) then) =
      __$$ActivityLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String childId,
      String contentId,
      String contentType,
      DateTime completedAt,
      bool favorited});
}

/// @nodoc
class __$$ActivityLogImplCopyWithImpl<$Res>
    extends _$ActivityLogCopyWithImpl<$Res, _$ActivityLogImpl>
    implements _$$ActivityLogImplCopyWith<$Res> {
  __$$ActivityLogImplCopyWithImpl(
      _$ActivityLogImpl _value, $Res Function(_$ActivityLogImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? childId = null,
    Object? contentId = null,
    Object? contentType = null,
    Object? completedAt = null,
    Object? favorited = null,
  }) {
    return _then(_$ActivityLogImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as String,
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      favorited: null == favorited
          ? _value.favorited
          : favorited // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityLogImpl implements _ActivityLog {
  const _$ActivityLogImpl(
      {required this.id,
      required this.childId,
      required this.contentId,
      required this.contentType,
      required this.completedAt,
      this.favorited = false});

  factory _$ActivityLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityLogImplFromJson(json);

  @override
  final String id;
  @override
  final String childId;
  @override
  final String contentId;
  @override
  final String contentType;
// game, story, craft
  @override
  final DateTime completedAt;
  @override
  @JsonKey()
  final bool favorited;

  @override
  String toString() {
    return 'ActivityLog(id: $id, childId: $childId, contentId: $contentId, contentType: $contentType, completedAt: $completedAt, favorited: $favorited)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityLogImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.favorited, favorited) ||
                other.favorited == favorited));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, childId, contentId, contentType, completedAt, favorited);

  /// Create a copy of ActivityLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityLogImplCopyWith<_$ActivityLogImpl> get copyWith =>
      __$$ActivityLogImplCopyWithImpl<_$ActivityLogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityLogImplToJson(
      this,
    );
  }
}

abstract class _ActivityLog implements ActivityLog {
  const factory _ActivityLog(
      {required final String id,
      required final String childId,
      required final String contentId,
      required final String contentType,
      required final DateTime completedAt,
      final bool favorited}) = _$ActivityLogImpl;

  factory _ActivityLog.fromJson(Map<String, dynamic> json) =
      _$ActivityLogImpl.fromJson;

  @override
  String get id;
  @override
  String get childId;
  @override
  String get contentId;
  @override
  String get contentType; // game, story, craft
  @override
  DateTime get completedAt;
  @override
  bool get favorited;

  /// Create a copy of ActivityLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityLogImplCopyWith<_$ActivityLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SleepFeedLog _$SleepFeedLogFromJson(Map<String, dynamic> json) {
  return _SleepFeedLog.fromJson(json);
}

/// @nodoc
mixin _$SleepFeedLog {
  String get id => throw _privateConstructorUsedError;
  String get childId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError; // sleep, feed
  DateTime get startedAt => throw _privateConstructorUsedError;
  DateTime? get endedAt => throw _privateConstructorUsedError;
  double? get quantity => throw _privateConstructorUsedError;

  /// Serializes this SleepFeedLog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SleepFeedLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SleepFeedLogCopyWith<SleepFeedLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SleepFeedLogCopyWith<$Res> {
  factory $SleepFeedLogCopyWith(
          SleepFeedLog value, $Res Function(SleepFeedLog) then) =
      _$SleepFeedLogCopyWithImpl<$Res, SleepFeedLog>;
  @useResult
  $Res call(
      {String id,
      String childId,
      String type,
      DateTime startedAt,
      DateTime? endedAt,
      double? quantity});
}

/// @nodoc
class _$SleepFeedLogCopyWithImpl<$Res, $Val extends SleepFeedLog>
    implements $SleepFeedLogCopyWith<$Res> {
  _$SleepFeedLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SleepFeedLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? childId = null,
    Object? type = null,
    Object? startedAt = null,
    Object? endedAt = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SleepFeedLogImplCopyWith<$Res>
    implements $SleepFeedLogCopyWith<$Res> {
  factory _$$SleepFeedLogImplCopyWith(
          _$SleepFeedLogImpl value, $Res Function(_$SleepFeedLogImpl) then) =
      __$$SleepFeedLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String childId,
      String type,
      DateTime startedAt,
      DateTime? endedAt,
      double? quantity});
}

/// @nodoc
class __$$SleepFeedLogImplCopyWithImpl<$Res>
    extends _$SleepFeedLogCopyWithImpl<$Res, _$SleepFeedLogImpl>
    implements _$$SleepFeedLogImplCopyWith<$Res> {
  __$$SleepFeedLogImplCopyWithImpl(
      _$SleepFeedLogImpl _value, $Res Function(_$SleepFeedLogImpl) _then)
      : super(_value, _then);

  /// Create a copy of SleepFeedLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? childId = null,
    Object? type = null,
    Object? startedAt = null,
    Object? endedAt = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$SleepFeedLogImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SleepFeedLogImpl implements _SleepFeedLog {
  const _$SleepFeedLogImpl(
      {required this.id,
      required this.childId,
      required this.type,
      required this.startedAt,
      this.endedAt,
      this.quantity});

  factory _$SleepFeedLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$SleepFeedLogImplFromJson(json);

  @override
  final String id;
  @override
  final String childId;
  @override
  final String type;
// sleep, feed
  @override
  final DateTime startedAt;
  @override
  final DateTime? endedAt;
  @override
  final double? quantity;

  @override
  String toString() {
    return 'SleepFeedLog(id: $id, childId: $childId, type: $type, startedAt: $startedAt, endedAt: $endedAt, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SleepFeedLogImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, childId, type, startedAt, endedAt, quantity);

  /// Create a copy of SleepFeedLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SleepFeedLogImplCopyWith<_$SleepFeedLogImpl> get copyWith =>
      __$$SleepFeedLogImplCopyWithImpl<_$SleepFeedLogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SleepFeedLogImplToJson(
      this,
    );
  }
}

abstract class _SleepFeedLog implements SleepFeedLog {
  const factory _SleepFeedLog(
      {required final String id,
      required final String childId,
      required final String type,
      required final DateTime startedAt,
      final DateTime? endedAt,
      final double? quantity}) = _$SleepFeedLogImpl;

  factory _SleepFeedLog.fromJson(Map<String, dynamic> json) =
      _$SleepFeedLogImpl.fromJson;

  @override
  String get id;
  @override
  String get childId;
  @override
  String get type; // sleep, feed
  @override
  DateTime get startedAt;
  @override
  DateTime? get endedAt;
  @override
  double? get quantity;

  /// Create a copy of SleepFeedLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SleepFeedLogImplCopyWith<_$SleepFeedLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

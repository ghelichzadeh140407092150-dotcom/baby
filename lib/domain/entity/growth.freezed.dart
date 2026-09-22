// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'growth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GrowthEntry _$GrowthEntryFromJson(Map<String, dynamic> json) {
  return _GrowthEntry.fromJson(json);
}

/// @nodoc
mixin _$GrowthEntry {
  String get id => throw _privateConstructorUsedError;
  String get childId => throw _privateConstructorUsedError;
  DateTime get measuredAt => throw _privateConstructorUsedError;
  double? get heightCm => throw _privateConstructorUsedError;
  double? get weightKg => throw _privateConstructorUsedError;
  double? get headCircumferenceCm => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError; // manual, clinic
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this GrowthEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GrowthEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GrowthEntryCopyWith<GrowthEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrowthEntryCopyWith<$Res> {
  factory $GrowthEntryCopyWith(
          GrowthEntry value, $Res Function(GrowthEntry) then) =
      _$GrowthEntryCopyWithImpl<$Res, GrowthEntry>;
  @useResult
  $Res call(
      {String id,
      String childId,
      DateTime measuredAt,
      double? heightCm,
      double? weightKg,
      double? headCircumferenceCm,
      String? note,
      String source,
      DateTime createdAt});
}

/// @nodoc
class _$GrowthEntryCopyWithImpl<$Res, $Val extends GrowthEntry>
    implements $GrowthEntryCopyWith<$Res> {
  _$GrowthEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GrowthEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? childId = null,
    Object? measuredAt = null,
    Object? heightCm = freezed,
    Object? weightKg = freezed,
    Object? headCircumferenceCm = freezed,
    Object? note = freezed,
    Object? source = null,
    Object? createdAt = null,
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
      measuredAt: null == measuredAt
          ? _value.measuredAt
          : measuredAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      heightCm: freezed == heightCm
          ? _value.heightCm
          : heightCm // ignore: cast_nullable_to_non_nullable
              as double?,
      weightKg: freezed == weightKg
          ? _value.weightKg
          : weightKg // ignore: cast_nullable_to_non_nullable
              as double?,
      headCircumferenceCm: freezed == headCircumferenceCm
          ? _value.headCircumferenceCm
          : headCircumferenceCm // ignore: cast_nullable_to_non_nullable
              as double?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GrowthEntryImplCopyWith<$Res>
    implements $GrowthEntryCopyWith<$Res> {
  factory _$$GrowthEntryImplCopyWith(
          _$GrowthEntryImpl value, $Res Function(_$GrowthEntryImpl) then) =
      __$$GrowthEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String childId,
      DateTime measuredAt,
      double? heightCm,
      double? weightKg,
      double? headCircumferenceCm,
      String? note,
      String source,
      DateTime createdAt});
}

/// @nodoc
class __$$GrowthEntryImplCopyWithImpl<$Res>
    extends _$GrowthEntryCopyWithImpl<$Res, _$GrowthEntryImpl>
    implements _$$GrowthEntryImplCopyWith<$Res> {
  __$$GrowthEntryImplCopyWithImpl(
      _$GrowthEntryImpl _value, $Res Function(_$GrowthEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of GrowthEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? childId = null,
    Object? measuredAt = null,
    Object? heightCm = freezed,
    Object? weightKg = freezed,
    Object? headCircumferenceCm = freezed,
    Object? note = freezed,
    Object? source = null,
    Object? createdAt = null,
  }) {
    return _then(_$GrowthEntryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as String,
      measuredAt: null == measuredAt
          ? _value.measuredAt
          : measuredAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      heightCm: freezed == heightCm
          ? _value.heightCm
          : heightCm // ignore: cast_nullable_to_non_nullable
              as double?,
      weightKg: freezed == weightKg
          ? _value.weightKg
          : weightKg // ignore: cast_nullable_to_non_nullable
              as double?,
      headCircumferenceCm: freezed == headCircumferenceCm
          ? _value.headCircumferenceCm
          : headCircumferenceCm // ignore: cast_nullable_to_non_nullable
              as double?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GrowthEntryImpl implements _GrowthEntry {
  const _$GrowthEntryImpl(
      {required this.id,
      required this.childId,
      required this.measuredAt,
      this.heightCm,
      this.weightKg,
      this.headCircumferenceCm,
      this.note,
      this.source = 'manual',
      required this.createdAt});

  factory _$GrowthEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$GrowthEntryImplFromJson(json);

  @override
  final String id;
  @override
  final String childId;
  @override
  final DateTime measuredAt;
  @override
  final double? heightCm;
  @override
  final double? weightKg;
  @override
  final double? headCircumferenceCm;
  @override
  final String? note;
  @override
  @JsonKey()
  final String source;
// manual, clinic
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'GrowthEntry(id: $id, childId: $childId, measuredAt: $measuredAt, heightCm: $heightCm, weightKg: $weightKg, headCircumferenceCm: $headCircumferenceCm, note: $note, source: $source, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GrowthEntryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.measuredAt, measuredAt) ||
                other.measuredAt == measuredAt) &&
            (identical(other.heightCm, heightCm) ||
                other.heightCm == heightCm) &&
            (identical(other.weightKg, weightKg) ||
                other.weightKg == weightKg) &&
            (identical(other.headCircumferenceCm, headCircumferenceCm) ||
                other.headCircumferenceCm == headCircumferenceCm) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, childId, measuredAt,
      heightCm, weightKg, headCircumferenceCm, note, source, createdAt);

  /// Create a copy of GrowthEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GrowthEntryImplCopyWith<_$GrowthEntryImpl> get copyWith =>
      __$$GrowthEntryImplCopyWithImpl<_$GrowthEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GrowthEntryImplToJson(
      this,
    );
  }
}

abstract class _GrowthEntry implements GrowthEntry {
  const factory _GrowthEntry(
      {required final String id,
      required final String childId,
      required final DateTime measuredAt,
      final double? heightCm,
      final double? weightKg,
      final double? headCircumferenceCm,
      final String? note,
      final String source,
      required final DateTime createdAt}) = _$GrowthEntryImpl;

  factory _GrowthEntry.fromJson(Map<String, dynamic> json) =
      _$GrowthEntryImpl.fromJson;

  @override
  String get id;
  @override
  String get childId;
  @override
  DateTime get measuredAt;
  @override
  double? get heightCm;
  @override
  double? get weightKg;
  @override
  double? get headCircumferenceCm;
  @override
  String? get note;
  @override
  String get source; // manual, clinic
  @override
  DateTime get createdAt;

  /// Create a copy of GrowthEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GrowthEntryImplCopyWith<_$GrowthEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GrowthPercentile _$GrowthPercentileFromJson(Map<String, dynamic> json) {
  return _GrowthPercentile.fromJson(json);
}

/// @nodoc
mixin _$GrowthPercentile {
  double get percentile => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // normal, check_with_doctor
  String get metric =>
      throw _privateConstructorUsedError; // height, weight, head
  DateTime get measuredAt => throw _privateConstructorUsedError;

  /// Serializes this GrowthPercentile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GrowthPercentile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GrowthPercentileCopyWith<GrowthPercentile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrowthPercentileCopyWith<$Res> {
  factory $GrowthPercentileCopyWith(
          GrowthPercentile value, $Res Function(GrowthPercentile) then) =
      _$GrowthPercentileCopyWithImpl<$Res, GrowthPercentile>;
  @useResult
  $Res call(
      {double percentile, String status, String metric, DateTime measuredAt});
}

/// @nodoc
class _$GrowthPercentileCopyWithImpl<$Res, $Val extends GrowthPercentile>
    implements $GrowthPercentileCopyWith<$Res> {
  _$GrowthPercentileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GrowthPercentile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percentile = null,
    Object? status = null,
    Object? metric = null,
    Object? measuredAt = null,
  }) {
    return _then(_value.copyWith(
      percentile: null == percentile
          ? _value.percentile
          : percentile // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      metric: null == metric
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as String,
      measuredAt: null == measuredAt
          ? _value.measuredAt
          : measuredAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GrowthPercentileImplCopyWith<$Res>
    implements $GrowthPercentileCopyWith<$Res> {
  factory _$$GrowthPercentileImplCopyWith(_$GrowthPercentileImpl value,
          $Res Function(_$GrowthPercentileImpl) then) =
      __$$GrowthPercentileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double percentile, String status, String metric, DateTime measuredAt});
}

/// @nodoc
class __$$GrowthPercentileImplCopyWithImpl<$Res>
    extends _$GrowthPercentileCopyWithImpl<$Res, _$GrowthPercentileImpl>
    implements _$$GrowthPercentileImplCopyWith<$Res> {
  __$$GrowthPercentileImplCopyWithImpl(_$GrowthPercentileImpl _value,
      $Res Function(_$GrowthPercentileImpl) _then)
      : super(_value, _then);

  /// Create a copy of GrowthPercentile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percentile = null,
    Object? status = null,
    Object? metric = null,
    Object? measuredAt = null,
  }) {
    return _then(_$GrowthPercentileImpl(
      percentile: null == percentile
          ? _value.percentile
          : percentile // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      metric: null == metric
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as String,
      measuredAt: null == measuredAt
          ? _value.measuredAt
          : measuredAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GrowthPercentileImpl implements _GrowthPercentile {
  const _$GrowthPercentileImpl(
      {required this.percentile,
      required this.status,
      required this.metric,
      required this.measuredAt});

  factory _$GrowthPercentileImpl.fromJson(Map<String, dynamic> json) =>
      _$$GrowthPercentileImplFromJson(json);

  @override
  final double percentile;
  @override
  final String status;
// normal, check_with_doctor
  @override
  final String metric;
// height, weight, head
  @override
  final DateTime measuredAt;

  @override
  String toString() {
    return 'GrowthPercentile(percentile: $percentile, status: $status, metric: $metric, measuredAt: $measuredAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GrowthPercentileImpl &&
            (identical(other.percentile, percentile) ||
                other.percentile == percentile) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.metric, metric) || other.metric == metric) &&
            (identical(other.measuredAt, measuredAt) ||
                other.measuredAt == measuredAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, percentile, status, metric, measuredAt);

  /// Create a copy of GrowthPercentile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GrowthPercentileImplCopyWith<_$GrowthPercentileImpl> get copyWith =>
      __$$GrowthPercentileImplCopyWithImpl<_$GrowthPercentileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GrowthPercentileImplToJson(
      this,
    );
  }
}

abstract class _GrowthPercentile implements GrowthPercentile {
  const factory _GrowthPercentile(
      {required final double percentile,
      required final String status,
      required final String metric,
      required final DateTime measuredAt}) = _$GrowthPercentileImpl;

  factory _GrowthPercentile.fromJson(Map<String, dynamic> json) =
      _$GrowthPercentileImpl.fromJson;

  @override
  double get percentile;
  @override
  String get status; // normal, check_with_doctor
  @override
  String get metric; // height, weight, head
  @override
  DateTime get measuredAt;

  /// Create a copy of GrowthPercentile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GrowthPercentileImplCopyWith<_$GrowthPercentileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GrowthTrend _$GrowthTrendFromJson(Map<String, dynamic> json) {
  return _GrowthTrend.fromJson(json);
}

/// @nodoc
mixin _$GrowthTrend {
  String get metric => throw _privateConstructorUsedError;
  List<GrowthDataPoint> get dataPoints => throw _privateConstructorUsedError;
  double? get slope => throw _privateConstructorUsedError;

  /// Serializes this GrowthTrend to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GrowthTrend
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GrowthTrendCopyWith<GrowthTrend> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrowthTrendCopyWith<$Res> {
  factory $GrowthTrendCopyWith(
          GrowthTrend value, $Res Function(GrowthTrend) then) =
      _$GrowthTrendCopyWithImpl<$Res, GrowthTrend>;
  @useResult
  $Res call({String metric, List<GrowthDataPoint> dataPoints, double? slope});
}

/// @nodoc
class _$GrowthTrendCopyWithImpl<$Res, $Val extends GrowthTrend>
    implements $GrowthTrendCopyWith<$Res> {
  _$GrowthTrendCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GrowthTrend
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metric = null,
    Object? dataPoints = null,
    Object? slope = freezed,
  }) {
    return _then(_value.copyWith(
      metric: null == metric
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as String,
      dataPoints: null == dataPoints
          ? _value.dataPoints
          : dataPoints // ignore: cast_nullable_to_non_nullable
              as List<GrowthDataPoint>,
      slope: freezed == slope
          ? _value.slope
          : slope // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GrowthTrendImplCopyWith<$Res>
    implements $GrowthTrendCopyWith<$Res> {
  factory _$$GrowthTrendImplCopyWith(
          _$GrowthTrendImpl value, $Res Function(_$GrowthTrendImpl) then) =
      __$$GrowthTrendImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String metric, List<GrowthDataPoint> dataPoints, double? slope});
}

/// @nodoc
class __$$GrowthTrendImplCopyWithImpl<$Res>
    extends _$GrowthTrendCopyWithImpl<$Res, _$GrowthTrendImpl>
    implements _$$GrowthTrendImplCopyWith<$Res> {
  __$$GrowthTrendImplCopyWithImpl(
      _$GrowthTrendImpl _value, $Res Function(_$GrowthTrendImpl) _then)
      : super(_value, _then);

  /// Create a copy of GrowthTrend
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metric = null,
    Object? dataPoints = null,
    Object? slope = freezed,
  }) {
    return _then(_$GrowthTrendImpl(
      metric: null == metric
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as String,
      dataPoints: null == dataPoints
          ? _value._dataPoints
          : dataPoints // ignore: cast_nullable_to_non_nullable
              as List<GrowthDataPoint>,
      slope: freezed == slope
          ? _value.slope
          : slope // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GrowthTrendImpl implements _GrowthTrend {
  const _$GrowthTrendImpl(
      {required this.metric,
      required final List<GrowthDataPoint> dataPoints,
      required this.slope})
      : _dataPoints = dataPoints;

  factory _$GrowthTrendImpl.fromJson(Map<String, dynamic> json) =>
      _$$GrowthTrendImplFromJson(json);

  @override
  final String metric;
  final List<GrowthDataPoint> _dataPoints;
  @override
  List<GrowthDataPoint> get dataPoints {
    if (_dataPoints is EqualUnmodifiableListView) return _dataPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataPoints);
  }

  @override
  final double? slope;

  @override
  String toString() {
    return 'GrowthTrend(metric: $metric, dataPoints: $dataPoints, slope: $slope)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GrowthTrendImpl &&
            (identical(other.metric, metric) || other.metric == metric) &&
            const DeepCollectionEquality()
                .equals(other._dataPoints, _dataPoints) &&
            (identical(other.slope, slope) || other.slope == slope));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, metric,
      const DeepCollectionEquality().hash(_dataPoints), slope);

  /// Create a copy of GrowthTrend
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GrowthTrendImplCopyWith<_$GrowthTrendImpl> get copyWith =>
      __$$GrowthTrendImplCopyWithImpl<_$GrowthTrendImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GrowthTrendImplToJson(
      this,
    );
  }
}

abstract class _GrowthTrend implements GrowthTrend {
  const factory _GrowthTrend(
      {required final String metric,
      required final List<GrowthDataPoint> dataPoints,
      required final double? slope}) = _$GrowthTrendImpl;

  factory _GrowthTrend.fromJson(Map<String, dynamic> json) =
      _$GrowthTrendImpl.fromJson;

  @override
  String get metric;
  @override
  List<GrowthDataPoint> get dataPoints;
  @override
  double? get slope;

  /// Create a copy of GrowthTrend
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GrowthTrendImplCopyWith<_$GrowthTrendImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GrowthDataPoint _$GrowthDataPointFromJson(Map<String, dynamic> json) {
  return _GrowthDataPoint.fromJson(json);
}

/// @nodoc
mixin _$GrowthDataPoint {
  DateTime get date => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  double? get percentile => throw _privateConstructorUsedError;

  /// Serializes this GrowthDataPoint to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GrowthDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GrowthDataPointCopyWith<GrowthDataPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrowthDataPointCopyWith<$Res> {
  factory $GrowthDataPointCopyWith(
          GrowthDataPoint value, $Res Function(GrowthDataPoint) then) =
      _$GrowthDataPointCopyWithImpl<$Res, GrowthDataPoint>;
  @useResult
  $Res call({DateTime date, double value, double? percentile});
}

/// @nodoc
class _$GrowthDataPointCopyWithImpl<$Res, $Val extends GrowthDataPoint>
    implements $GrowthDataPointCopyWith<$Res> {
  _$GrowthDataPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GrowthDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = null,
    Object? percentile = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      percentile: freezed == percentile
          ? _value.percentile
          : percentile // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GrowthDataPointImplCopyWith<$Res>
    implements $GrowthDataPointCopyWith<$Res> {
  factory _$$GrowthDataPointImplCopyWith(_$GrowthDataPointImpl value,
          $Res Function(_$GrowthDataPointImpl) then) =
      __$$GrowthDataPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, double value, double? percentile});
}

/// @nodoc
class __$$GrowthDataPointImplCopyWithImpl<$Res>
    extends _$GrowthDataPointCopyWithImpl<$Res, _$GrowthDataPointImpl>
    implements _$$GrowthDataPointImplCopyWith<$Res> {
  __$$GrowthDataPointImplCopyWithImpl(
      _$GrowthDataPointImpl _value, $Res Function(_$GrowthDataPointImpl) _then)
      : super(_value, _then);

  /// Create a copy of GrowthDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = null,
    Object? percentile = freezed,
  }) {
    return _then(_$GrowthDataPointImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      percentile: freezed == percentile
          ? _value.percentile
          : percentile // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GrowthDataPointImpl implements _GrowthDataPoint {
  const _$GrowthDataPointImpl(
      {required this.date, required this.value, this.percentile});

  factory _$GrowthDataPointImpl.fromJson(Map<String, dynamic> json) =>
      _$$GrowthDataPointImplFromJson(json);

  @override
  final DateTime date;
  @override
  final double value;
  @override
  final double? percentile;

  @override
  String toString() {
    return 'GrowthDataPoint(date: $date, value: $value, percentile: $percentile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GrowthDataPointImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.percentile, percentile) ||
                other.percentile == percentile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, value, percentile);

  /// Create a copy of GrowthDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GrowthDataPointImplCopyWith<_$GrowthDataPointImpl> get copyWith =>
      __$$GrowthDataPointImplCopyWithImpl<_$GrowthDataPointImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GrowthDataPointImplToJson(
      this,
    );
  }
}

abstract class _GrowthDataPoint implements GrowthDataPoint {
  const factory _GrowthDataPoint(
      {required final DateTime date,
      required final double value,
      final double? percentile}) = _$GrowthDataPointImpl;

  factory _GrowthDataPoint.fromJson(Map<String, dynamic> json) =
      _$GrowthDataPointImpl.fromJson;

  @override
  DateTime get date;
  @override
  double get value;
  @override
  double? get percentile;

  /// Create a copy of GrowthDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GrowthDataPointImplCopyWith<_$GrowthDataPointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

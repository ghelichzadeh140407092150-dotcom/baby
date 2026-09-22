// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vaccine.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VaccineDose _$VaccineDoseFromJson(Map<String, dynamic> json) {
  return _VaccineDose.fromJson(json);
}

/// @nodoc
mixin _$VaccineDose {
  String get id => throw _privateConstructorUsedError;
  String get childId => throw _privateConstructorUsedError;
  String get vaccineCode => throw _privateConstructorUsedError;
  int get doseNumber => throw _privateConstructorUsedError;
  int get scheduledAgeDays => throw _privateConstructorUsedError;
  DateTime get dueDate => throw _privateConstructorUsedError;
  DateTime? get administeredAt => throw _privateConstructorUsedError;
  bool get skipped => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this VaccineDose to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VaccineDose
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VaccineDoseCopyWith<VaccineDose> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineDoseCopyWith<$Res> {
  factory $VaccineDoseCopyWith(
          VaccineDose value, $Res Function(VaccineDose) then) =
      _$VaccineDoseCopyWithImpl<$Res, VaccineDose>;
  @useResult
  $Res call(
      {String id,
      String childId,
      String vaccineCode,
      int doseNumber,
      int scheduledAgeDays,
      DateTime dueDate,
      DateTime? administeredAt,
      bool skipped,
      String? note,
      DateTime createdAt});
}

/// @nodoc
class _$VaccineDoseCopyWithImpl<$Res, $Val extends VaccineDose>
    implements $VaccineDoseCopyWith<$Res> {
  _$VaccineDoseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VaccineDose
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? childId = null,
    Object? vaccineCode = null,
    Object? doseNumber = null,
    Object? scheduledAgeDays = null,
    Object? dueDate = null,
    Object? administeredAt = freezed,
    Object? skipped = null,
    Object? note = freezed,
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
      vaccineCode: null == vaccineCode
          ? _value.vaccineCode
          : vaccineCode // ignore: cast_nullable_to_non_nullable
              as String,
      doseNumber: null == doseNumber
          ? _value.doseNumber
          : doseNumber // ignore: cast_nullable_to_non_nullable
              as int,
      scheduledAgeDays: null == scheduledAgeDays
          ? _value.scheduledAgeDays
          : scheduledAgeDays // ignore: cast_nullable_to_non_nullable
              as int,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      administeredAt: freezed == administeredAt
          ? _value.administeredAt
          : administeredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      skipped: null == skipped
          ? _value.skipped
          : skipped // ignore: cast_nullable_to_non_nullable
              as bool,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VaccineDoseImplCopyWith<$Res>
    implements $VaccineDoseCopyWith<$Res> {
  factory _$$VaccineDoseImplCopyWith(
          _$VaccineDoseImpl value, $Res Function(_$VaccineDoseImpl) then) =
      __$$VaccineDoseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String childId,
      String vaccineCode,
      int doseNumber,
      int scheduledAgeDays,
      DateTime dueDate,
      DateTime? administeredAt,
      bool skipped,
      String? note,
      DateTime createdAt});
}

/// @nodoc
class __$$VaccineDoseImplCopyWithImpl<$Res>
    extends _$VaccineDoseCopyWithImpl<$Res, _$VaccineDoseImpl>
    implements _$$VaccineDoseImplCopyWith<$Res> {
  __$$VaccineDoseImplCopyWithImpl(
      _$VaccineDoseImpl _value, $Res Function(_$VaccineDoseImpl) _then)
      : super(_value, _then);

  /// Create a copy of VaccineDose
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? childId = null,
    Object? vaccineCode = null,
    Object? doseNumber = null,
    Object? scheduledAgeDays = null,
    Object? dueDate = null,
    Object? administeredAt = freezed,
    Object? skipped = null,
    Object? note = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$VaccineDoseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as String,
      vaccineCode: null == vaccineCode
          ? _value.vaccineCode
          : vaccineCode // ignore: cast_nullable_to_non_nullable
              as String,
      doseNumber: null == doseNumber
          ? _value.doseNumber
          : doseNumber // ignore: cast_nullable_to_non_nullable
              as int,
      scheduledAgeDays: null == scheduledAgeDays
          ? _value.scheduledAgeDays
          : scheduledAgeDays // ignore: cast_nullable_to_non_nullable
              as int,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      administeredAt: freezed == administeredAt
          ? _value.administeredAt
          : administeredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      skipped: null == skipped
          ? _value.skipped
          : skipped // ignore: cast_nullable_to_non_nullable
              as bool,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VaccineDoseImpl implements _VaccineDose {
  const _$VaccineDoseImpl(
      {required this.id,
      required this.childId,
      required this.vaccineCode,
      required this.doseNumber,
      required this.scheduledAgeDays,
      required this.dueDate,
      this.administeredAt,
      this.skipped = false,
      this.note,
      required this.createdAt});

  factory _$VaccineDoseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VaccineDoseImplFromJson(json);

  @override
  final String id;
  @override
  final String childId;
  @override
  final String vaccineCode;
  @override
  final int doseNumber;
  @override
  final int scheduledAgeDays;
  @override
  final DateTime dueDate;
  @override
  final DateTime? administeredAt;
  @override
  @JsonKey()
  final bool skipped;
  @override
  final String? note;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'VaccineDose(id: $id, childId: $childId, vaccineCode: $vaccineCode, doseNumber: $doseNumber, scheduledAgeDays: $scheduledAgeDays, dueDate: $dueDate, administeredAt: $administeredAt, skipped: $skipped, note: $note, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VaccineDoseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.vaccineCode, vaccineCode) ||
                other.vaccineCode == vaccineCode) &&
            (identical(other.doseNumber, doseNumber) ||
                other.doseNumber == doseNumber) &&
            (identical(other.scheduledAgeDays, scheduledAgeDays) ||
                other.scheduledAgeDays == scheduledAgeDays) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.administeredAt, administeredAt) ||
                other.administeredAt == administeredAt) &&
            (identical(other.skipped, skipped) || other.skipped == skipped) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      childId,
      vaccineCode,
      doseNumber,
      scheduledAgeDays,
      dueDate,
      administeredAt,
      skipped,
      note,
      createdAt);

  /// Create a copy of VaccineDose
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VaccineDoseImplCopyWith<_$VaccineDoseImpl> get copyWith =>
      __$$VaccineDoseImplCopyWithImpl<_$VaccineDoseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VaccineDoseImplToJson(
      this,
    );
  }
}

abstract class _VaccineDose implements VaccineDose {
  const factory _VaccineDose(
      {required final String id,
      required final String childId,
      required final String vaccineCode,
      required final int doseNumber,
      required final int scheduledAgeDays,
      required final DateTime dueDate,
      final DateTime? administeredAt,
      final bool skipped,
      final String? note,
      required final DateTime createdAt}) = _$VaccineDoseImpl;

  factory _VaccineDose.fromJson(Map<String, dynamic> json) =
      _$VaccineDoseImpl.fromJson;

  @override
  String get id;
  @override
  String get childId;
  @override
  String get vaccineCode;
  @override
  int get doseNumber;
  @override
  int get scheduledAgeDays;
  @override
  DateTime get dueDate;
  @override
  DateTime? get administeredAt;
  @override
  bool get skipped;
  @override
  String? get note;
  @override
  DateTime get createdAt;

  /// Create a copy of VaccineDose
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VaccineDoseImplCopyWith<_$VaccineDoseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VaccineSchedule _$VaccineScheduleFromJson(Map<String, dynamic> json) {
  return _VaccineSchedule.fromJson(json);
}

/// @nodoc
mixin _$VaccineSchedule {
  String get vaccineCode => throw _privateConstructorUsedError;
  String get farsiName => throw _privateConstructorUsedError;
  List<VaccineDoseInfo> get doses => throw _privateConstructorUsedError;

  /// Serializes this VaccineSchedule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VaccineSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VaccineScheduleCopyWith<VaccineSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineScheduleCopyWith<$Res> {
  factory $VaccineScheduleCopyWith(
          VaccineSchedule value, $Res Function(VaccineSchedule) then) =
      _$VaccineScheduleCopyWithImpl<$Res, VaccineSchedule>;
  @useResult
  $Res call(
      {String vaccineCode, String farsiName, List<VaccineDoseInfo> doses});
}

/// @nodoc
class _$VaccineScheduleCopyWithImpl<$Res, $Val extends VaccineSchedule>
    implements $VaccineScheduleCopyWith<$Res> {
  _$VaccineScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VaccineSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vaccineCode = null,
    Object? farsiName = null,
    Object? doses = null,
  }) {
    return _then(_value.copyWith(
      vaccineCode: null == vaccineCode
          ? _value.vaccineCode
          : vaccineCode // ignore: cast_nullable_to_non_nullable
              as String,
      farsiName: null == farsiName
          ? _value.farsiName
          : farsiName // ignore: cast_nullable_to_non_nullable
              as String,
      doses: null == doses
          ? _value.doses
          : doses // ignore: cast_nullable_to_non_nullable
              as List<VaccineDoseInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VaccineScheduleImplCopyWith<$Res>
    implements $VaccineScheduleCopyWith<$Res> {
  factory _$$VaccineScheduleImplCopyWith(_$VaccineScheduleImpl value,
          $Res Function(_$VaccineScheduleImpl) then) =
      __$$VaccineScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String vaccineCode, String farsiName, List<VaccineDoseInfo> doses});
}

/// @nodoc
class __$$VaccineScheduleImplCopyWithImpl<$Res>
    extends _$VaccineScheduleCopyWithImpl<$Res, _$VaccineScheduleImpl>
    implements _$$VaccineScheduleImplCopyWith<$Res> {
  __$$VaccineScheduleImplCopyWithImpl(
      _$VaccineScheduleImpl _value, $Res Function(_$VaccineScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of VaccineSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vaccineCode = null,
    Object? farsiName = null,
    Object? doses = null,
  }) {
    return _then(_$VaccineScheduleImpl(
      vaccineCode: null == vaccineCode
          ? _value.vaccineCode
          : vaccineCode // ignore: cast_nullable_to_non_nullable
              as String,
      farsiName: null == farsiName
          ? _value.farsiName
          : farsiName // ignore: cast_nullable_to_non_nullable
              as String,
      doses: null == doses
          ? _value._doses
          : doses // ignore: cast_nullable_to_non_nullable
              as List<VaccineDoseInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VaccineScheduleImpl implements _VaccineSchedule {
  const _$VaccineScheduleImpl(
      {required this.vaccineCode,
      required this.farsiName,
      required final List<VaccineDoseInfo> doses})
      : _doses = doses;

  factory _$VaccineScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$VaccineScheduleImplFromJson(json);

  @override
  final String vaccineCode;
  @override
  final String farsiName;
  final List<VaccineDoseInfo> _doses;
  @override
  List<VaccineDoseInfo> get doses {
    if (_doses is EqualUnmodifiableListView) return _doses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doses);
  }

  @override
  String toString() {
    return 'VaccineSchedule(vaccineCode: $vaccineCode, farsiName: $farsiName, doses: $doses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VaccineScheduleImpl &&
            (identical(other.vaccineCode, vaccineCode) ||
                other.vaccineCode == vaccineCode) &&
            (identical(other.farsiName, farsiName) ||
                other.farsiName == farsiName) &&
            const DeepCollectionEquality().equals(other._doses, _doses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, vaccineCode, farsiName,
      const DeepCollectionEquality().hash(_doses));

  /// Create a copy of VaccineSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VaccineScheduleImplCopyWith<_$VaccineScheduleImpl> get copyWith =>
      __$$VaccineScheduleImplCopyWithImpl<_$VaccineScheduleImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VaccineScheduleImplToJson(
      this,
    );
  }
}

abstract class _VaccineSchedule implements VaccineSchedule {
  const factory _VaccineSchedule(
      {required final String vaccineCode,
      required final String farsiName,
      required final List<VaccineDoseInfo> doses}) = _$VaccineScheduleImpl;

  factory _VaccineSchedule.fromJson(Map<String, dynamic> json) =
      _$VaccineScheduleImpl.fromJson;

  @override
  String get vaccineCode;
  @override
  String get farsiName;
  @override
  List<VaccineDoseInfo> get doses;

  /// Create a copy of VaccineSchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VaccineScheduleImplCopyWith<_$VaccineScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VaccineDoseInfo _$VaccineDoseInfoFromJson(Map<String, dynamic> json) {
  return _VaccineDoseInfo.fromJson(json);
}

/// @nodoc
mixin _$VaccineDoseInfo {
  int get doseNumber => throw _privateConstructorUsedError;
  int get scheduledAgeDays => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this VaccineDoseInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VaccineDoseInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VaccineDoseInfoCopyWith<VaccineDoseInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineDoseInfoCopyWith<$Res> {
  factory $VaccineDoseInfoCopyWith(
          VaccineDoseInfo value, $Res Function(VaccineDoseInfo) then) =
      _$VaccineDoseInfoCopyWithImpl<$Res, VaccineDoseInfo>;
  @useResult
  $Res call({int doseNumber, int scheduledAgeDays, String? notes});
}

/// @nodoc
class _$VaccineDoseInfoCopyWithImpl<$Res, $Val extends VaccineDoseInfo>
    implements $VaccineDoseInfoCopyWith<$Res> {
  _$VaccineDoseInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VaccineDoseInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doseNumber = null,
    Object? scheduledAgeDays = null,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      doseNumber: null == doseNumber
          ? _value.doseNumber
          : doseNumber // ignore: cast_nullable_to_non_nullable
              as int,
      scheduledAgeDays: null == scheduledAgeDays
          ? _value.scheduledAgeDays
          : scheduledAgeDays // ignore: cast_nullable_to_non_nullable
              as int,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VaccineDoseInfoImplCopyWith<$Res>
    implements $VaccineDoseInfoCopyWith<$Res> {
  factory _$$VaccineDoseInfoImplCopyWith(_$VaccineDoseInfoImpl value,
          $Res Function(_$VaccineDoseInfoImpl) then) =
      __$$VaccineDoseInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int doseNumber, int scheduledAgeDays, String? notes});
}

/// @nodoc
class __$$VaccineDoseInfoImplCopyWithImpl<$Res>
    extends _$VaccineDoseInfoCopyWithImpl<$Res, _$VaccineDoseInfoImpl>
    implements _$$VaccineDoseInfoImplCopyWith<$Res> {
  __$$VaccineDoseInfoImplCopyWithImpl(
      _$VaccineDoseInfoImpl _value, $Res Function(_$VaccineDoseInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of VaccineDoseInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doseNumber = null,
    Object? scheduledAgeDays = null,
    Object? notes = freezed,
  }) {
    return _then(_$VaccineDoseInfoImpl(
      doseNumber: null == doseNumber
          ? _value.doseNumber
          : doseNumber // ignore: cast_nullable_to_non_nullable
              as int,
      scheduledAgeDays: null == scheduledAgeDays
          ? _value.scheduledAgeDays
          : scheduledAgeDays // ignore: cast_nullable_to_non_nullable
              as int,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VaccineDoseInfoImpl implements _VaccineDoseInfo {
  const _$VaccineDoseInfoImpl(
      {required this.doseNumber, required this.scheduledAgeDays, this.notes});

  factory _$VaccineDoseInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VaccineDoseInfoImplFromJson(json);

  @override
  final int doseNumber;
  @override
  final int scheduledAgeDays;
  @override
  final String? notes;

  @override
  String toString() {
    return 'VaccineDoseInfo(doseNumber: $doseNumber, scheduledAgeDays: $scheduledAgeDays, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VaccineDoseInfoImpl &&
            (identical(other.doseNumber, doseNumber) ||
                other.doseNumber == doseNumber) &&
            (identical(other.scheduledAgeDays, scheduledAgeDays) ||
                other.scheduledAgeDays == scheduledAgeDays) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, doseNumber, scheduledAgeDays, notes);

  /// Create a copy of VaccineDoseInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VaccineDoseInfoImplCopyWith<_$VaccineDoseInfoImpl> get copyWith =>
      __$$VaccineDoseInfoImplCopyWithImpl<_$VaccineDoseInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VaccineDoseInfoImplToJson(
      this,
    );
  }
}

abstract class _VaccineDoseInfo implements VaccineDoseInfo {
  const factory _VaccineDoseInfo(
      {required final int doseNumber,
      required final int scheduledAgeDays,
      final String? notes}) = _$VaccineDoseInfoImpl;

  factory _VaccineDoseInfo.fromJson(Map<String, dynamic> json) =
      _$VaccineDoseInfoImpl.fromJson;

  @override
  int get doseNumber;
  @override
  int get scheduledAgeDays;
  @override
  String? get notes;

  /// Create a copy of VaccineDoseInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VaccineDoseInfoImplCopyWith<_$VaccineDoseInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

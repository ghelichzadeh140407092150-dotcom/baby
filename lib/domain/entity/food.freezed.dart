// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FoodIntroduction _$FoodIntroductionFromJson(Map<String, dynamic> json) {
  return _FoodIntroduction.fromJson(json);
}

/// @nodoc
mixin _$FoodIntroduction {
  String get id => throw _privateConstructorUsedError;
  String get childId => throw _privateConstructorUsedError;
  String get foodCode => throw _privateConstructorUsedError;
  DateTime get firstTriedAt => throw _privateConstructorUsedError;
  String? get reaction =>
      throw _privateConstructorUsedError; // liked, disliked, refused, suspectedAllergy
  String? get note => throw _privateConstructorUsedError;

  /// Serializes this FoodIntroduction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FoodIntroduction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoodIntroductionCopyWith<FoodIntroduction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodIntroductionCopyWith<$Res> {
  factory $FoodIntroductionCopyWith(
          FoodIntroduction value, $Res Function(FoodIntroduction) then) =
      _$FoodIntroductionCopyWithImpl<$Res, FoodIntroduction>;
  @useResult
  $Res call(
      {String id,
      String childId,
      String foodCode,
      DateTime firstTriedAt,
      String? reaction,
      String? note});
}

/// @nodoc
class _$FoodIntroductionCopyWithImpl<$Res, $Val extends FoodIntroduction>
    implements $FoodIntroductionCopyWith<$Res> {
  _$FoodIntroductionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FoodIntroduction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? childId = null,
    Object? foodCode = null,
    Object? firstTriedAt = null,
    Object? reaction = freezed,
    Object? note = freezed,
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
      foodCode: null == foodCode
          ? _value.foodCode
          : foodCode // ignore: cast_nullable_to_non_nullable
              as String,
      firstTriedAt: null == firstTriedAt
          ? _value.firstTriedAt
          : firstTriedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reaction: freezed == reaction
          ? _value.reaction
          : reaction // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoodIntroductionImplCopyWith<$Res>
    implements $FoodIntroductionCopyWith<$Res> {
  factory _$$FoodIntroductionImplCopyWith(_$FoodIntroductionImpl value,
          $Res Function(_$FoodIntroductionImpl) then) =
      __$$FoodIntroductionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String childId,
      String foodCode,
      DateTime firstTriedAt,
      String? reaction,
      String? note});
}

/// @nodoc
class __$$FoodIntroductionImplCopyWithImpl<$Res>
    extends _$FoodIntroductionCopyWithImpl<$Res, _$FoodIntroductionImpl>
    implements _$$FoodIntroductionImplCopyWith<$Res> {
  __$$FoodIntroductionImplCopyWithImpl(_$FoodIntroductionImpl _value,
      $Res Function(_$FoodIntroductionImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoodIntroduction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? childId = null,
    Object? foodCode = null,
    Object? firstTriedAt = null,
    Object? reaction = freezed,
    Object? note = freezed,
  }) {
    return _then(_$FoodIntroductionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as String,
      foodCode: null == foodCode
          ? _value.foodCode
          : foodCode // ignore: cast_nullable_to_non_nullable
              as String,
      firstTriedAt: null == firstTriedAt
          ? _value.firstTriedAt
          : firstTriedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reaction: freezed == reaction
          ? _value.reaction
          : reaction // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoodIntroductionImpl implements _FoodIntroduction {
  const _$FoodIntroductionImpl(
      {required this.id,
      required this.childId,
      required this.foodCode,
      required this.firstTriedAt,
      this.reaction,
      this.note});

  factory _$FoodIntroductionImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoodIntroductionImplFromJson(json);

  @override
  final String id;
  @override
  final String childId;
  @override
  final String foodCode;
  @override
  final DateTime firstTriedAt;
  @override
  final String? reaction;
// liked, disliked, refused, suspectedAllergy
  @override
  final String? note;

  @override
  String toString() {
    return 'FoodIntroduction(id: $id, childId: $childId, foodCode: $foodCode, firstTriedAt: $firstTriedAt, reaction: $reaction, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodIntroductionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.foodCode, foodCode) ||
                other.foodCode == foodCode) &&
            (identical(other.firstTriedAt, firstTriedAt) ||
                other.firstTriedAt == firstTriedAt) &&
            (identical(other.reaction, reaction) ||
                other.reaction == reaction) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, childId, foodCode, firstTriedAt, reaction, note);

  /// Create a copy of FoodIntroduction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodIntroductionImplCopyWith<_$FoodIntroductionImpl> get copyWith =>
      __$$FoodIntroductionImplCopyWithImpl<_$FoodIntroductionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FoodIntroductionImplToJson(
      this,
    );
  }
}

abstract class _FoodIntroduction implements FoodIntroduction {
  const factory _FoodIntroduction(
      {required final String id,
      required final String childId,
      required final String foodCode,
      required final DateTime firstTriedAt,
      final String? reaction,
      final String? note}) = _$FoodIntroductionImpl;

  factory _FoodIntroduction.fromJson(Map<String, dynamic> json) =
      _$FoodIntroductionImpl.fromJson;

  @override
  String get id;
  @override
  String get childId;
  @override
  String get foodCode;
  @override
  DateTime get firstTriedAt;
  @override
  String? get reaction; // liked, disliked, refused, suspectedAllergy
  @override
  String? get note;

  /// Create a copy of FoodIntroduction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodIntroductionImplCopyWith<_$FoodIntroductionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Food _$FoodFromJson(Map<String, dynamic> json) {
  return _Food.fromJson(json);
}

/// @nodoc
mixin _$Food {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get allowedFromMonths => throw _privateConstructorUsedError;
  String get texture =>
      throw _privateConstructorUsedError; // puree, mashed, softChunks, fingerFood
  List<String> get preparation => throw _privateConstructorUsedError;
  String get portionGuide => throw _privateConstructorUsedError;
  List<String> get allergens => throw _privateConstructorUsedError;
  List<String> get avoidIf => throw _privateConstructorUsedError;
  String get sourceCitation => throw _privateConstructorUsedError;
  bool get isPremium => throw _privateConstructorUsedError;

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
      String name,
      int allowedFromMonths,
      String texture,
      List<String> preparation,
      String portionGuide,
      List<String> allergens,
      List<String> avoidIf,
      String sourceCitation,
      bool isPremium});
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
    Object? name = null,
    Object? allowedFromMonths = null,
    Object? texture = null,
    Object? preparation = null,
    Object? portionGuide = null,
    Object? allergens = null,
    Object? avoidIf = null,
    Object? sourceCitation = null,
    Object? isPremium = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
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
      String name,
      int allowedFromMonths,
      String texture,
      List<String> preparation,
      String portionGuide,
      List<String> allergens,
      List<String> avoidIf,
      String sourceCitation,
      bool isPremium});
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
    Object? name = null,
    Object? allowedFromMonths = null,
    Object? texture = null,
    Object? preparation = null,
    Object? portionGuide = null,
    Object? allergens = null,
    Object? avoidIf = null,
    Object? sourceCitation = null,
    Object? isPremium = null,
  }) {
    return _then(_$FoodImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoodImpl implements _Food {
  const _$FoodImpl(
      {required this.id,
      required this.name,
      required this.allowedFromMonths,
      required this.texture,
      required final List<String> preparation,
      required this.portionGuide,
      required final List<String> allergens,
      required final List<String> avoidIf,
      required this.sourceCitation,
      required this.isPremium})
      : _preparation = preparation,
        _allergens = allergens,
        _avoidIf = avoidIf;

  factory _$FoodImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoodImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int allowedFromMonths;
  @override
  final String texture;
// puree, mashed, softChunks, fingerFood
  final List<String> _preparation;
// puree, mashed, softChunks, fingerFood
  @override
  List<String> get preparation {
    if (_preparation is EqualUnmodifiableListView) return _preparation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preparation);
  }

  @override
  final String portionGuide;
  final List<String> _allergens;
  @override
  List<String> get allergens {
    if (_allergens is EqualUnmodifiableListView) return _allergens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allergens);
  }

  final List<String> _avoidIf;
  @override
  List<String> get avoidIf {
    if (_avoidIf is EqualUnmodifiableListView) return _avoidIf;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_avoidIf);
  }

  @override
  final String sourceCitation;
  @override
  final bool isPremium;

  @override
  String toString() {
    return 'Food(id: $id, name: $name, allowedFromMonths: $allowedFromMonths, texture: $texture, preparation: $preparation, portionGuide: $portionGuide, allergens: $allergens, avoidIf: $avoidIf, sourceCitation: $sourceCitation, isPremium: $isPremium)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
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
                other.sourceCitation == sourceCitation) &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      allowedFromMonths,
      texture,
      const DeepCollectionEquality().hash(_preparation),
      portionGuide,
      const DeepCollectionEquality().hash(_allergens),
      const DeepCollectionEquality().hash(_avoidIf),
      sourceCitation,
      isPremium);

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
      required final String name,
      required final int allowedFromMonths,
      required final String texture,
      required final List<String> preparation,
      required final String portionGuide,
      required final List<String> allergens,
      required final List<String> avoidIf,
      required final String sourceCitation,
      required final bool isPremium}) = _$FoodImpl;

  factory _Food.fromJson(Map<String, dynamic> json) = _$FoodImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
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
  @override
  bool get isPremium;

  /// Create a copy of Food
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodImplCopyWith<_$FoodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FoodRecommendation _$FoodRecommendationFromJson(Map<String, dynamic> json) {
  return _FoodRecommendation.fromJson(json);
}

/// @nodoc
mixin _$FoodRecommendation {
  Food get food => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  bool get isRepeatFavorite => throw _privateConstructorUsedError;

  /// Serializes this FoodRecommendation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FoodRecommendation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoodRecommendationCopyWith<FoodRecommendation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodRecommendationCopyWith<$Res> {
  factory $FoodRecommendationCopyWith(
          FoodRecommendation value, $Res Function(FoodRecommendation) then) =
      _$FoodRecommendationCopyWithImpl<$Res, FoodRecommendation>;
  @useResult
  $Res call({Food food, String reason, bool isRepeatFavorite});

  $FoodCopyWith<$Res> get food;
}

/// @nodoc
class _$FoodRecommendationCopyWithImpl<$Res, $Val extends FoodRecommendation>
    implements $FoodRecommendationCopyWith<$Res> {
  _$FoodRecommendationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FoodRecommendation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? food = null,
    Object? reason = null,
    Object? isRepeatFavorite = null,
  }) {
    return _then(_value.copyWith(
      food: null == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as Food,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      isRepeatFavorite: null == isRepeatFavorite
          ? _value.isRepeatFavorite
          : isRepeatFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of FoodRecommendation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FoodCopyWith<$Res> get food {
    return $FoodCopyWith<$Res>(_value.food, (value) {
      return _then(_value.copyWith(food: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FoodRecommendationImplCopyWith<$Res>
    implements $FoodRecommendationCopyWith<$Res> {
  factory _$$FoodRecommendationImplCopyWith(_$FoodRecommendationImpl value,
          $Res Function(_$FoodRecommendationImpl) then) =
      __$$FoodRecommendationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Food food, String reason, bool isRepeatFavorite});

  @override
  $FoodCopyWith<$Res> get food;
}

/// @nodoc
class __$$FoodRecommendationImplCopyWithImpl<$Res>
    extends _$FoodRecommendationCopyWithImpl<$Res, _$FoodRecommendationImpl>
    implements _$$FoodRecommendationImplCopyWith<$Res> {
  __$$FoodRecommendationImplCopyWithImpl(_$FoodRecommendationImpl _value,
      $Res Function(_$FoodRecommendationImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoodRecommendation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? food = null,
    Object? reason = null,
    Object? isRepeatFavorite = null,
  }) {
    return _then(_$FoodRecommendationImpl(
      food: null == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as Food,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      isRepeatFavorite: null == isRepeatFavorite
          ? _value.isRepeatFavorite
          : isRepeatFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoodRecommendationImpl implements _FoodRecommendation {
  const _$FoodRecommendationImpl(
      {required this.food,
      required this.reason,
      required this.isRepeatFavorite});

  factory _$FoodRecommendationImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoodRecommendationImplFromJson(json);

  @override
  final Food food;
  @override
  final String reason;
  @override
  final bool isRepeatFavorite;

  @override
  String toString() {
    return 'FoodRecommendation(food: $food, reason: $reason, isRepeatFavorite: $isRepeatFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodRecommendationImpl &&
            (identical(other.food, food) || other.food == food) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.isRepeatFavorite, isRepeatFavorite) ||
                other.isRepeatFavorite == isRepeatFavorite));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, food, reason, isRepeatFavorite);

  /// Create a copy of FoodRecommendation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodRecommendationImplCopyWith<_$FoodRecommendationImpl> get copyWith =>
      __$$FoodRecommendationImplCopyWithImpl<_$FoodRecommendationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FoodRecommendationImplToJson(
      this,
    );
  }
}

abstract class _FoodRecommendation implements FoodRecommendation {
  const factory _FoodRecommendation(
      {required final Food food,
      required final String reason,
      required final bool isRepeatFavorite}) = _$FoodRecommendationImpl;

  factory _FoodRecommendation.fromJson(Map<String, dynamic> json) =
      _$FoodRecommendationImpl.fromJson;

  @override
  Food get food;
  @override
  String get reason;
  @override
  bool get isRepeatFavorite;

  /// Create a copy of FoodRecommendation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodRecommendationImplCopyWith<_$FoodRecommendationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeeklyFoodPlan _$WeeklyFoodPlanFromJson(Map<String, dynamic> json) {
  return _WeeklyFoodPlan.fromJson(json);
}

/// @nodoc
mixin _$WeeklyFoodPlan {
  int get weekNumber => throw _privateConstructorUsedError;
  List<FoodRecommendation> get recommendations =>
      throw _privateConstructorUsedError;
  List<String> get shoppingList => throw _privateConstructorUsedError;

  /// Serializes this WeeklyFoodPlan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeeklyFoodPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeeklyFoodPlanCopyWith<WeeklyFoodPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyFoodPlanCopyWith<$Res> {
  factory $WeeklyFoodPlanCopyWith(
          WeeklyFoodPlan value, $Res Function(WeeklyFoodPlan) then) =
      _$WeeklyFoodPlanCopyWithImpl<$Res, WeeklyFoodPlan>;
  @useResult
  $Res call(
      {int weekNumber,
      List<FoodRecommendation> recommendations,
      List<String> shoppingList});
}

/// @nodoc
class _$WeeklyFoodPlanCopyWithImpl<$Res, $Val extends WeeklyFoodPlan>
    implements $WeeklyFoodPlanCopyWith<$Res> {
  _$WeeklyFoodPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeeklyFoodPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekNumber = null,
    Object? recommendations = null,
    Object? shoppingList = null,
  }) {
    return _then(_value.copyWith(
      weekNumber: null == weekNumber
          ? _value.weekNumber
          : weekNumber // ignore: cast_nullable_to_non_nullable
              as int,
      recommendations: null == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<FoodRecommendation>,
      shoppingList: null == shoppingList
          ? _value.shoppingList
          : shoppingList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeeklyFoodPlanImplCopyWith<$Res>
    implements $WeeklyFoodPlanCopyWith<$Res> {
  factory _$$WeeklyFoodPlanImplCopyWith(_$WeeklyFoodPlanImpl value,
          $Res Function(_$WeeklyFoodPlanImpl) then) =
      __$$WeeklyFoodPlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int weekNumber,
      List<FoodRecommendation> recommendations,
      List<String> shoppingList});
}

/// @nodoc
class __$$WeeklyFoodPlanImplCopyWithImpl<$Res>
    extends _$WeeklyFoodPlanCopyWithImpl<$Res, _$WeeklyFoodPlanImpl>
    implements _$$WeeklyFoodPlanImplCopyWith<$Res> {
  __$$WeeklyFoodPlanImplCopyWithImpl(
      _$WeeklyFoodPlanImpl _value, $Res Function(_$WeeklyFoodPlanImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeeklyFoodPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekNumber = null,
    Object? recommendations = null,
    Object? shoppingList = null,
  }) {
    return _then(_$WeeklyFoodPlanImpl(
      weekNumber: null == weekNumber
          ? _value.weekNumber
          : weekNumber // ignore: cast_nullable_to_non_nullable
              as int,
      recommendations: null == recommendations
          ? _value._recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<FoodRecommendation>,
      shoppingList: null == shoppingList
          ? _value._shoppingList
          : shoppingList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeeklyFoodPlanImpl implements _WeeklyFoodPlan {
  const _$WeeklyFoodPlanImpl(
      {required this.weekNumber,
      required final List<FoodRecommendation> recommendations,
      required final List<String> shoppingList})
      : _recommendations = recommendations,
        _shoppingList = shoppingList;

  factory _$WeeklyFoodPlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyFoodPlanImplFromJson(json);

  @override
  final int weekNumber;
  final List<FoodRecommendation> _recommendations;
  @override
  List<FoodRecommendation> get recommendations {
    if (_recommendations is EqualUnmodifiableListView) return _recommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendations);
  }

  final List<String> _shoppingList;
  @override
  List<String> get shoppingList {
    if (_shoppingList is EqualUnmodifiableListView) return _shoppingList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shoppingList);
  }

  @override
  String toString() {
    return 'WeeklyFoodPlan(weekNumber: $weekNumber, recommendations: $recommendations, shoppingList: $shoppingList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyFoodPlanImpl &&
            (identical(other.weekNumber, weekNumber) ||
                other.weekNumber == weekNumber) &&
            const DeepCollectionEquality()
                .equals(other._recommendations, _recommendations) &&
            const DeepCollectionEquality()
                .equals(other._shoppingList, _shoppingList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      weekNumber,
      const DeepCollectionEquality().hash(_recommendations),
      const DeepCollectionEquality().hash(_shoppingList));

  /// Create a copy of WeeklyFoodPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyFoodPlanImplCopyWith<_$WeeklyFoodPlanImpl> get copyWith =>
      __$$WeeklyFoodPlanImplCopyWithImpl<_$WeeklyFoodPlanImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyFoodPlanImplToJson(
      this,
    );
  }
}

abstract class _WeeklyFoodPlan implements WeeklyFoodPlan {
  const factory _WeeklyFoodPlan(
      {required final int weekNumber,
      required final List<FoodRecommendation> recommendations,
      required final List<String> shoppingList}) = _$WeeklyFoodPlanImpl;

  factory _WeeklyFoodPlan.fromJson(Map<String, dynamic> json) =
      _$WeeklyFoodPlanImpl.fromJson;

  @override
  int get weekNumber;
  @override
  List<FoodRecommendation> get recommendations;
  @override
  List<String> get shoppingList;

  /// Create a copy of WeeklyFoodPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeeklyFoodPlanImplCopyWith<_$WeeklyFoodPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

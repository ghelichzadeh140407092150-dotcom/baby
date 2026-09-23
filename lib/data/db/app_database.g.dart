// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $ChildrenTable extends Children
    with TableInfo<$ChildrenTable, ChildrenData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ChildrenTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _birthDateMeta =
      const VerificationMeta('birthDate');
  @override
  late final GeneratedColumn<DateTime> birthDate = GeneratedColumn<DateTime>(
      'birth_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _isPreBirthMeta =
      const VerificationMeta('isPreBirth');
  @override
  late final GeneratedColumn<bool> isPreBirth = GeneratedColumn<bool>(
      'is_pre_birth', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_pre_birth" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  late final GeneratedColumnWithTypeConverter<ChildSex?, String> sex =
      GeneratedColumn<String>('sex', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<ChildSex?>($ChildrenTable.$convertersexn);
  static const VerificationMeta _gestationalWeeksAtBirthMeta =
      const VerificationMeta('gestationalWeeksAtBirth');
  @override
  late final GeneratedColumn<int> gestationalWeeksAtBirth =
      GeneratedColumn<int>('gestational_weeks_at_birth', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _avatarSeedMeta =
      const VerificationMeta('avatarSeed');
  @override
  late final GeneratedColumn<int> avatarSeed = GeneratedColumn<int>(
      'avatar_seed', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        birthDate,
        isPreBirth,
        sex,
        gestationalWeeksAtBirth,
        avatarSeed,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'children';
  @override
  VerificationContext validateIntegrity(Insertable<ChildrenData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('birth_date')) {
      context.handle(_birthDateMeta,
          birthDate.isAcceptableOrUnknown(data['birth_date']!, _birthDateMeta));
    } else if (isInserting) {
      context.missing(_birthDateMeta);
    }
    if (data.containsKey('is_pre_birth')) {
      context.handle(
          _isPreBirthMeta,
          isPreBirth.isAcceptableOrUnknown(
              data['is_pre_birth']!, _isPreBirthMeta));
    }
    if (data.containsKey('gestational_weeks_at_birth')) {
      context.handle(
          _gestationalWeeksAtBirthMeta,
          gestationalWeeksAtBirth.isAcceptableOrUnknown(
              data['gestational_weeks_at_birth']!,
              _gestationalWeeksAtBirthMeta));
    }
    if (data.containsKey('avatar_seed')) {
      context.handle(
          _avatarSeedMeta,
          avatarSeed.isAcceptableOrUnknown(
              data['avatar_seed']!, _avatarSeedMeta));
    } else if (isInserting) {
      context.missing(_avatarSeedMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ChildrenData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ChildrenData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      birthDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}birth_date'])!,
      isPreBirth: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_pre_birth'])!,
      sex: $ChildrenTable.$convertersexn.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sex'])),
      gestationalWeeksAtBirth: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}gestational_weeks_at_birth']),
      avatarSeed: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}avatar_seed'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $ChildrenTable createAlias(String alias) {
    return $ChildrenTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<ChildSex, String, String> $convertersex =
      const EnumNameConverter<ChildSex>(ChildSex.values);
  static JsonTypeConverter2<ChildSex?, String?, String?> $convertersexn =
      JsonTypeConverter2.asNullable($convertersex);
}

class ChildrenData extends DataClass implements Insertable<ChildrenData> {
  final String id;
  final String name;
  final DateTime birthDate;
  final bool isPreBirth;
  final ChildSex? sex;
  final int? gestationalWeeksAtBirth;
  final int avatarSeed;
  final DateTime createdAt;
  final DateTime updatedAt;
  const ChildrenData(
      {required this.id,
      required this.name,
      required this.birthDate,
      required this.isPreBirth,
      this.sex,
      this.gestationalWeeksAtBirth,
      required this.avatarSeed,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['birth_date'] = Variable<DateTime>(birthDate);
    map['is_pre_birth'] = Variable<bool>(isPreBirth);
    if (!nullToAbsent || sex != null) {
      map['sex'] = Variable<String>($ChildrenTable.$convertersexn.toSql(sex));
    }
    if (!nullToAbsent || gestationalWeeksAtBirth != null) {
      map['gestational_weeks_at_birth'] =
          Variable<int>(gestationalWeeksAtBirth);
    }
    map['avatar_seed'] = Variable<int>(avatarSeed);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  ChildrenCompanion toCompanion(bool nullToAbsent) {
    return ChildrenCompanion(
      id: Value(id),
      name: Value(name),
      birthDate: Value(birthDate),
      isPreBirth: Value(isPreBirth),
      sex: sex == null && nullToAbsent ? const Value.absent() : Value(sex),
      gestationalWeeksAtBirth: gestationalWeeksAtBirth == null && nullToAbsent
          ? const Value.absent()
          : Value(gestationalWeeksAtBirth),
      avatarSeed: Value(avatarSeed),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory ChildrenData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ChildrenData(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      birthDate: serializer.fromJson<DateTime>(json['birthDate']),
      isPreBirth: serializer.fromJson<bool>(json['isPreBirth']),
      sex: $ChildrenTable.$convertersexn
          .fromJson(serializer.fromJson<String?>(json['sex'])),
      gestationalWeeksAtBirth:
          serializer.fromJson<int?>(json['gestationalWeeksAtBirth']),
      avatarSeed: serializer.fromJson<int>(json['avatarSeed']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'birthDate': serializer.toJson<DateTime>(birthDate),
      'isPreBirth': serializer.toJson<bool>(isPreBirth),
      'sex':
          serializer.toJson<String?>($ChildrenTable.$convertersexn.toJson(sex)),
      'gestationalWeeksAtBirth':
          serializer.toJson<int?>(gestationalWeeksAtBirth),
      'avatarSeed': serializer.toJson<int>(avatarSeed),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  ChildrenData copyWith(
          {String? id,
          String? name,
          DateTime? birthDate,
          bool? isPreBirth,
          Value<ChildSex?> sex = const Value.absent(),
          Value<int?> gestationalWeeksAtBirth = const Value.absent(),
          int? avatarSeed,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      ChildrenData(
        id: id ?? this.id,
        name: name ?? this.name,
        birthDate: birthDate ?? this.birthDate,
        isPreBirth: isPreBirth ?? this.isPreBirth,
        sex: sex.present ? sex.value : this.sex,
        gestationalWeeksAtBirth: gestationalWeeksAtBirth.present
            ? gestationalWeeksAtBirth.value
            : this.gestationalWeeksAtBirth,
        avatarSeed: avatarSeed ?? this.avatarSeed,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  ChildrenData copyWithCompanion(ChildrenCompanion data) {
    return ChildrenData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      birthDate: data.birthDate.present ? data.birthDate.value : this.birthDate,
      isPreBirth:
          data.isPreBirth.present ? data.isPreBirth.value : this.isPreBirth,
      sex: data.sex.present ? data.sex.value : this.sex,
      gestationalWeeksAtBirth: data.gestationalWeeksAtBirth.present
          ? data.gestationalWeeksAtBirth.value
          : this.gestationalWeeksAtBirth,
      avatarSeed:
          data.avatarSeed.present ? data.avatarSeed.value : this.avatarSeed,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ChildrenData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('birthDate: $birthDate, ')
          ..write('isPreBirth: $isPreBirth, ')
          ..write('sex: $sex, ')
          ..write('gestationalWeeksAtBirth: $gestationalWeeksAtBirth, ')
          ..write('avatarSeed: $avatarSeed, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, birthDate, isPreBirth, sex,
      gestationalWeeksAtBirth, avatarSeed, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ChildrenData &&
          other.id == this.id &&
          other.name == this.name &&
          other.birthDate == this.birthDate &&
          other.isPreBirth == this.isPreBirth &&
          other.sex == this.sex &&
          other.gestationalWeeksAtBirth == this.gestationalWeeksAtBirth &&
          other.avatarSeed == this.avatarSeed &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class ChildrenCompanion extends UpdateCompanion<ChildrenData> {
  final Value<String> id;
  final Value<String> name;
  final Value<DateTime> birthDate;
  final Value<bool> isPreBirth;
  final Value<ChildSex?> sex;
  final Value<int?> gestationalWeeksAtBirth;
  final Value<int> avatarSeed;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const ChildrenCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.birthDate = const Value.absent(),
    this.isPreBirth = const Value.absent(),
    this.sex = const Value.absent(),
    this.gestationalWeeksAtBirth = const Value.absent(),
    this.avatarSeed = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ChildrenCompanion.insert({
    required String id,
    required String name,
    required DateTime birthDate,
    this.isPreBirth = const Value.absent(),
    this.sex = const Value.absent(),
    this.gestationalWeeksAtBirth = const Value.absent(),
    required int avatarSeed,
    required DateTime createdAt,
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        birthDate = Value(birthDate),
        avatarSeed = Value(avatarSeed),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<ChildrenData> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<DateTime>? birthDate,
    Expression<bool>? isPreBirth,
    Expression<String>? sex,
    Expression<int>? gestationalWeeksAtBirth,
    Expression<int>? avatarSeed,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (birthDate != null) 'birth_date': birthDate,
      if (isPreBirth != null) 'is_pre_birth': isPreBirth,
      if (sex != null) 'sex': sex,
      if (gestationalWeeksAtBirth != null)
        'gestational_weeks_at_birth': gestationalWeeksAtBirth,
      if (avatarSeed != null) 'avatar_seed': avatarSeed,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ChildrenCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<DateTime>? birthDate,
      Value<bool>? isPreBirth,
      Value<ChildSex?>? sex,
      Value<int?>? gestationalWeeksAtBirth,
      Value<int>? avatarSeed,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<int>? rowid}) {
    return ChildrenCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      birthDate: birthDate ?? this.birthDate,
      isPreBirth: isPreBirth ?? this.isPreBirth,
      sex: sex ?? this.sex,
      gestationalWeeksAtBirth:
          gestationalWeeksAtBirth ?? this.gestationalWeeksAtBirth,
      avatarSeed: avatarSeed ?? this.avatarSeed,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (birthDate.present) {
      map['birth_date'] = Variable<DateTime>(birthDate.value);
    }
    if (isPreBirth.present) {
      map['is_pre_birth'] = Variable<bool>(isPreBirth.value);
    }
    if (sex.present) {
      map['sex'] =
          Variable<String>($ChildrenTable.$convertersexn.toSql(sex.value));
    }
    if (gestationalWeeksAtBirth.present) {
      map['gestational_weeks_at_birth'] =
          Variable<int>(gestationalWeeksAtBirth.value);
    }
    if (avatarSeed.present) {
      map['avatar_seed'] = Variable<int>(avatarSeed.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ChildrenCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('birthDate: $birthDate, ')
          ..write('isPreBirth: $isPreBirth, ')
          ..write('sex: $sex, ')
          ..write('gestationalWeeksAtBirth: $gestationalWeeksAtBirth, ')
          ..write('avatarSeed: $avatarSeed, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $GrowthEntriesTable extends GrowthEntries
    with TableInfo<$GrowthEntriesTable, GrowthEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GrowthEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _childIdMeta =
      const VerificationMeta('childId');
  @override
  late final GeneratedColumn<String> childId = GeneratedColumn<String>(
      'child_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES children (id) ON DELETE CASCADE'));
  static const VerificationMeta _measuredAtMeta =
      const VerificationMeta('measuredAt');
  @override
  late final GeneratedColumn<DateTime> measuredAt = GeneratedColumn<DateTime>(
      'measured_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _heightCmMeta =
      const VerificationMeta('heightCm');
  @override
  late final GeneratedColumn<double> heightCm = GeneratedColumn<double>(
      'height_cm', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _weightKgMeta =
      const VerificationMeta('weightKg');
  @override
  late final GeneratedColumn<double> weightKg = GeneratedColumn<double>(
      'weight_kg', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _headCircumferenceCmMeta =
      const VerificationMeta('headCircumferenceCm');
  @override
  late final GeneratedColumn<double> headCircumferenceCm =
      GeneratedColumn<double>('head_circumference_cm', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumnWithTypeConverter<MeasurementSource, String>
      source = GeneratedColumn<String>('source', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              defaultValue: const Constant(MeasurementSource.manual))
          .withConverter<MeasurementSource>(
              $GrowthEntriesTable.$convertersource);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        childId,
        measuredAt,
        heightCm,
        weightKg,
        headCircumferenceCm,
        note,
        source,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'growth_entries';
  @override
  VerificationContext validateIntegrity(Insertable<GrowthEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('child_id')) {
      context.handle(_childIdMeta,
          childId.isAcceptableOrUnknown(data['child_id']!, _childIdMeta));
    } else if (isInserting) {
      context.missing(_childIdMeta);
    }
    if (data.containsKey('measured_at')) {
      context.handle(
          _measuredAtMeta,
          measuredAt.isAcceptableOrUnknown(
              data['measured_at']!, _measuredAtMeta));
    } else if (isInserting) {
      context.missing(_measuredAtMeta);
    }
    if (data.containsKey('height_cm')) {
      context.handle(_heightCmMeta,
          heightCm.isAcceptableOrUnknown(data['height_cm']!, _heightCmMeta));
    }
    if (data.containsKey('weight_kg')) {
      context.handle(_weightKgMeta,
          weightKg.isAcceptableOrUnknown(data['weight_kg']!, _weightKgMeta));
    }
    if (data.containsKey('head_circumference_cm')) {
      context.handle(
          _headCircumferenceCmMeta,
          headCircumferenceCm.isAcceptableOrUnknown(
              data['head_circumference_cm']!, _headCircumferenceCmMeta));
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GrowthEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GrowthEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      childId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}child_id'])!,
      measuredAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}measured_at'])!,
      heightCm: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}height_cm']),
      weightKg: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}weight_kg']),
      headCircumferenceCm: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}head_circumference_cm']),
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note']),
      source: $GrowthEntriesTable.$convertersource.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source'])!),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $GrowthEntriesTable createAlias(String alias) {
    return $GrowthEntriesTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<MeasurementSource, String, String>
      $convertersource =
      const EnumNameConverter<MeasurementSource>(MeasurementSource.values);
}

class GrowthEntry extends DataClass implements Insertable<GrowthEntry> {
  final String id;
  final String childId;
  final DateTime measuredAt;
  final double? heightCm;
  final double? weightKg;
  final double? headCircumferenceCm;
  final String? note;
  final MeasurementSource source;
  final DateTime createdAt;
  const GrowthEntry(
      {required this.id,
      required this.childId,
      required this.measuredAt,
      this.heightCm,
      this.weightKg,
      this.headCircumferenceCm,
      this.note,
      required this.source,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['child_id'] = Variable<String>(childId);
    map['measured_at'] = Variable<DateTime>(measuredAt);
    if (!nullToAbsent || heightCm != null) {
      map['height_cm'] = Variable<double>(heightCm);
    }
    if (!nullToAbsent || weightKg != null) {
      map['weight_kg'] = Variable<double>(weightKg);
    }
    if (!nullToAbsent || headCircumferenceCm != null) {
      map['head_circumference_cm'] = Variable<double>(headCircumferenceCm);
    }
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    {
      map['source'] =
          Variable<String>($GrowthEntriesTable.$convertersource.toSql(source));
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  GrowthEntriesCompanion toCompanion(bool nullToAbsent) {
    return GrowthEntriesCompanion(
      id: Value(id),
      childId: Value(childId),
      measuredAt: Value(measuredAt),
      heightCm: heightCm == null && nullToAbsent
          ? const Value.absent()
          : Value(heightCm),
      weightKg: weightKg == null && nullToAbsent
          ? const Value.absent()
          : Value(weightKg),
      headCircumferenceCm: headCircumferenceCm == null && nullToAbsent
          ? const Value.absent()
          : Value(headCircumferenceCm),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      source: Value(source),
      createdAt: Value(createdAt),
    );
  }

  factory GrowthEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GrowthEntry(
      id: serializer.fromJson<String>(json['id']),
      childId: serializer.fromJson<String>(json['childId']),
      measuredAt: serializer.fromJson<DateTime>(json['measuredAt']),
      heightCm: serializer.fromJson<double?>(json['heightCm']),
      weightKg: serializer.fromJson<double?>(json['weightKg']),
      headCircumferenceCm:
          serializer.fromJson<double?>(json['headCircumferenceCm']),
      note: serializer.fromJson<String?>(json['note']),
      source: $GrowthEntriesTable.$convertersource
          .fromJson(serializer.fromJson<String>(json['source'])),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'childId': serializer.toJson<String>(childId),
      'measuredAt': serializer.toJson<DateTime>(measuredAt),
      'heightCm': serializer.toJson<double?>(heightCm),
      'weightKg': serializer.toJson<double?>(weightKg),
      'headCircumferenceCm': serializer.toJson<double?>(headCircumferenceCm),
      'note': serializer.toJson<String?>(note),
      'source': serializer
          .toJson<String>($GrowthEntriesTable.$convertersource.toJson(source)),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  GrowthEntry copyWith(
          {String? id,
          String? childId,
          DateTime? measuredAt,
          Value<double?> heightCm = const Value.absent(),
          Value<double?> weightKg = const Value.absent(),
          Value<double?> headCircumferenceCm = const Value.absent(),
          Value<String?> note = const Value.absent(),
          MeasurementSource? source,
          DateTime? createdAt}) =>
      GrowthEntry(
        id: id ?? this.id,
        childId: childId ?? this.childId,
        measuredAt: measuredAt ?? this.measuredAt,
        heightCm: heightCm.present ? heightCm.value : this.heightCm,
        weightKg: weightKg.present ? weightKg.value : this.weightKg,
        headCircumferenceCm: headCircumferenceCm.present
            ? headCircumferenceCm.value
            : this.headCircumferenceCm,
        note: note.present ? note.value : this.note,
        source: source ?? this.source,
        createdAt: createdAt ?? this.createdAt,
      );
  GrowthEntry copyWithCompanion(GrowthEntriesCompanion data) {
    return GrowthEntry(
      id: data.id.present ? data.id.value : this.id,
      childId: data.childId.present ? data.childId.value : this.childId,
      measuredAt:
          data.measuredAt.present ? data.measuredAt.value : this.measuredAt,
      heightCm: data.heightCm.present ? data.heightCm.value : this.heightCm,
      weightKg: data.weightKg.present ? data.weightKg.value : this.weightKg,
      headCircumferenceCm: data.headCircumferenceCm.present
          ? data.headCircumferenceCm.value
          : this.headCircumferenceCm,
      note: data.note.present ? data.note.value : this.note,
      source: data.source.present ? data.source.value : this.source,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GrowthEntry(')
          ..write('id: $id, ')
          ..write('childId: $childId, ')
          ..write('measuredAt: $measuredAt, ')
          ..write('heightCm: $heightCm, ')
          ..write('weightKg: $weightKg, ')
          ..write('headCircumferenceCm: $headCircumferenceCm, ')
          ..write('note: $note, ')
          ..write('source: $source, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, childId, measuredAt, heightCm, weightKg,
      headCircumferenceCm, note, source, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GrowthEntry &&
          other.id == this.id &&
          other.childId == this.childId &&
          other.measuredAt == this.measuredAt &&
          other.heightCm == this.heightCm &&
          other.weightKg == this.weightKg &&
          other.headCircumferenceCm == this.headCircumferenceCm &&
          other.note == this.note &&
          other.source == this.source &&
          other.createdAt == this.createdAt);
}

class GrowthEntriesCompanion extends UpdateCompanion<GrowthEntry> {
  final Value<String> id;
  final Value<String> childId;
  final Value<DateTime> measuredAt;
  final Value<double?> heightCm;
  final Value<double?> weightKg;
  final Value<double?> headCircumferenceCm;
  final Value<String?> note;
  final Value<MeasurementSource> source;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const GrowthEntriesCompanion({
    this.id = const Value.absent(),
    this.childId = const Value.absent(),
    this.measuredAt = const Value.absent(),
    this.heightCm = const Value.absent(),
    this.weightKg = const Value.absent(),
    this.headCircumferenceCm = const Value.absent(),
    this.note = const Value.absent(),
    this.source = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GrowthEntriesCompanion.insert({
    required String id,
    required String childId,
    required DateTime measuredAt,
    this.heightCm = const Value.absent(),
    this.weightKg = const Value.absent(),
    this.headCircumferenceCm = const Value.absent(),
    this.note = const Value.absent(),
    this.source = const Value.absent(),
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        childId = Value(childId),
        measuredAt = Value(measuredAt),
        createdAt = Value(createdAt);
  static Insertable<GrowthEntry> custom({
    Expression<String>? id,
    Expression<String>? childId,
    Expression<DateTime>? measuredAt,
    Expression<double>? heightCm,
    Expression<double>? weightKg,
    Expression<double>? headCircumferenceCm,
    Expression<String>? note,
    Expression<String>? source,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (childId != null) 'child_id': childId,
      if (measuredAt != null) 'measured_at': measuredAt,
      if (heightCm != null) 'height_cm': heightCm,
      if (weightKg != null) 'weight_kg': weightKg,
      if (headCircumferenceCm != null)
        'head_circumference_cm': headCircumferenceCm,
      if (note != null) 'note': note,
      if (source != null) 'source': source,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GrowthEntriesCompanion copyWith(
      {Value<String>? id,
      Value<String>? childId,
      Value<DateTime>? measuredAt,
      Value<double?>? heightCm,
      Value<double?>? weightKg,
      Value<double?>? headCircumferenceCm,
      Value<String?>? note,
      Value<MeasurementSource>? source,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return GrowthEntriesCompanion(
      id: id ?? this.id,
      childId: childId ?? this.childId,
      measuredAt: measuredAt ?? this.measuredAt,
      heightCm: heightCm ?? this.heightCm,
      weightKg: weightKg ?? this.weightKg,
      headCircumferenceCm: headCircumferenceCm ?? this.headCircumferenceCm,
      note: note ?? this.note,
      source: source ?? this.source,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (childId.present) {
      map['child_id'] = Variable<String>(childId.value);
    }
    if (measuredAt.present) {
      map['measured_at'] = Variable<DateTime>(measuredAt.value);
    }
    if (heightCm.present) {
      map['height_cm'] = Variable<double>(heightCm.value);
    }
    if (weightKg.present) {
      map['weight_kg'] = Variable<double>(weightKg.value);
    }
    if (headCircumferenceCm.present) {
      map['head_circumference_cm'] =
          Variable<double>(headCircumferenceCm.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (source.present) {
      map['source'] = Variable<String>(
          $GrowthEntriesTable.$convertersource.toSql(source.value));
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GrowthEntriesCompanion(')
          ..write('id: $id, ')
          ..write('childId: $childId, ')
          ..write('measuredAt: $measuredAt, ')
          ..write('heightCm: $heightCm, ')
          ..write('weightKg: $weightKg, ')
          ..write('headCircumferenceCm: $headCircumferenceCm, ')
          ..write('note: $note, ')
          ..write('source: $source, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $VaccineDosesTable extends VaccineDoses
    with TableInfo<$VaccineDosesTable, VaccineDose> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VaccineDosesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _childIdMeta =
      const VerificationMeta('childId');
  @override
  late final GeneratedColumn<String> childId = GeneratedColumn<String>(
      'child_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES children (id) ON DELETE CASCADE'));
  static const VerificationMeta _vaccineCodeMeta =
      const VerificationMeta('vaccineCode');
  @override
  late final GeneratedColumn<String> vaccineCode = GeneratedColumn<String>(
      'vaccine_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _doseNumberMeta =
      const VerificationMeta('doseNumber');
  @override
  late final GeneratedColumn<int> doseNumber = GeneratedColumn<int>(
      'dose_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _scheduledAgeDaysMeta =
      const VerificationMeta('scheduledAgeDays');
  @override
  late final GeneratedColumn<int> scheduledAgeDays = GeneratedColumn<int>(
      'scheduled_age_days', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _dueDateMeta =
      const VerificationMeta('dueDate');
  @override
  late final GeneratedColumn<DateTime> dueDate = GeneratedColumn<DateTime>(
      'due_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _administeredAtMeta =
      const VerificationMeta('administeredAt');
  @override
  late final GeneratedColumn<DateTime> administeredAt =
      GeneratedColumn<DateTime>('administered_at', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _skippedMeta =
      const VerificationMeta('skipped');
  @override
  late final GeneratedColumn<bool> skipped = GeneratedColumn<bool>(
      'skipped', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("skipped" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        childId,
        vaccineCode,
        doseNumber,
        scheduledAgeDays,
        dueDate,
        administeredAt,
        skipped,
        note,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'vaccine_doses';
  @override
  VerificationContext validateIntegrity(Insertable<VaccineDose> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('child_id')) {
      context.handle(_childIdMeta,
          childId.isAcceptableOrUnknown(data['child_id']!, _childIdMeta));
    } else if (isInserting) {
      context.missing(_childIdMeta);
    }
    if (data.containsKey('vaccine_code')) {
      context.handle(
          _vaccineCodeMeta,
          vaccineCode.isAcceptableOrUnknown(
              data['vaccine_code']!, _vaccineCodeMeta));
    } else if (isInserting) {
      context.missing(_vaccineCodeMeta);
    }
    if (data.containsKey('dose_number')) {
      context.handle(
          _doseNumberMeta,
          doseNumber.isAcceptableOrUnknown(
              data['dose_number']!, _doseNumberMeta));
    } else if (isInserting) {
      context.missing(_doseNumberMeta);
    }
    if (data.containsKey('scheduled_age_days')) {
      context.handle(
          _scheduledAgeDaysMeta,
          scheduledAgeDays.isAcceptableOrUnknown(
              data['scheduled_age_days']!, _scheduledAgeDaysMeta));
    } else if (isInserting) {
      context.missing(_scheduledAgeDaysMeta);
    }
    if (data.containsKey('due_date')) {
      context.handle(_dueDateMeta,
          dueDate.isAcceptableOrUnknown(data['due_date']!, _dueDateMeta));
    } else if (isInserting) {
      context.missing(_dueDateMeta);
    }
    if (data.containsKey('administered_at')) {
      context.handle(
          _administeredAtMeta,
          administeredAt.isAcceptableOrUnknown(
              data['administered_at']!, _administeredAtMeta));
    }
    if (data.containsKey('skipped')) {
      context.handle(_skippedMeta,
          skipped.isAcceptableOrUnknown(data['skipped']!, _skippedMeta));
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  VaccineDose map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return VaccineDose(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      childId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}child_id'])!,
      vaccineCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}vaccine_code'])!,
      doseNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}dose_number'])!,
      scheduledAgeDays: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}scheduled_age_days'])!,
      dueDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}due_date'])!,
      administeredAt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}administered_at']),
      skipped: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}skipped'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $VaccineDosesTable createAlias(String alias) {
    return $VaccineDosesTable(attachedDatabase, alias);
  }
}

class VaccineDose extends DataClass implements Insertable<VaccineDose> {
  final String id;
  final String childId;
  final String vaccineCode;
  final int doseNumber;
  final int scheduledAgeDays;
  final DateTime dueDate;
  final DateTime? administeredAt;
  final bool skipped;
  final String? note;
  final DateTime createdAt;
  const VaccineDose(
      {required this.id,
      required this.childId,
      required this.vaccineCode,
      required this.doseNumber,
      required this.scheduledAgeDays,
      required this.dueDate,
      this.administeredAt,
      required this.skipped,
      this.note,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['child_id'] = Variable<String>(childId);
    map['vaccine_code'] = Variable<String>(vaccineCode);
    map['dose_number'] = Variable<int>(doseNumber);
    map['scheduled_age_days'] = Variable<int>(scheduledAgeDays);
    map['due_date'] = Variable<DateTime>(dueDate);
    if (!nullToAbsent || administeredAt != null) {
      map['administered_at'] = Variable<DateTime>(administeredAt);
    }
    map['skipped'] = Variable<bool>(skipped);
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  VaccineDosesCompanion toCompanion(bool nullToAbsent) {
    return VaccineDosesCompanion(
      id: Value(id),
      childId: Value(childId),
      vaccineCode: Value(vaccineCode),
      doseNumber: Value(doseNumber),
      scheduledAgeDays: Value(scheduledAgeDays),
      dueDate: Value(dueDate),
      administeredAt: administeredAt == null && nullToAbsent
          ? const Value.absent()
          : Value(administeredAt),
      skipped: Value(skipped),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      createdAt: Value(createdAt),
    );
  }

  factory VaccineDose.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return VaccineDose(
      id: serializer.fromJson<String>(json['id']),
      childId: serializer.fromJson<String>(json['childId']),
      vaccineCode: serializer.fromJson<String>(json['vaccineCode']),
      doseNumber: serializer.fromJson<int>(json['doseNumber']),
      scheduledAgeDays: serializer.fromJson<int>(json['scheduledAgeDays']),
      dueDate: serializer.fromJson<DateTime>(json['dueDate']),
      administeredAt: serializer.fromJson<DateTime?>(json['administeredAt']),
      skipped: serializer.fromJson<bool>(json['skipped']),
      note: serializer.fromJson<String?>(json['note']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'childId': serializer.toJson<String>(childId),
      'vaccineCode': serializer.toJson<String>(vaccineCode),
      'doseNumber': serializer.toJson<int>(doseNumber),
      'scheduledAgeDays': serializer.toJson<int>(scheduledAgeDays),
      'dueDate': serializer.toJson<DateTime>(dueDate),
      'administeredAt': serializer.toJson<DateTime?>(administeredAt),
      'skipped': serializer.toJson<bool>(skipped),
      'note': serializer.toJson<String?>(note),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  VaccineDose copyWith(
          {String? id,
          String? childId,
          String? vaccineCode,
          int? doseNumber,
          int? scheduledAgeDays,
          DateTime? dueDate,
          Value<DateTime?> administeredAt = const Value.absent(),
          bool? skipped,
          Value<String?> note = const Value.absent(),
          DateTime? createdAt}) =>
      VaccineDose(
        id: id ?? this.id,
        childId: childId ?? this.childId,
        vaccineCode: vaccineCode ?? this.vaccineCode,
        doseNumber: doseNumber ?? this.doseNumber,
        scheduledAgeDays: scheduledAgeDays ?? this.scheduledAgeDays,
        dueDate: dueDate ?? this.dueDate,
        administeredAt:
            administeredAt.present ? administeredAt.value : this.administeredAt,
        skipped: skipped ?? this.skipped,
        note: note.present ? note.value : this.note,
        createdAt: createdAt ?? this.createdAt,
      );
  VaccineDose copyWithCompanion(VaccineDosesCompanion data) {
    return VaccineDose(
      id: data.id.present ? data.id.value : this.id,
      childId: data.childId.present ? data.childId.value : this.childId,
      vaccineCode:
          data.vaccineCode.present ? data.vaccineCode.value : this.vaccineCode,
      doseNumber:
          data.doseNumber.present ? data.doseNumber.value : this.doseNumber,
      scheduledAgeDays: data.scheduledAgeDays.present
          ? data.scheduledAgeDays.value
          : this.scheduledAgeDays,
      dueDate: data.dueDate.present ? data.dueDate.value : this.dueDate,
      administeredAt: data.administeredAt.present
          ? data.administeredAt.value
          : this.administeredAt,
      skipped: data.skipped.present ? data.skipped.value : this.skipped,
      note: data.note.present ? data.note.value : this.note,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('VaccineDose(')
          ..write('id: $id, ')
          ..write('childId: $childId, ')
          ..write('vaccineCode: $vaccineCode, ')
          ..write('doseNumber: $doseNumber, ')
          ..write('scheduledAgeDays: $scheduledAgeDays, ')
          ..write('dueDate: $dueDate, ')
          ..write('administeredAt: $administeredAt, ')
          ..write('skipped: $skipped, ')
          ..write('note: $note, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, childId, vaccineCode, doseNumber,
      scheduledAgeDays, dueDate, administeredAt, skipped, note, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is VaccineDose &&
          other.id == this.id &&
          other.childId == this.childId &&
          other.vaccineCode == this.vaccineCode &&
          other.doseNumber == this.doseNumber &&
          other.scheduledAgeDays == this.scheduledAgeDays &&
          other.dueDate == this.dueDate &&
          other.administeredAt == this.administeredAt &&
          other.skipped == this.skipped &&
          other.note == this.note &&
          other.createdAt == this.createdAt);
}

class VaccineDosesCompanion extends UpdateCompanion<VaccineDose> {
  final Value<String> id;
  final Value<String> childId;
  final Value<String> vaccineCode;
  final Value<int> doseNumber;
  final Value<int> scheduledAgeDays;
  final Value<DateTime> dueDate;
  final Value<DateTime?> administeredAt;
  final Value<bool> skipped;
  final Value<String?> note;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const VaccineDosesCompanion({
    this.id = const Value.absent(),
    this.childId = const Value.absent(),
    this.vaccineCode = const Value.absent(),
    this.doseNumber = const Value.absent(),
    this.scheduledAgeDays = const Value.absent(),
    this.dueDate = const Value.absent(),
    this.administeredAt = const Value.absent(),
    this.skipped = const Value.absent(),
    this.note = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  VaccineDosesCompanion.insert({
    required String id,
    required String childId,
    required String vaccineCode,
    required int doseNumber,
    required int scheduledAgeDays,
    required DateTime dueDate,
    this.administeredAt = const Value.absent(),
    this.skipped = const Value.absent(),
    this.note = const Value.absent(),
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        childId = Value(childId),
        vaccineCode = Value(vaccineCode),
        doseNumber = Value(doseNumber),
        scheduledAgeDays = Value(scheduledAgeDays),
        dueDate = Value(dueDate),
        createdAt = Value(createdAt);
  static Insertable<VaccineDose> custom({
    Expression<String>? id,
    Expression<String>? childId,
    Expression<String>? vaccineCode,
    Expression<int>? doseNumber,
    Expression<int>? scheduledAgeDays,
    Expression<DateTime>? dueDate,
    Expression<DateTime>? administeredAt,
    Expression<bool>? skipped,
    Expression<String>? note,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (childId != null) 'child_id': childId,
      if (vaccineCode != null) 'vaccine_code': vaccineCode,
      if (doseNumber != null) 'dose_number': doseNumber,
      if (scheduledAgeDays != null) 'scheduled_age_days': scheduledAgeDays,
      if (dueDate != null) 'due_date': dueDate,
      if (administeredAt != null) 'administered_at': administeredAt,
      if (skipped != null) 'skipped': skipped,
      if (note != null) 'note': note,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  VaccineDosesCompanion copyWith(
      {Value<String>? id,
      Value<String>? childId,
      Value<String>? vaccineCode,
      Value<int>? doseNumber,
      Value<int>? scheduledAgeDays,
      Value<DateTime>? dueDate,
      Value<DateTime?>? administeredAt,
      Value<bool>? skipped,
      Value<String?>? note,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return VaccineDosesCompanion(
      id: id ?? this.id,
      childId: childId ?? this.childId,
      vaccineCode: vaccineCode ?? this.vaccineCode,
      doseNumber: doseNumber ?? this.doseNumber,
      scheduledAgeDays: scheduledAgeDays ?? this.scheduledAgeDays,
      dueDate: dueDate ?? this.dueDate,
      administeredAt: administeredAt ?? this.administeredAt,
      skipped: skipped ?? this.skipped,
      note: note ?? this.note,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (childId.present) {
      map['child_id'] = Variable<String>(childId.value);
    }
    if (vaccineCode.present) {
      map['vaccine_code'] = Variable<String>(vaccineCode.value);
    }
    if (doseNumber.present) {
      map['dose_number'] = Variable<int>(doseNumber.value);
    }
    if (scheduledAgeDays.present) {
      map['scheduled_age_days'] = Variable<int>(scheduledAgeDays.value);
    }
    if (dueDate.present) {
      map['due_date'] = Variable<DateTime>(dueDate.value);
    }
    if (administeredAt.present) {
      map['administered_at'] = Variable<DateTime>(administeredAt.value);
    }
    if (skipped.present) {
      map['skipped'] = Variable<bool>(skipped.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VaccineDosesCompanion(')
          ..write('id: $id, ')
          ..write('childId: $childId, ')
          ..write('vaccineCode: $vaccineCode, ')
          ..write('doseNumber: $doseNumber, ')
          ..write('scheduledAgeDays: $scheduledAgeDays, ')
          ..write('dueDate: $dueDate, ')
          ..write('administeredAt: $administeredAt, ')
          ..write('skipped: $skipped, ')
          ..write('note: $note, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TeethTable extends Teeth with TableInfo<$TeethTable, TeethData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TeethTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _childIdMeta =
      const VerificationMeta('childId');
  @override
  late final GeneratedColumn<String> childId = GeneratedColumn<String>(
      'child_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES children (id) ON DELETE CASCADE'));
  static const VerificationMeta _toothCodeMeta =
      const VerificationMeta('toothCode');
  @override
  late final GeneratedColumn<String> toothCode = GeneratedColumn<String>(
      'tooth_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _eruptedAtMeta =
      const VerificationMeta('eruptedAt');
  @override
  late final GeneratedColumn<DateTime> eruptedAt = GeneratedColumn<DateTime>(
      'erupted_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, childId, toothCode, eruptedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'teeth';
  @override
  VerificationContext validateIntegrity(Insertable<TeethData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('child_id')) {
      context.handle(_childIdMeta,
          childId.isAcceptableOrUnknown(data['child_id']!, _childIdMeta));
    } else if (isInserting) {
      context.missing(_childIdMeta);
    }
    if (data.containsKey('tooth_code')) {
      context.handle(_toothCodeMeta,
          toothCode.isAcceptableOrUnknown(data['tooth_code']!, _toothCodeMeta));
    } else if (isInserting) {
      context.missing(_toothCodeMeta);
    }
    if (data.containsKey('erupted_at')) {
      context.handle(_eruptedAtMeta,
          eruptedAt.isAcceptableOrUnknown(data['erupted_at']!, _eruptedAtMeta));
    } else if (isInserting) {
      context.missing(_eruptedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TeethData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TeethData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      childId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}child_id'])!,
      toothCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tooth_code'])!,
      eruptedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}erupted_at'])!,
    );
  }

  @override
  $TeethTable createAlias(String alias) {
    return $TeethTable(attachedDatabase, alias);
  }
}

class TeethData extends DataClass implements Insertable<TeethData> {
  final String id;
  final String childId;
  final String toothCode;
  final DateTime eruptedAt;
  const TeethData(
      {required this.id,
      required this.childId,
      required this.toothCode,
      required this.eruptedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['child_id'] = Variable<String>(childId);
    map['tooth_code'] = Variable<String>(toothCode);
    map['erupted_at'] = Variable<DateTime>(eruptedAt);
    return map;
  }

  TeethCompanion toCompanion(bool nullToAbsent) {
    return TeethCompanion(
      id: Value(id),
      childId: Value(childId),
      toothCode: Value(toothCode),
      eruptedAt: Value(eruptedAt),
    );
  }

  factory TeethData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TeethData(
      id: serializer.fromJson<String>(json['id']),
      childId: serializer.fromJson<String>(json['childId']),
      toothCode: serializer.fromJson<String>(json['toothCode']),
      eruptedAt: serializer.fromJson<DateTime>(json['eruptedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'childId': serializer.toJson<String>(childId),
      'toothCode': serializer.toJson<String>(toothCode),
      'eruptedAt': serializer.toJson<DateTime>(eruptedAt),
    };
  }

  TeethData copyWith(
          {String? id,
          String? childId,
          String? toothCode,
          DateTime? eruptedAt}) =>
      TeethData(
        id: id ?? this.id,
        childId: childId ?? this.childId,
        toothCode: toothCode ?? this.toothCode,
        eruptedAt: eruptedAt ?? this.eruptedAt,
      );
  TeethData copyWithCompanion(TeethCompanion data) {
    return TeethData(
      id: data.id.present ? data.id.value : this.id,
      childId: data.childId.present ? data.childId.value : this.childId,
      toothCode: data.toothCode.present ? data.toothCode.value : this.toothCode,
      eruptedAt: data.eruptedAt.present ? data.eruptedAt.value : this.eruptedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TeethData(')
          ..write('id: $id, ')
          ..write('childId: $childId, ')
          ..write('toothCode: $toothCode, ')
          ..write('eruptedAt: $eruptedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, childId, toothCode, eruptedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TeethData &&
          other.id == this.id &&
          other.childId == this.childId &&
          other.toothCode == this.toothCode &&
          other.eruptedAt == this.eruptedAt);
}

class TeethCompanion extends UpdateCompanion<TeethData> {
  final Value<String> id;
  final Value<String> childId;
  final Value<String> toothCode;
  final Value<DateTime> eruptedAt;
  final Value<int> rowid;
  const TeethCompanion({
    this.id = const Value.absent(),
    this.childId = const Value.absent(),
    this.toothCode = const Value.absent(),
    this.eruptedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TeethCompanion.insert({
    required String id,
    required String childId,
    required String toothCode,
    required DateTime eruptedAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        childId = Value(childId),
        toothCode = Value(toothCode),
        eruptedAt = Value(eruptedAt);
  static Insertable<TeethData> custom({
    Expression<String>? id,
    Expression<String>? childId,
    Expression<String>? toothCode,
    Expression<DateTime>? eruptedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (childId != null) 'child_id': childId,
      if (toothCode != null) 'tooth_code': toothCode,
      if (eruptedAt != null) 'erupted_at': eruptedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TeethCompanion copyWith(
      {Value<String>? id,
      Value<String>? childId,
      Value<String>? toothCode,
      Value<DateTime>? eruptedAt,
      Value<int>? rowid}) {
    return TeethCompanion(
      id: id ?? this.id,
      childId: childId ?? this.childId,
      toothCode: toothCode ?? this.toothCode,
      eruptedAt: eruptedAt ?? this.eruptedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (childId.present) {
      map['child_id'] = Variable<String>(childId.value);
    }
    if (toothCode.present) {
      map['tooth_code'] = Variable<String>(toothCode.value);
    }
    if (eruptedAt.present) {
      map['erupted_at'] = Variable<DateTime>(eruptedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TeethCompanion(')
          ..write('id: $id, ')
          ..write('childId: $childId, ')
          ..write('toothCode: $toothCode, ')
          ..write('eruptedAt: $eruptedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MilestonesTable extends Milestones
    with TableInfo<$MilestonesTable, Milestone> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MilestonesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _childIdMeta =
      const VerificationMeta('childId');
  @override
  late final GeneratedColumn<String> childId = GeneratedColumn<String>(
      'child_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES children (id) ON DELETE CASCADE'));
  static const VerificationMeta _milestoneCodeMeta =
      const VerificationMeta('milestoneCode');
  @override
  late final GeneratedColumn<String> milestoneCode = GeneratedColumn<String>(
      'milestone_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _achievedAtMeta =
      const VerificationMeta('achievedAt');
  @override
  late final GeneratedColumn<DateTime> achievedAt = GeneratedColumn<DateTime>(
      'achieved_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _expectedAgeMonthsMinMeta =
      const VerificationMeta('expectedAgeMonthsMin');
  @override
  late final GeneratedColumn<int> expectedAgeMonthsMin = GeneratedColumn<int>(
      'expected_age_months_min', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _expectedAgeMonthsMaxMeta =
      const VerificationMeta('expectedAgeMonthsMax');
  @override
  late final GeneratedColumn<int> expectedAgeMonthsMax = GeneratedColumn<int>(
      'expected_age_months_max', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        childId,
        milestoneCode,
        achievedAt,
        expectedAgeMonthsMin,
        expectedAgeMonthsMax
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'milestones';
  @override
  VerificationContext validateIntegrity(Insertable<Milestone> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('child_id')) {
      context.handle(_childIdMeta,
          childId.isAcceptableOrUnknown(data['child_id']!, _childIdMeta));
    } else if (isInserting) {
      context.missing(_childIdMeta);
    }
    if (data.containsKey('milestone_code')) {
      context.handle(
          _milestoneCodeMeta,
          milestoneCode.isAcceptableOrUnknown(
              data['milestone_code']!, _milestoneCodeMeta));
    } else if (isInserting) {
      context.missing(_milestoneCodeMeta);
    }
    if (data.containsKey('achieved_at')) {
      context.handle(
          _achievedAtMeta,
          achievedAt.isAcceptableOrUnknown(
              data['achieved_at']!, _achievedAtMeta));
    }
    if (data.containsKey('expected_age_months_min')) {
      context.handle(
          _expectedAgeMonthsMinMeta,
          expectedAgeMonthsMin.isAcceptableOrUnknown(
              data['expected_age_months_min']!, _expectedAgeMonthsMinMeta));
    } else if (isInserting) {
      context.missing(_expectedAgeMonthsMinMeta);
    }
    if (data.containsKey('expected_age_months_max')) {
      context.handle(
          _expectedAgeMonthsMaxMeta,
          expectedAgeMonthsMax.isAcceptableOrUnknown(
              data['expected_age_months_max']!, _expectedAgeMonthsMaxMeta));
    } else if (isInserting) {
      context.missing(_expectedAgeMonthsMaxMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Milestone map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Milestone(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      childId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}child_id'])!,
      milestoneCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}milestone_code'])!,
      achievedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}achieved_at']),
      expectedAgeMonthsMin: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}expected_age_months_min'])!,
      expectedAgeMonthsMax: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}expected_age_months_max'])!,
    );
  }

  @override
  $MilestonesTable createAlias(String alias) {
    return $MilestonesTable(attachedDatabase, alias);
  }
}

class Milestone extends DataClass implements Insertable<Milestone> {
  final String id;
  final String childId;
  final String milestoneCode;
  final DateTime? achievedAt;
  final int expectedAgeMonthsMin;
  final int expectedAgeMonthsMax;
  const Milestone(
      {required this.id,
      required this.childId,
      required this.milestoneCode,
      this.achievedAt,
      required this.expectedAgeMonthsMin,
      required this.expectedAgeMonthsMax});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['child_id'] = Variable<String>(childId);
    map['milestone_code'] = Variable<String>(milestoneCode);
    if (!nullToAbsent || achievedAt != null) {
      map['achieved_at'] = Variable<DateTime>(achievedAt);
    }
    map['expected_age_months_min'] = Variable<int>(expectedAgeMonthsMin);
    map['expected_age_months_max'] = Variable<int>(expectedAgeMonthsMax);
    return map;
  }

  MilestonesCompanion toCompanion(bool nullToAbsent) {
    return MilestonesCompanion(
      id: Value(id),
      childId: Value(childId),
      milestoneCode: Value(milestoneCode),
      achievedAt: achievedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(achievedAt),
      expectedAgeMonthsMin: Value(expectedAgeMonthsMin),
      expectedAgeMonthsMax: Value(expectedAgeMonthsMax),
    );
  }

  factory Milestone.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Milestone(
      id: serializer.fromJson<String>(json['id']),
      childId: serializer.fromJson<String>(json['childId']),
      milestoneCode: serializer.fromJson<String>(json['milestoneCode']),
      achievedAt: serializer.fromJson<DateTime?>(json['achievedAt']),
      expectedAgeMonthsMin:
          serializer.fromJson<int>(json['expectedAgeMonthsMin']),
      expectedAgeMonthsMax:
          serializer.fromJson<int>(json['expectedAgeMonthsMax']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'childId': serializer.toJson<String>(childId),
      'milestoneCode': serializer.toJson<String>(milestoneCode),
      'achievedAt': serializer.toJson<DateTime?>(achievedAt),
      'expectedAgeMonthsMin': serializer.toJson<int>(expectedAgeMonthsMin),
      'expectedAgeMonthsMax': serializer.toJson<int>(expectedAgeMonthsMax),
    };
  }

  Milestone copyWith(
          {String? id,
          String? childId,
          String? milestoneCode,
          Value<DateTime?> achievedAt = const Value.absent(),
          int? expectedAgeMonthsMin,
          int? expectedAgeMonthsMax}) =>
      Milestone(
        id: id ?? this.id,
        childId: childId ?? this.childId,
        milestoneCode: milestoneCode ?? this.milestoneCode,
        achievedAt: achievedAt.present ? achievedAt.value : this.achievedAt,
        expectedAgeMonthsMin: expectedAgeMonthsMin ?? this.expectedAgeMonthsMin,
        expectedAgeMonthsMax: expectedAgeMonthsMax ?? this.expectedAgeMonthsMax,
      );
  Milestone copyWithCompanion(MilestonesCompanion data) {
    return Milestone(
      id: data.id.present ? data.id.value : this.id,
      childId: data.childId.present ? data.childId.value : this.childId,
      milestoneCode: data.milestoneCode.present
          ? data.milestoneCode.value
          : this.milestoneCode,
      achievedAt:
          data.achievedAt.present ? data.achievedAt.value : this.achievedAt,
      expectedAgeMonthsMin: data.expectedAgeMonthsMin.present
          ? data.expectedAgeMonthsMin.value
          : this.expectedAgeMonthsMin,
      expectedAgeMonthsMax: data.expectedAgeMonthsMax.present
          ? data.expectedAgeMonthsMax.value
          : this.expectedAgeMonthsMax,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Milestone(')
          ..write('id: $id, ')
          ..write('childId: $childId, ')
          ..write('milestoneCode: $milestoneCode, ')
          ..write('achievedAt: $achievedAt, ')
          ..write('expectedAgeMonthsMin: $expectedAgeMonthsMin, ')
          ..write('expectedAgeMonthsMax: $expectedAgeMonthsMax')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, childId, milestoneCode, achievedAt,
      expectedAgeMonthsMin, expectedAgeMonthsMax);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Milestone &&
          other.id == this.id &&
          other.childId == this.childId &&
          other.milestoneCode == this.milestoneCode &&
          other.achievedAt == this.achievedAt &&
          other.expectedAgeMonthsMin == this.expectedAgeMonthsMin &&
          other.expectedAgeMonthsMax == this.expectedAgeMonthsMax);
}

class MilestonesCompanion extends UpdateCompanion<Milestone> {
  final Value<String> id;
  final Value<String> childId;
  final Value<String> milestoneCode;
  final Value<DateTime?> achievedAt;
  final Value<int> expectedAgeMonthsMin;
  final Value<int> expectedAgeMonthsMax;
  final Value<int> rowid;
  const MilestonesCompanion({
    this.id = const Value.absent(),
    this.childId = const Value.absent(),
    this.milestoneCode = const Value.absent(),
    this.achievedAt = const Value.absent(),
    this.expectedAgeMonthsMin = const Value.absent(),
    this.expectedAgeMonthsMax = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MilestonesCompanion.insert({
    required String id,
    required String childId,
    required String milestoneCode,
    this.achievedAt = const Value.absent(),
    required int expectedAgeMonthsMin,
    required int expectedAgeMonthsMax,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        childId = Value(childId),
        milestoneCode = Value(milestoneCode),
        expectedAgeMonthsMin = Value(expectedAgeMonthsMin),
        expectedAgeMonthsMax = Value(expectedAgeMonthsMax);
  static Insertable<Milestone> custom({
    Expression<String>? id,
    Expression<String>? childId,
    Expression<String>? milestoneCode,
    Expression<DateTime>? achievedAt,
    Expression<int>? expectedAgeMonthsMin,
    Expression<int>? expectedAgeMonthsMax,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (childId != null) 'child_id': childId,
      if (milestoneCode != null) 'milestone_code': milestoneCode,
      if (achievedAt != null) 'achieved_at': achievedAt,
      if (expectedAgeMonthsMin != null)
        'expected_age_months_min': expectedAgeMonthsMin,
      if (expectedAgeMonthsMax != null)
        'expected_age_months_max': expectedAgeMonthsMax,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MilestonesCompanion copyWith(
      {Value<String>? id,
      Value<String>? childId,
      Value<String>? milestoneCode,
      Value<DateTime?>? achievedAt,
      Value<int>? expectedAgeMonthsMin,
      Value<int>? expectedAgeMonthsMax,
      Value<int>? rowid}) {
    return MilestonesCompanion(
      id: id ?? this.id,
      childId: childId ?? this.childId,
      milestoneCode: milestoneCode ?? this.milestoneCode,
      achievedAt: achievedAt ?? this.achievedAt,
      expectedAgeMonthsMin: expectedAgeMonthsMin ?? this.expectedAgeMonthsMin,
      expectedAgeMonthsMax: expectedAgeMonthsMax ?? this.expectedAgeMonthsMax,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (childId.present) {
      map['child_id'] = Variable<String>(childId.value);
    }
    if (milestoneCode.present) {
      map['milestone_code'] = Variable<String>(milestoneCode.value);
    }
    if (achievedAt.present) {
      map['achieved_at'] = Variable<DateTime>(achievedAt.value);
    }
    if (expectedAgeMonthsMin.present) {
      map['expected_age_months_min'] =
          Variable<int>(expectedAgeMonthsMin.value);
    }
    if (expectedAgeMonthsMax.present) {
      map['expected_age_months_max'] =
          Variable<int>(expectedAgeMonthsMax.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MilestonesCompanion(')
          ..write('id: $id, ')
          ..write('childId: $childId, ')
          ..write('milestoneCode: $milestoneCode, ')
          ..write('achievedAt: $achievedAt, ')
          ..write('expectedAgeMonthsMin: $expectedAgeMonthsMin, ')
          ..write('expectedAgeMonthsMax: $expectedAgeMonthsMax, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FoodIntroductionsTable extends FoodIntroductions
    with TableInfo<$FoodIntroductionsTable, FoodIntroduction> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FoodIntroductionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _childIdMeta =
      const VerificationMeta('childId');
  @override
  late final GeneratedColumn<String> childId = GeneratedColumn<String>(
      'child_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES children (id) ON DELETE CASCADE'));
  static const VerificationMeta _foodCodeMeta =
      const VerificationMeta('foodCode');
  @override
  late final GeneratedColumn<String> foodCode = GeneratedColumn<String>(
      'food_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _firstTriedAtMeta =
      const VerificationMeta('firstTriedAt');
  @override
  late final GeneratedColumn<DateTime> firstTriedAt = GeneratedColumn<DateTime>(
      'first_tried_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<FoodReaction?, String> reaction =
      GeneratedColumn<String>('reaction', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<FoodReaction?>(
              $FoodIntroductionsTable.$converterreactionn);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, childId, foodCode, firstTriedAt, reaction, note];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'food_introductions';
  @override
  VerificationContext validateIntegrity(Insertable<FoodIntroduction> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('child_id')) {
      context.handle(_childIdMeta,
          childId.isAcceptableOrUnknown(data['child_id']!, _childIdMeta));
    } else if (isInserting) {
      context.missing(_childIdMeta);
    }
    if (data.containsKey('food_code')) {
      context.handle(_foodCodeMeta,
          foodCode.isAcceptableOrUnknown(data['food_code']!, _foodCodeMeta));
    } else if (isInserting) {
      context.missing(_foodCodeMeta);
    }
    if (data.containsKey('first_tried_at')) {
      context.handle(
          _firstTriedAtMeta,
          firstTriedAt.isAcceptableOrUnknown(
              data['first_tried_at']!, _firstTriedAtMeta));
    } else if (isInserting) {
      context.missing(_firstTriedAtMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FoodIntroduction map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FoodIntroduction(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      childId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}child_id'])!,
      foodCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}food_code'])!,
      firstTriedAt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}first_tried_at'])!,
      reaction: $FoodIntroductionsTable.$converterreactionn.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}reaction'])),
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note']),
    );
  }

  @override
  $FoodIntroductionsTable createAlias(String alias) {
    return $FoodIntroductionsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<FoodReaction, String, String> $converterreaction =
      const EnumNameConverter<FoodReaction>(FoodReaction.values);
  static JsonTypeConverter2<FoodReaction?, String?, String?>
      $converterreactionn = JsonTypeConverter2.asNullable($converterreaction);
}

class FoodIntroduction extends DataClass
    implements Insertable<FoodIntroduction> {
  final String id;
  final String childId;
  final String foodCode;
  final DateTime firstTriedAt;
  final FoodReaction? reaction;
  final String? note;
  const FoodIntroduction(
      {required this.id,
      required this.childId,
      required this.foodCode,
      required this.firstTriedAt,
      this.reaction,
      this.note});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['child_id'] = Variable<String>(childId);
    map['food_code'] = Variable<String>(foodCode);
    map['first_tried_at'] = Variable<DateTime>(firstTriedAt);
    if (!nullToAbsent || reaction != null) {
      map['reaction'] = Variable<String>(
          $FoodIntroductionsTable.$converterreactionn.toSql(reaction));
    }
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    return map;
  }

  FoodIntroductionsCompanion toCompanion(bool nullToAbsent) {
    return FoodIntroductionsCompanion(
      id: Value(id),
      childId: Value(childId),
      foodCode: Value(foodCode),
      firstTriedAt: Value(firstTriedAt),
      reaction: reaction == null && nullToAbsent
          ? const Value.absent()
          : Value(reaction),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
    );
  }

  factory FoodIntroduction.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FoodIntroduction(
      id: serializer.fromJson<String>(json['id']),
      childId: serializer.fromJson<String>(json['childId']),
      foodCode: serializer.fromJson<String>(json['foodCode']),
      firstTriedAt: serializer.fromJson<DateTime>(json['firstTriedAt']),
      reaction: $FoodIntroductionsTable.$converterreactionn
          .fromJson(serializer.fromJson<String?>(json['reaction'])),
      note: serializer.fromJson<String?>(json['note']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'childId': serializer.toJson<String>(childId),
      'foodCode': serializer.toJson<String>(foodCode),
      'firstTriedAt': serializer.toJson<DateTime>(firstTriedAt),
      'reaction': serializer.toJson<String?>(
          $FoodIntroductionsTable.$converterreactionn.toJson(reaction)),
      'note': serializer.toJson<String?>(note),
    };
  }

  FoodIntroduction copyWith(
          {String? id,
          String? childId,
          String? foodCode,
          DateTime? firstTriedAt,
          Value<FoodReaction?> reaction = const Value.absent(),
          Value<String?> note = const Value.absent()}) =>
      FoodIntroduction(
        id: id ?? this.id,
        childId: childId ?? this.childId,
        foodCode: foodCode ?? this.foodCode,
        firstTriedAt: firstTriedAt ?? this.firstTriedAt,
        reaction: reaction.present ? reaction.value : this.reaction,
        note: note.present ? note.value : this.note,
      );
  FoodIntroduction copyWithCompanion(FoodIntroductionsCompanion data) {
    return FoodIntroduction(
      id: data.id.present ? data.id.value : this.id,
      childId: data.childId.present ? data.childId.value : this.childId,
      foodCode: data.foodCode.present ? data.foodCode.value : this.foodCode,
      firstTriedAt: data.firstTriedAt.present
          ? data.firstTriedAt.value
          : this.firstTriedAt,
      reaction: data.reaction.present ? data.reaction.value : this.reaction,
      note: data.note.present ? data.note.value : this.note,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FoodIntroduction(')
          ..write('id: $id, ')
          ..write('childId: $childId, ')
          ..write('foodCode: $foodCode, ')
          ..write('firstTriedAt: $firstTriedAt, ')
          ..write('reaction: $reaction, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, childId, foodCode, firstTriedAt, reaction, note);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FoodIntroduction &&
          other.id == this.id &&
          other.childId == this.childId &&
          other.foodCode == this.foodCode &&
          other.firstTriedAt == this.firstTriedAt &&
          other.reaction == this.reaction &&
          other.note == this.note);
}

class FoodIntroductionsCompanion extends UpdateCompanion<FoodIntroduction> {
  final Value<String> id;
  final Value<String> childId;
  final Value<String> foodCode;
  final Value<DateTime> firstTriedAt;
  final Value<FoodReaction?> reaction;
  final Value<String?> note;
  final Value<int> rowid;
  const FoodIntroductionsCompanion({
    this.id = const Value.absent(),
    this.childId = const Value.absent(),
    this.foodCode = const Value.absent(),
    this.firstTriedAt = const Value.absent(),
    this.reaction = const Value.absent(),
    this.note = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FoodIntroductionsCompanion.insert({
    required String id,
    required String childId,
    required String foodCode,
    required DateTime firstTriedAt,
    this.reaction = const Value.absent(),
    this.note = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        childId = Value(childId),
        foodCode = Value(foodCode),
        firstTriedAt = Value(firstTriedAt);
  static Insertable<FoodIntroduction> custom({
    Expression<String>? id,
    Expression<String>? childId,
    Expression<String>? foodCode,
    Expression<DateTime>? firstTriedAt,
    Expression<String>? reaction,
    Expression<String>? note,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (childId != null) 'child_id': childId,
      if (foodCode != null) 'food_code': foodCode,
      if (firstTriedAt != null) 'first_tried_at': firstTriedAt,
      if (reaction != null) 'reaction': reaction,
      if (note != null) 'note': note,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FoodIntroductionsCompanion copyWith(
      {Value<String>? id,
      Value<String>? childId,
      Value<String>? foodCode,
      Value<DateTime>? firstTriedAt,
      Value<FoodReaction?>? reaction,
      Value<String?>? note,
      Value<int>? rowid}) {
    return FoodIntroductionsCompanion(
      id: id ?? this.id,
      childId: childId ?? this.childId,
      foodCode: foodCode ?? this.foodCode,
      firstTriedAt: firstTriedAt ?? this.firstTriedAt,
      reaction: reaction ?? this.reaction,
      note: note ?? this.note,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (childId.present) {
      map['child_id'] = Variable<String>(childId.value);
    }
    if (foodCode.present) {
      map['food_code'] = Variable<String>(foodCode.value);
    }
    if (firstTriedAt.present) {
      map['first_tried_at'] = Variable<DateTime>(firstTriedAt.value);
    }
    if (reaction.present) {
      map['reaction'] = Variable<String>(
          $FoodIntroductionsTable.$converterreactionn.toSql(reaction.value));
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FoodIntroductionsCompanion(')
          ..write('id: $id, ')
          ..write('childId: $childId, ')
          ..write('foodCode: $foodCode, ')
          ..write('firstTriedAt: $firstTriedAt, ')
          ..write('reaction: $reaction, ')
          ..write('note: $note, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ActivityLogTable extends ActivityLog
    with TableInfo<$ActivityLogTable, ActivityLogData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ActivityLogTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _childIdMeta =
      const VerificationMeta('childId');
  @override
  late final GeneratedColumn<String> childId = GeneratedColumn<String>(
      'child_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES children (id) ON DELETE CASCADE'));
  static const VerificationMeta _contentIdMeta =
      const VerificationMeta('contentId');
  @override
  late final GeneratedColumn<String> contentId = GeneratedColumn<String>(
      'content_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<ContentType, String> contentType =
      GeneratedColumn<String>('content_type', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<ContentType>($ActivityLogTable.$convertercontentType);
  static const VerificationMeta _completedAtMeta =
      const VerificationMeta('completedAt');
  @override
  late final GeneratedColumn<DateTime> completedAt = GeneratedColumn<DateTime>(
      'completed_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _favoritedMeta =
      const VerificationMeta('favorited');
  @override
  late final GeneratedColumn<bool> favorited = GeneratedColumn<bool>(
      'favorited', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("favorited" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns =>
      [id, childId, contentId, contentType, completedAt, favorited];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'activity_log';
  @override
  VerificationContext validateIntegrity(Insertable<ActivityLogData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('child_id')) {
      context.handle(_childIdMeta,
          childId.isAcceptableOrUnknown(data['child_id']!, _childIdMeta));
    } else if (isInserting) {
      context.missing(_childIdMeta);
    }
    if (data.containsKey('content_id')) {
      context.handle(_contentIdMeta,
          contentId.isAcceptableOrUnknown(data['content_id']!, _contentIdMeta));
    } else if (isInserting) {
      context.missing(_contentIdMeta);
    }
    if (data.containsKey('completed_at')) {
      context.handle(
          _completedAtMeta,
          completedAt.isAcceptableOrUnknown(
              data['completed_at']!, _completedAtMeta));
    } else if (isInserting) {
      context.missing(_completedAtMeta);
    }
    if (data.containsKey('favorited')) {
      context.handle(_favoritedMeta,
          favorited.isAcceptableOrUnknown(data['favorited']!, _favoritedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ActivityLogData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ActivityLogData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      childId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}child_id'])!,
      contentId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content_id'])!,
      contentType: $ActivityLogTable.$convertercontentType.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}content_type'])!),
      completedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}completed_at'])!,
      favorited: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}favorited'])!,
    );
  }

  @override
  $ActivityLogTable createAlias(String alias) {
    return $ActivityLogTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<ContentType, String, String> $convertercontentType =
      const EnumNameConverter<ContentType>(ContentType.values);
}

class ActivityLogData extends DataClass implements Insertable<ActivityLogData> {
  final String id;
  final String childId;
  final String contentId;
  final ContentType contentType;
  final DateTime completedAt;
  final bool favorited;
  const ActivityLogData(
      {required this.id,
      required this.childId,
      required this.contentId,
      required this.contentType,
      required this.completedAt,
      required this.favorited});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['child_id'] = Variable<String>(childId);
    map['content_id'] = Variable<String>(contentId);
    {
      map['content_type'] = Variable<String>(
          $ActivityLogTable.$convertercontentType.toSql(contentType));
    }
    map['completed_at'] = Variable<DateTime>(completedAt);
    map['favorited'] = Variable<bool>(favorited);
    return map;
  }

  ActivityLogCompanion toCompanion(bool nullToAbsent) {
    return ActivityLogCompanion(
      id: Value(id),
      childId: Value(childId),
      contentId: Value(contentId),
      contentType: Value(contentType),
      completedAt: Value(completedAt),
      favorited: Value(favorited),
    );
  }

  factory ActivityLogData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ActivityLogData(
      id: serializer.fromJson<String>(json['id']),
      childId: serializer.fromJson<String>(json['childId']),
      contentId: serializer.fromJson<String>(json['contentId']),
      contentType: $ActivityLogTable.$convertercontentType
          .fromJson(serializer.fromJson<String>(json['contentType'])),
      completedAt: serializer.fromJson<DateTime>(json['completedAt']),
      favorited: serializer.fromJson<bool>(json['favorited']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'childId': serializer.toJson<String>(childId),
      'contentId': serializer.toJson<String>(contentId),
      'contentType': serializer.toJson<String>(
          $ActivityLogTable.$convertercontentType.toJson(contentType)),
      'completedAt': serializer.toJson<DateTime>(completedAt),
      'favorited': serializer.toJson<bool>(favorited),
    };
  }

  ActivityLogData copyWith(
          {String? id,
          String? childId,
          String? contentId,
          ContentType? contentType,
          DateTime? completedAt,
          bool? favorited}) =>
      ActivityLogData(
        id: id ?? this.id,
        childId: childId ?? this.childId,
        contentId: contentId ?? this.contentId,
        contentType: contentType ?? this.contentType,
        completedAt: completedAt ?? this.completedAt,
        favorited: favorited ?? this.favorited,
      );
  ActivityLogData copyWithCompanion(ActivityLogCompanion data) {
    return ActivityLogData(
      id: data.id.present ? data.id.value : this.id,
      childId: data.childId.present ? data.childId.value : this.childId,
      contentId: data.contentId.present ? data.contentId.value : this.contentId,
      contentType:
          data.contentType.present ? data.contentType.value : this.contentType,
      completedAt:
          data.completedAt.present ? data.completedAt.value : this.completedAt,
      favorited: data.favorited.present ? data.favorited.value : this.favorited,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ActivityLogData(')
          ..write('id: $id, ')
          ..write('childId: $childId, ')
          ..write('contentId: $contentId, ')
          ..write('contentType: $contentType, ')
          ..write('completedAt: $completedAt, ')
          ..write('favorited: $favorited')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, childId, contentId, contentType, completedAt, favorited);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ActivityLogData &&
          other.id == this.id &&
          other.childId == this.childId &&
          other.contentId == this.contentId &&
          other.contentType == this.contentType &&
          other.completedAt == this.completedAt &&
          other.favorited == this.favorited);
}

class ActivityLogCompanion extends UpdateCompanion<ActivityLogData> {
  final Value<String> id;
  final Value<String> childId;
  final Value<String> contentId;
  final Value<ContentType> contentType;
  final Value<DateTime> completedAt;
  final Value<bool> favorited;
  final Value<int> rowid;
  const ActivityLogCompanion({
    this.id = const Value.absent(),
    this.childId = const Value.absent(),
    this.contentId = const Value.absent(),
    this.contentType = const Value.absent(),
    this.completedAt = const Value.absent(),
    this.favorited = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ActivityLogCompanion.insert({
    required String id,
    required String childId,
    required String contentId,
    required ContentType contentType,
    required DateTime completedAt,
    this.favorited = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        childId = Value(childId),
        contentId = Value(contentId),
        contentType = Value(contentType),
        completedAt = Value(completedAt);
  static Insertable<ActivityLogData> custom({
    Expression<String>? id,
    Expression<String>? childId,
    Expression<String>? contentId,
    Expression<String>? contentType,
    Expression<DateTime>? completedAt,
    Expression<bool>? favorited,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (childId != null) 'child_id': childId,
      if (contentId != null) 'content_id': contentId,
      if (contentType != null) 'content_type': contentType,
      if (completedAt != null) 'completed_at': completedAt,
      if (favorited != null) 'favorited': favorited,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ActivityLogCompanion copyWith(
      {Value<String>? id,
      Value<String>? childId,
      Value<String>? contentId,
      Value<ContentType>? contentType,
      Value<DateTime>? completedAt,
      Value<bool>? favorited,
      Value<int>? rowid}) {
    return ActivityLogCompanion(
      id: id ?? this.id,
      childId: childId ?? this.childId,
      contentId: contentId ?? this.contentId,
      contentType: contentType ?? this.contentType,
      completedAt: completedAt ?? this.completedAt,
      favorited: favorited ?? this.favorited,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (childId.present) {
      map['child_id'] = Variable<String>(childId.value);
    }
    if (contentId.present) {
      map['content_id'] = Variable<String>(contentId.value);
    }
    if (contentType.present) {
      map['content_type'] = Variable<String>(
          $ActivityLogTable.$convertercontentType.toSql(contentType.value));
    }
    if (completedAt.present) {
      map['completed_at'] = Variable<DateTime>(completedAt.value);
    }
    if (favorited.present) {
      map['favorited'] = Variable<bool>(favorited.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ActivityLogCompanion(')
          ..write('id: $id, ')
          ..write('childId: $childId, ')
          ..write('contentId: $contentId, ')
          ..write('contentType: $contentType, ')
          ..write('completedAt: $completedAt, ')
          ..write('favorited: $favorited, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SleepFeedLogTable extends SleepFeedLog
    with TableInfo<$SleepFeedLogTable, SleepFeedLogData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SleepFeedLogTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _childIdMeta =
      const VerificationMeta('childId');
  @override
  late final GeneratedColumn<String> childId = GeneratedColumn<String>(
      'child_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES children (id) ON DELETE CASCADE'));
  @override
  late final GeneratedColumnWithTypeConverter<SleepFeedType, String> type =
      GeneratedColumn<String>('type', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<SleepFeedType>($SleepFeedLogTable.$convertertype);
  static const VerificationMeta _startedAtMeta =
      const VerificationMeta('startedAt');
  @override
  late final GeneratedColumn<DateTime> startedAt = GeneratedColumn<DateTime>(
      'started_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _endedAtMeta =
      const VerificationMeta('endedAt');
  @override
  late final GeneratedColumn<DateTime> endedAt = GeneratedColumn<DateTime>(
      'ended_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _quantityMeta =
      const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<double> quantity = GeneratedColumn<double>(
      'quantity', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, childId, type, startedAt, endedAt, quantity];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sleep_feed_log';
  @override
  VerificationContext validateIntegrity(Insertable<SleepFeedLogData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('child_id')) {
      context.handle(_childIdMeta,
          childId.isAcceptableOrUnknown(data['child_id']!, _childIdMeta));
    } else if (isInserting) {
      context.missing(_childIdMeta);
    }
    if (data.containsKey('started_at')) {
      context.handle(_startedAtMeta,
          startedAt.isAcceptableOrUnknown(data['started_at']!, _startedAtMeta));
    } else if (isInserting) {
      context.missing(_startedAtMeta);
    }
    if (data.containsKey('ended_at')) {
      context.handle(_endedAtMeta,
          endedAt.isAcceptableOrUnknown(data['ended_at']!, _endedAtMeta));
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SleepFeedLogData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SleepFeedLogData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      childId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}child_id'])!,
      type: $SleepFeedLogTable.$convertertype.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!),
      startedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}started_at'])!,
      endedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}ended_at']),
      quantity: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}quantity']),
    );
  }

  @override
  $SleepFeedLogTable createAlias(String alias) {
    return $SleepFeedLogTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<SleepFeedType, String, String> $convertertype =
      const EnumNameConverter<SleepFeedType>(SleepFeedType.values);
}

class SleepFeedLogData extends DataClass
    implements Insertable<SleepFeedLogData> {
  final String id;
  final String childId;
  final SleepFeedType type;
  final DateTime startedAt;
  final DateTime? endedAt;
  final double? quantity;
  const SleepFeedLogData(
      {required this.id,
      required this.childId,
      required this.type,
      required this.startedAt,
      this.endedAt,
      this.quantity});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['child_id'] = Variable<String>(childId);
    {
      map['type'] =
          Variable<String>($SleepFeedLogTable.$convertertype.toSql(type));
    }
    map['started_at'] = Variable<DateTime>(startedAt);
    if (!nullToAbsent || endedAt != null) {
      map['ended_at'] = Variable<DateTime>(endedAt);
    }
    if (!nullToAbsent || quantity != null) {
      map['quantity'] = Variable<double>(quantity);
    }
    return map;
  }

  SleepFeedLogCompanion toCompanion(bool nullToAbsent) {
    return SleepFeedLogCompanion(
      id: Value(id),
      childId: Value(childId),
      type: Value(type),
      startedAt: Value(startedAt),
      endedAt: endedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(endedAt),
      quantity: quantity == null && nullToAbsent
          ? const Value.absent()
          : Value(quantity),
    );
  }

  factory SleepFeedLogData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SleepFeedLogData(
      id: serializer.fromJson<String>(json['id']),
      childId: serializer.fromJson<String>(json['childId']),
      type: $SleepFeedLogTable.$convertertype
          .fromJson(serializer.fromJson<String>(json['type'])),
      startedAt: serializer.fromJson<DateTime>(json['startedAt']),
      endedAt: serializer.fromJson<DateTime?>(json['endedAt']),
      quantity: serializer.fromJson<double?>(json['quantity']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'childId': serializer.toJson<String>(childId),
      'type': serializer
          .toJson<String>($SleepFeedLogTable.$convertertype.toJson(type)),
      'startedAt': serializer.toJson<DateTime>(startedAt),
      'endedAt': serializer.toJson<DateTime?>(endedAt),
      'quantity': serializer.toJson<double?>(quantity),
    };
  }

  SleepFeedLogData copyWith(
          {String? id,
          String? childId,
          SleepFeedType? type,
          DateTime? startedAt,
          Value<DateTime?> endedAt = const Value.absent(),
          Value<double?> quantity = const Value.absent()}) =>
      SleepFeedLogData(
        id: id ?? this.id,
        childId: childId ?? this.childId,
        type: type ?? this.type,
        startedAt: startedAt ?? this.startedAt,
        endedAt: endedAt.present ? endedAt.value : this.endedAt,
        quantity: quantity.present ? quantity.value : this.quantity,
      );
  SleepFeedLogData copyWithCompanion(SleepFeedLogCompanion data) {
    return SleepFeedLogData(
      id: data.id.present ? data.id.value : this.id,
      childId: data.childId.present ? data.childId.value : this.childId,
      type: data.type.present ? data.type.value : this.type,
      startedAt: data.startedAt.present ? data.startedAt.value : this.startedAt,
      endedAt: data.endedAt.present ? data.endedAt.value : this.endedAt,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SleepFeedLogData(')
          ..write('id: $id, ')
          ..write('childId: $childId, ')
          ..write('type: $type, ')
          ..write('startedAt: $startedAt, ')
          ..write('endedAt: $endedAt, ')
          ..write('quantity: $quantity')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, childId, type, startedAt, endedAt, quantity);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SleepFeedLogData &&
          other.id == this.id &&
          other.childId == this.childId &&
          other.type == this.type &&
          other.startedAt == this.startedAt &&
          other.endedAt == this.endedAt &&
          other.quantity == this.quantity);
}

class SleepFeedLogCompanion extends UpdateCompanion<SleepFeedLogData> {
  final Value<String> id;
  final Value<String> childId;
  final Value<SleepFeedType> type;
  final Value<DateTime> startedAt;
  final Value<DateTime?> endedAt;
  final Value<double?> quantity;
  final Value<int> rowid;
  const SleepFeedLogCompanion({
    this.id = const Value.absent(),
    this.childId = const Value.absent(),
    this.type = const Value.absent(),
    this.startedAt = const Value.absent(),
    this.endedAt = const Value.absent(),
    this.quantity = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SleepFeedLogCompanion.insert({
    required String id,
    required String childId,
    required SleepFeedType type,
    required DateTime startedAt,
    this.endedAt = const Value.absent(),
    this.quantity = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        childId = Value(childId),
        type = Value(type),
        startedAt = Value(startedAt);
  static Insertable<SleepFeedLogData> custom({
    Expression<String>? id,
    Expression<String>? childId,
    Expression<String>? type,
    Expression<DateTime>? startedAt,
    Expression<DateTime>? endedAt,
    Expression<double>? quantity,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (childId != null) 'child_id': childId,
      if (type != null) 'type': type,
      if (startedAt != null) 'started_at': startedAt,
      if (endedAt != null) 'ended_at': endedAt,
      if (quantity != null) 'quantity': quantity,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SleepFeedLogCompanion copyWith(
      {Value<String>? id,
      Value<String>? childId,
      Value<SleepFeedType>? type,
      Value<DateTime>? startedAt,
      Value<DateTime?>? endedAt,
      Value<double?>? quantity,
      Value<int>? rowid}) {
    return SleepFeedLogCompanion(
      id: id ?? this.id,
      childId: childId ?? this.childId,
      type: type ?? this.type,
      startedAt: startedAt ?? this.startedAt,
      endedAt: endedAt ?? this.endedAt,
      quantity: quantity ?? this.quantity,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (childId.present) {
      map['child_id'] = Variable<String>(childId.value);
    }
    if (type.present) {
      map['type'] =
          Variable<String>($SleepFeedLogTable.$convertertype.toSql(type.value));
    }
    if (startedAt.present) {
      map['started_at'] = Variable<DateTime>(startedAt.value);
    }
    if (endedAt.present) {
      map['ended_at'] = Variable<DateTime>(endedAt.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<double>(quantity.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SleepFeedLogCompanion(')
          ..write('id: $id, ')
          ..write('childId: $childId, ')
          ..write('type: $type, ')
          ..write('startedAt: $startedAt, ')
          ..write('endedAt: $endedAt, ')
          ..write('quantity: $quantity, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AppSettingsTable extends AppSettings
    with TableInfo<$AppSettingsTable, AppSetting> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AppSettingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
      'key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
      'value', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [key, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'app_settings';
  @override
  VerificationContext validateIntegrity(Insertable<AppSetting> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  AppSetting map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AppSetting(
      key: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}key'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value']),
    );
  }

  @override
  $AppSettingsTable createAlias(String alias) {
    return $AppSettingsTable(attachedDatabase, alias);
  }
}

class AppSetting extends DataClass implements Insertable<AppSetting> {
  final String key;
  final String? value;
  const AppSetting({required this.key, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<String>(value);
    }
    return map;
  }

  AppSettingsCompanion toCompanion(bool nullToAbsent) {
    return AppSettingsCompanion(
      key: Value(key),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory AppSetting.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AppSetting(
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String?>(value),
    };
  }

  AppSetting copyWith(
          {String? key, Value<String?> value = const Value.absent()}) =>
      AppSetting(
        key: key ?? this.key,
        value: value.present ? value.value : this.value,
      );
  AppSetting copyWithCompanion(AppSettingsCompanion data) {
    return AppSetting(
      key: data.key.present ? data.key.value : this.key,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AppSetting(')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppSetting &&
          other.key == this.key &&
          other.value == this.value);
}

class AppSettingsCompanion extends UpdateCompanion<AppSetting> {
  final Value<String> key;
  final Value<String?> value;
  final Value<int> rowid;
  const AppSettingsCompanion({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AppSettingsCompanion.insert({
    required String key,
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : key = Value(key);
  static Insertable<AppSetting> custom({
    Expression<String>? key,
    Expression<String>? value,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AppSettingsCompanion copyWith(
      {Value<String>? key, Value<String?>? value, Value<int>? rowid}) {
    return AppSettingsCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AppSettingsCompanion(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ChildrenTable children = $ChildrenTable(this);
  late final $GrowthEntriesTable growthEntries = $GrowthEntriesTable(this);
  late final $VaccineDosesTable vaccineDoses = $VaccineDosesTable(this);
  late final $TeethTable teeth = $TeethTable(this);
  late final $MilestonesTable milestones = $MilestonesTable(this);
  late final $FoodIntroductionsTable foodIntroductions =
      $FoodIntroductionsTable(this);
  late final $ActivityLogTable activityLog = $ActivityLogTable(this);
  late final $SleepFeedLogTable sleepFeedLog = $SleepFeedLogTable(this);
  late final $AppSettingsTable appSettings = $AppSettingsTable(this);
  late final ChildDao childDao = ChildDao(this as AppDatabase);
  late final GrowthDao growthDao = GrowthDao(this as AppDatabase);
  late final VaccineDao vaccineDao = VaccineDao(this as AppDatabase);
  late final TeethDao teethDao = TeethDao(this as AppDatabase);
  late final MilestoneDao milestoneDao = MilestoneDao(this as AppDatabase);
  late final FoodDao foodDao = FoodDao(this as AppDatabase);
  late final ActivityDao activityDao = ActivityDao(this as AppDatabase);
  late final SleepFeedDao sleepFeedDao = SleepFeedDao(this as AppDatabase);
  late final SettingsDao settingsDao = SettingsDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        children,
        growthEntries,
        vaccineDoses,
        teeth,
        milestones,
        foodIntroductions,
        activityLog,
        sleepFeedLog,
        appSettings
      ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules(
        [
          WritePropagation(
            on: TableUpdateQuery.onTableName('children',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('growth_entries', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('children',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('vaccine_doses', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('children',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('teeth', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('children',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('milestones', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('children',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('food_introductions', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('children',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('activity_log', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('children',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('sleep_feed_log', kind: UpdateKind.delete),
            ],
          ),
        ],
      );
}

typedef $$ChildrenTableCreateCompanionBuilder = ChildrenCompanion Function({
  required String id,
  required String name,
  required DateTime birthDate,
  Value<bool> isPreBirth,
  Value<ChildSex?> sex,
  Value<int?> gestationalWeeksAtBirth,
  required int avatarSeed,
  required DateTime createdAt,
  required DateTime updatedAt,
  Value<int> rowid,
});
typedef $$ChildrenTableUpdateCompanionBuilder = ChildrenCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<DateTime> birthDate,
  Value<bool> isPreBirth,
  Value<ChildSex?> sex,
  Value<int?> gestationalWeeksAtBirth,
  Value<int> avatarSeed,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<int> rowid,
});

final class $$ChildrenTableReferences
    extends BaseReferences<_$AppDatabase, $ChildrenTable, ChildrenData> {
  $$ChildrenTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$GrowthEntriesTable, List<GrowthEntry>>
      _growthEntriesRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.growthEntries,
              aliasName: $_aliasNameGenerator(
                  db.children.id, db.growthEntries.childId));

  $$GrowthEntriesTableProcessedTableManager get growthEntriesRefs {
    final manager = $$GrowthEntriesTableTableManager($_db, $_db.growthEntries)
        .filter((f) => f.childId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_growthEntriesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$VaccineDosesTable, List<VaccineDose>>
      _vaccineDosesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
          db.vaccineDoses,
          aliasName:
              $_aliasNameGenerator(db.children.id, db.vaccineDoses.childId));

  $$VaccineDosesTableProcessedTableManager get vaccineDosesRefs {
    final manager = $$VaccineDosesTableTableManager($_db, $_db.vaccineDoses)
        .filter((f) => f.childId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_vaccineDosesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$TeethTable, List<TeethData>> _teethRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.teeth,
          aliasName: $_aliasNameGenerator(db.children.id, db.teeth.childId));

  $$TeethTableProcessedTableManager get teethRefs {
    final manager = $$TeethTableTableManager($_db, $_db.teeth)
        .filter((f) => f.childId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_teethRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$MilestonesTable, List<Milestone>>
      _milestonesRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.milestones,
              aliasName:
                  $_aliasNameGenerator(db.children.id, db.milestones.childId));

  $$MilestonesTableProcessedTableManager get milestonesRefs {
    final manager = $$MilestonesTableTableManager($_db, $_db.milestones)
        .filter((f) => f.childId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_milestonesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$FoodIntroductionsTable, List<FoodIntroduction>>
      _foodIntroductionsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.foodIntroductions,
              aliasName: $_aliasNameGenerator(
                  db.children.id, db.foodIntroductions.childId));

  $$FoodIntroductionsTableProcessedTableManager get foodIntroductionsRefs {
    final manager =
        $$FoodIntroductionsTableTableManager($_db, $_db.foodIntroductions)
            .filter((f) => f.childId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_foodIntroductionsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$ActivityLogTable, List<ActivityLogData>>
      _activityLogRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.activityLog,
              aliasName:
                  $_aliasNameGenerator(db.children.id, db.activityLog.childId));

  $$ActivityLogTableProcessedTableManager get activityLogRefs {
    final manager = $$ActivityLogTableTableManager($_db, $_db.activityLog)
        .filter((f) => f.childId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_activityLogRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$SleepFeedLogTable, List<SleepFeedLogData>>
      _sleepFeedLogRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
          db.sleepFeedLog,
          aliasName:
              $_aliasNameGenerator(db.children.id, db.sleepFeedLog.childId));

  $$SleepFeedLogTableProcessedTableManager get sleepFeedLogRefs {
    final manager = $$SleepFeedLogTableTableManager($_db, $_db.sleepFeedLog)
        .filter((f) => f.childId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_sleepFeedLogRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$ChildrenTableFilterComposer
    extends Composer<_$AppDatabase, $ChildrenTable> {
  $$ChildrenTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get birthDate => $composableBuilder(
      column: $table.birthDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isPreBirth => $composableBuilder(
      column: $table.isPreBirth, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<ChildSex?, ChildSex, String> get sex =>
      $composableBuilder(
          column: $table.sex,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<int> get gestationalWeeksAtBirth => $composableBuilder(
      column: $table.gestationalWeeksAtBirth,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get avatarSeed => $composableBuilder(
      column: $table.avatarSeed, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  Expression<bool> growthEntriesRefs(
      Expression<bool> Function($$GrowthEntriesTableFilterComposer f) f) {
    final $$GrowthEntriesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.growthEntries,
        getReferencedColumn: (t) => t.childId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GrowthEntriesTableFilterComposer(
              $db: $db,
              $table: $db.growthEntries,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> vaccineDosesRefs(
      Expression<bool> Function($$VaccineDosesTableFilterComposer f) f) {
    final $$VaccineDosesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.vaccineDoses,
        getReferencedColumn: (t) => t.childId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$VaccineDosesTableFilterComposer(
              $db: $db,
              $table: $db.vaccineDoses,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> teethRefs(
      Expression<bool> Function($$TeethTableFilterComposer f) f) {
    final $$TeethTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.teeth,
        getReferencedColumn: (t) => t.childId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TeethTableFilterComposer(
              $db: $db,
              $table: $db.teeth,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> milestonesRefs(
      Expression<bool> Function($$MilestonesTableFilterComposer f) f) {
    final $$MilestonesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.milestones,
        getReferencedColumn: (t) => t.childId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$MilestonesTableFilterComposer(
              $db: $db,
              $table: $db.milestones,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> foodIntroductionsRefs(
      Expression<bool> Function($$FoodIntroductionsTableFilterComposer f) f) {
    final $$FoodIntroductionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.foodIntroductions,
        getReferencedColumn: (t) => t.childId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$FoodIntroductionsTableFilterComposer(
              $db: $db,
              $table: $db.foodIntroductions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> activityLogRefs(
      Expression<bool> Function($$ActivityLogTableFilterComposer f) f) {
    final $$ActivityLogTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.activityLog,
        getReferencedColumn: (t) => t.childId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ActivityLogTableFilterComposer(
              $db: $db,
              $table: $db.activityLog,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> sleepFeedLogRefs(
      Expression<bool> Function($$SleepFeedLogTableFilterComposer f) f) {
    final $$SleepFeedLogTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.sleepFeedLog,
        getReferencedColumn: (t) => t.childId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SleepFeedLogTableFilterComposer(
              $db: $db,
              $table: $db.sleepFeedLog,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ChildrenTableOrderingComposer
    extends Composer<_$AppDatabase, $ChildrenTable> {
  $$ChildrenTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get birthDate => $composableBuilder(
      column: $table.birthDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isPreBirth => $composableBuilder(
      column: $table.isPreBirth, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get sex => $composableBuilder(
      column: $table.sex, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get gestationalWeeksAtBirth => $composableBuilder(
      column: $table.gestationalWeeksAtBirth,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get avatarSeed => $composableBuilder(
      column: $table.avatarSeed, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $$ChildrenTableAnnotationComposer
    extends Composer<_$AppDatabase, $ChildrenTable> {
  $$ChildrenTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<DateTime> get birthDate =>
      $composableBuilder(column: $table.birthDate, builder: (column) => column);

  GeneratedColumn<bool> get isPreBirth => $composableBuilder(
      column: $table.isPreBirth, builder: (column) => column);

  GeneratedColumnWithTypeConverter<ChildSex?, String> get sex =>
      $composableBuilder(column: $table.sex, builder: (column) => column);

  GeneratedColumn<int> get gestationalWeeksAtBirth => $composableBuilder(
      column: $table.gestationalWeeksAtBirth, builder: (column) => column);

  GeneratedColumn<int> get avatarSeed => $composableBuilder(
      column: $table.avatarSeed, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  Expression<T> growthEntriesRefs<T extends Object>(
      Expression<T> Function($$GrowthEntriesTableAnnotationComposer a) f) {
    final $$GrowthEntriesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.growthEntries,
        getReferencedColumn: (t) => t.childId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GrowthEntriesTableAnnotationComposer(
              $db: $db,
              $table: $db.growthEntries,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> vaccineDosesRefs<T extends Object>(
      Expression<T> Function($$VaccineDosesTableAnnotationComposer a) f) {
    final $$VaccineDosesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.vaccineDoses,
        getReferencedColumn: (t) => t.childId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$VaccineDosesTableAnnotationComposer(
              $db: $db,
              $table: $db.vaccineDoses,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> teethRefs<T extends Object>(
      Expression<T> Function($$TeethTableAnnotationComposer a) f) {
    final $$TeethTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.teeth,
        getReferencedColumn: (t) => t.childId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TeethTableAnnotationComposer(
              $db: $db,
              $table: $db.teeth,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> milestonesRefs<T extends Object>(
      Expression<T> Function($$MilestonesTableAnnotationComposer a) f) {
    final $$MilestonesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.milestones,
        getReferencedColumn: (t) => t.childId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$MilestonesTableAnnotationComposer(
              $db: $db,
              $table: $db.milestones,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> foodIntroductionsRefs<T extends Object>(
      Expression<T> Function($$FoodIntroductionsTableAnnotationComposer a) f) {
    final $$FoodIntroductionsTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.foodIntroductions,
            getReferencedColumn: (t) => t.childId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$FoodIntroductionsTableAnnotationComposer(
                  $db: $db,
                  $table: $db.foodIntroductions,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }

  Expression<T> activityLogRefs<T extends Object>(
      Expression<T> Function($$ActivityLogTableAnnotationComposer a) f) {
    final $$ActivityLogTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.activityLog,
        getReferencedColumn: (t) => t.childId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ActivityLogTableAnnotationComposer(
              $db: $db,
              $table: $db.activityLog,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> sleepFeedLogRefs<T extends Object>(
      Expression<T> Function($$SleepFeedLogTableAnnotationComposer a) f) {
    final $$SleepFeedLogTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.sleepFeedLog,
        getReferencedColumn: (t) => t.childId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SleepFeedLogTableAnnotationComposer(
              $db: $db,
              $table: $db.sleepFeedLog,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ChildrenTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ChildrenTable,
    ChildrenData,
    $$ChildrenTableFilterComposer,
    $$ChildrenTableOrderingComposer,
    $$ChildrenTableAnnotationComposer,
    $$ChildrenTableCreateCompanionBuilder,
    $$ChildrenTableUpdateCompanionBuilder,
    (ChildrenData, $$ChildrenTableReferences),
    ChildrenData,
    PrefetchHooks Function(
        {bool growthEntriesRefs,
        bool vaccineDosesRefs,
        bool teethRefs,
        bool milestonesRefs,
        bool foodIntroductionsRefs,
        bool activityLogRefs,
        bool sleepFeedLogRefs})> {
  $$ChildrenTableTableManager(_$AppDatabase db, $ChildrenTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ChildrenTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ChildrenTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ChildrenTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<DateTime> birthDate = const Value.absent(),
            Value<bool> isPreBirth = const Value.absent(),
            Value<ChildSex?> sex = const Value.absent(),
            Value<int?> gestationalWeeksAtBirth = const Value.absent(),
            Value<int> avatarSeed = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ChildrenCompanion(
            id: id,
            name: name,
            birthDate: birthDate,
            isPreBirth: isPreBirth,
            sex: sex,
            gestationalWeeksAtBirth: gestationalWeeksAtBirth,
            avatarSeed: avatarSeed,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            required DateTime birthDate,
            Value<bool> isPreBirth = const Value.absent(),
            Value<ChildSex?> sex = const Value.absent(),
            Value<int?> gestationalWeeksAtBirth = const Value.absent(),
            required int avatarSeed,
            required DateTime createdAt,
            required DateTime updatedAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              ChildrenCompanion.insert(
            id: id,
            name: name,
            birthDate: birthDate,
            isPreBirth: isPreBirth,
            sex: sex,
            gestationalWeeksAtBirth: gestationalWeeksAtBirth,
            avatarSeed: avatarSeed,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$ChildrenTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {growthEntriesRefs = false,
              vaccineDosesRefs = false,
              teethRefs = false,
              milestonesRefs = false,
              foodIntroductionsRefs = false,
              activityLogRefs = false,
              sleepFeedLogRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (growthEntriesRefs) db.growthEntries,
                if (vaccineDosesRefs) db.vaccineDoses,
                if (teethRefs) db.teeth,
                if (milestonesRefs) db.milestones,
                if (foodIntroductionsRefs) db.foodIntroductions,
                if (activityLogRefs) db.activityLog,
                if (sleepFeedLogRefs) db.sleepFeedLog
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (growthEntriesRefs)
                    await $_getPrefetchedData<ChildrenData, $ChildrenTable,
                            GrowthEntry>(
                        currentTable: table,
                        referencedTable: $$ChildrenTableReferences
                            ._growthEntriesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ChildrenTableReferences(db, table, p0)
                                .growthEntriesRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.childId == item.id),
                        typedResults: items),
                  if (vaccineDosesRefs)
                    await $_getPrefetchedData<ChildrenData, $ChildrenTable,
                            VaccineDose>(
                        currentTable: table,
                        referencedTable: $$ChildrenTableReferences
                            ._vaccineDosesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ChildrenTableReferences(db, table, p0)
                                .vaccineDosesRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.childId == item.id),
                        typedResults: items),
                  if (teethRefs)
                    await $_getPrefetchedData<ChildrenData, $ChildrenTable,
                            TeethData>(
                        currentTable: table,
                        referencedTable:
                            $$ChildrenTableReferences._teethRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ChildrenTableReferences(db, table, p0).teethRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.childId == item.id),
                        typedResults: items),
                  if (milestonesRefs)
                    await $_getPrefetchedData<ChildrenData, $ChildrenTable,
                            Milestone>(
                        currentTable: table,
                        referencedTable:
                            $$ChildrenTableReferences._milestonesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ChildrenTableReferences(db, table, p0)
                                .milestonesRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.childId == item.id),
                        typedResults: items),
                  if (foodIntroductionsRefs)
                    await $_getPrefetchedData<ChildrenData, $ChildrenTable,
                            FoodIntroduction>(
                        currentTable: table,
                        referencedTable: $$ChildrenTableReferences
                            ._foodIntroductionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ChildrenTableReferences(db, table, p0)
                                .foodIntroductionsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.childId == item.id),
                        typedResults: items),
                  if (activityLogRefs)
                    await $_getPrefetchedData<ChildrenData, $ChildrenTable,
                            ActivityLogData>(
                        currentTable: table,
                        referencedTable:
                            $$ChildrenTableReferences._activityLogRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ChildrenTableReferences(db, table, p0)
                                .activityLogRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.childId == item.id),
                        typedResults: items),
                  if (sleepFeedLogRefs)
                    await $_getPrefetchedData<ChildrenData, $ChildrenTable, SleepFeedLogData>(
                        currentTable: table,
                        referencedTable: $$ChildrenTableReferences
                            ._sleepFeedLogRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ChildrenTableReferences(db, table, p0)
                                .sleepFeedLogRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.childId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$ChildrenTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ChildrenTable,
    ChildrenData,
    $$ChildrenTableFilterComposer,
    $$ChildrenTableOrderingComposer,
    $$ChildrenTableAnnotationComposer,
    $$ChildrenTableCreateCompanionBuilder,
    $$ChildrenTableUpdateCompanionBuilder,
    (ChildrenData, $$ChildrenTableReferences),
    ChildrenData,
    PrefetchHooks Function(
        {bool growthEntriesRefs,
        bool vaccineDosesRefs,
        bool teethRefs,
        bool milestonesRefs,
        bool foodIntroductionsRefs,
        bool activityLogRefs,
        bool sleepFeedLogRefs})>;
typedef $$GrowthEntriesTableCreateCompanionBuilder = GrowthEntriesCompanion
    Function({
  required String id,
  required String childId,
  required DateTime measuredAt,
  Value<double?> heightCm,
  Value<double?> weightKg,
  Value<double?> headCircumferenceCm,
  Value<String?> note,
  Value<MeasurementSource> source,
  required DateTime createdAt,
  Value<int> rowid,
});
typedef $$GrowthEntriesTableUpdateCompanionBuilder = GrowthEntriesCompanion
    Function({
  Value<String> id,
  Value<String> childId,
  Value<DateTime> measuredAt,
  Value<double?> heightCm,
  Value<double?> weightKg,
  Value<double?> headCircumferenceCm,
  Value<String?> note,
  Value<MeasurementSource> source,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$GrowthEntriesTableReferences
    extends BaseReferences<_$AppDatabase, $GrowthEntriesTable, GrowthEntry> {
  $$GrowthEntriesTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $ChildrenTable _childIdTable(_$AppDatabase db) =>
      db.children.createAlias(
          $_aliasNameGenerator(db.growthEntries.childId, db.children.id));

  $$ChildrenTableProcessedTableManager get childId {
    final $_column = $_itemColumn<String>('child_id')!;

    final manager = $$ChildrenTableTableManager($_db, $_db.children)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_childIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$GrowthEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $GrowthEntriesTable> {
  $$GrowthEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get measuredAt => $composableBuilder(
      column: $table.measuredAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get heightCm => $composableBuilder(
      column: $table.heightCm, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get weightKg => $composableBuilder(
      column: $table.weightKg, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get headCircumferenceCm => $composableBuilder(
      column: $table.headCircumferenceCm,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<MeasurementSource, MeasurementSource, String>
      get source => $composableBuilder(
          column: $table.source,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$ChildrenTableFilterComposer get childId {
    final $$ChildrenTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.childId,
        referencedTable: $db.children,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ChildrenTableFilterComposer(
              $db: $db,
              $table: $db.children,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$GrowthEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $GrowthEntriesTable> {
  $$GrowthEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get measuredAt => $composableBuilder(
      column: $table.measuredAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get heightCm => $composableBuilder(
      column: $table.heightCm, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get weightKg => $composableBuilder(
      column: $table.weightKg, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get headCircumferenceCm => $composableBuilder(
      column: $table.headCircumferenceCm,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get source => $composableBuilder(
      column: $table.source, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$ChildrenTableOrderingComposer get childId {
    final $$ChildrenTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.childId,
        referencedTable: $db.children,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ChildrenTableOrderingComposer(
              $db: $db,
              $table: $db.children,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$GrowthEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $GrowthEntriesTable> {
  $$GrowthEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get measuredAt => $composableBuilder(
      column: $table.measuredAt, builder: (column) => column);

  GeneratedColumn<double> get heightCm =>
      $composableBuilder(column: $table.heightCm, builder: (column) => column);

  GeneratedColumn<double> get weightKg =>
      $composableBuilder(column: $table.weightKg, builder: (column) => column);

  GeneratedColumn<double> get headCircumferenceCm => $composableBuilder(
      column: $table.headCircumferenceCm, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumnWithTypeConverter<MeasurementSource, String> get source =>
      $composableBuilder(column: $table.source, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$ChildrenTableAnnotationComposer get childId {
    final $$ChildrenTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.childId,
        referencedTable: $db.children,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ChildrenTableAnnotationComposer(
              $db: $db,
              $table: $db.children,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$GrowthEntriesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $GrowthEntriesTable,
    GrowthEntry,
    $$GrowthEntriesTableFilterComposer,
    $$GrowthEntriesTableOrderingComposer,
    $$GrowthEntriesTableAnnotationComposer,
    $$GrowthEntriesTableCreateCompanionBuilder,
    $$GrowthEntriesTableUpdateCompanionBuilder,
    (GrowthEntry, $$GrowthEntriesTableReferences),
    GrowthEntry,
    PrefetchHooks Function({bool childId})> {
  $$GrowthEntriesTableTableManager(_$AppDatabase db, $GrowthEntriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GrowthEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GrowthEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GrowthEntriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> childId = const Value.absent(),
            Value<DateTime> measuredAt = const Value.absent(),
            Value<double?> heightCm = const Value.absent(),
            Value<double?> weightKg = const Value.absent(),
            Value<double?> headCircumferenceCm = const Value.absent(),
            Value<String?> note = const Value.absent(),
            Value<MeasurementSource> source = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              GrowthEntriesCompanion(
            id: id,
            childId: childId,
            measuredAt: measuredAt,
            heightCm: heightCm,
            weightKg: weightKg,
            headCircumferenceCm: headCircumferenceCm,
            note: note,
            source: source,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String childId,
            required DateTime measuredAt,
            Value<double?> heightCm = const Value.absent(),
            Value<double?> weightKg = const Value.absent(),
            Value<double?> headCircumferenceCm = const Value.absent(),
            Value<String?> note = const Value.absent(),
            Value<MeasurementSource> source = const Value.absent(),
            required DateTime createdAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              GrowthEntriesCompanion.insert(
            id: id,
            childId: childId,
            measuredAt: measuredAt,
            heightCm: heightCm,
            weightKg: weightKg,
            headCircumferenceCm: headCircumferenceCm,
            note: note,
            source: source,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$GrowthEntriesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({childId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (childId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.childId,
                    referencedTable:
                        $$GrowthEntriesTableReferences._childIdTable(db),
                    referencedColumn:
                        $$GrowthEntriesTableReferences._childIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$GrowthEntriesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $GrowthEntriesTable,
    GrowthEntry,
    $$GrowthEntriesTableFilterComposer,
    $$GrowthEntriesTableOrderingComposer,
    $$GrowthEntriesTableAnnotationComposer,
    $$GrowthEntriesTableCreateCompanionBuilder,
    $$GrowthEntriesTableUpdateCompanionBuilder,
    (GrowthEntry, $$GrowthEntriesTableReferences),
    GrowthEntry,
    PrefetchHooks Function({bool childId})>;
typedef $$VaccineDosesTableCreateCompanionBuilder = VaccineDosesCompanion
    Function({
  required String id,
  required String childId,
  required String vaccineCode,
  required int doseNumber,
  required int scheduledAgeDays,
  required DateTime dueDate,
  Value<DateTime?> administeredAt,
  Value<bool> skipped,
  Value<String?> note,
  required DateTime createdAt,
  Value<int> rowid,
});
typedef $$VaccineDosesTableUpdateCompanionBuilder = VaccineDosesCompanion
    Function({
  Value<String> id,
  Value<String> childId,
  Value<String> vaccineCode,
  Value<int> doseNumber,
  Value<int> scheduledAgeDays,
  Value<DateTime> dueDate,
  Value<DateTime?> administeredAt,
  Value<bool> skipped,
  Value<String?> note,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$VaccineDosesTableReferences
    extends BaseReferences<_$AppDatabase, $VaccineDosesTable, VaccineDose> {
  $$VaccineDosesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ChildrenTable _childIdTable(_$AppDatabase db) =>
      db.children.createAlias(
          $_aliasNameGenerator(db.vaccineDoses.childId, db.children.id));

  $$ChildrenTableProcessedTableManager get childId {
    final $_column = $_itemColumn<String>('child_id')!;

    final manager = $$ChildrenTableTableManager($_db, $_db.children)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_childIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$VaccineDosesTableFilterComposer
    extends Composer<_$AppDatabase, $VaccineDosesTable> {
  $$VaccineDosesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get vaccineCode => $composableBuilder(
      column: $table.vaccineCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get doseNumber => $composableBuilder(
      column: $table.doseNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get scheduledAgeDays => $composableBuilder(
      column: $table.scheduledAgeDays,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get dueDate => $composableBuilder(
      column: $table.dueDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get administeredAt => $composableBuilder(
      column: $table.administeredAt,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get skipped => $composableBuilder(
      column: $table.skipped, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$ChildrenTableFilterComposer get childId {
    final $$ChildrenTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.childId,
        referencedTable: $db.children,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ChildrenTableFilterComposer(
              $db: $db,
              $table: $db.children,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$VaccineDosesTableOrderingComposer
    extends Composer<_$AppDatabase, $VaccineDosesTable> {
  $$VaccineDosesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get vaccineCode => $composableBuilder(
      column: $table.vaccineCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get doseNumber => $composableBuilder(
      column: $table.doseNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get scheduledAgeDays => $composableBuilder(
      column: $table.scheduledAgeDays,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get dueDate => $composableBuilder(
      column: $table.dueDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get administeredAt => $composableBuilder(
      column: $table.administeredAt,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get skipped => $composableBuilder(
      column: $table.skipped, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$ChildrenTableOrderingComposer get childId {
    final $$ChildrenTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.childId,
        referencedTable: $db.children,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ChildrenTableOrderingComposer(
              $db: $db,
              $table: $db.children,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$VaccineDosesTableAnnotationComposer
    extends Composer<_$AppDatabase, $VaccineDosesTable> {
  $$VaccineDosesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get vaccineCode => $composableBuilder(
      column: $table.vaccineCode, builder: (column) => column);

  GeneratedColumn<int> get doseNumber => $composableBuilder(
      column: $table.doseNumber, builder: (column) => column);

  GeneratedColumn<int> get scheduledAgeDays => $composableBuilder(
      column: $table.scheduledAgeDays, builder: (column) => column);

  GeneratedColumn<DateTime> get dueDate =>
      $composableBuilder(column: $table.dueDate, builder: (column) => column);

  GeneratedColumn<DateTime> get administeredAt => $composableBuilder(
      column: $table.administeredAt, builder: (column) => column);

  GeneratedColumn<bool> get skipped =>
      $composableBuilder(column: $table.skipped, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$ChildrenTableAnnotationComposer get childId {
    final $$ChildrenTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.childId,
        referencedTable: $db.children,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ChildrenTableAnnotationComposer(
              $db: $db,
              $table: $db.children,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$VaccineDosesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $VaccineDosesTable,
    VaccineDose,
    $$VaccineDosesTableFilterComposer,
    $$VaccineDosesTableOrderingComposer,
    $$VaccineDosesTableAnnotationComposer,
    $$VaccineDosesTableCreateCompanionBuilder,
    $$VaccineDosesTableUpdateCompanionBuilder,
    (VaccineDose, $$VaccineDosesTableReferences),
    VaccineDose,
    PrefetchHooks Function({bool childId})> {
  $$VaccineDosesTableTableManager(_$AppDatabase db, $VaccineDosesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$VaccineDosesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$VaccineDosesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$VaccineDosesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> childId = const Value.absent(),
            Value<String> vaccineCode = const Value.absent(),
            Value<int> doseNumber = const Value.absent(),
            Value<int> scheduledAgeDays = const Value.absent(),
            Value<DateTime> dueDate = const Value.absent(),
            Value<DateTime?> administeredAt = const Value.absent(),
            Value<bool> skipped = const Value.absent(),
            Value<String?> note = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              VaccineDosesCompanion(
            id: id,
            childId: childId,
            vaccineCode: vaccineCode,
            doseNumber: doseNumber,
            scheduledAgeDays: scheduledAgeDays,
            dueDate: dueDate,
            administeredAt: administeredAt,
            skipped: skipped,
            note: note,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String childId,
            required String vaccineCode,
            required int doseNumber,
            required int scheduledAgeDays,
            required DateTime dueDate,
            Value<DateTime?> administeredAt = const Value.absent(),
            Value<bool> skipped = const Value.absent(),
            Value<String?> note = const Value.absent(),
            required DateTime createdAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              VaccineDosesCompanion.insert(
            id: id,
            childId: childId,
            vaccineCode: vaccineCode,
            doseNumber: doseNumber,
            scheduledAgeDays: scheduledAgeDays,
            dueDate: dueDate,
            administeredAt: administeredAt,
            skipped: skipped,
            note: note,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$VaccineDosesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({childId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (childId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.childId,
                    referencedTable:
                        $$VaccineDosesTableReferences._childIdTable(db),
                    referencedColumn:
                        $$VaccineDosesTableReferences._childIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$VaccineDosesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $VaccineDosesTable,
    VaccineDose,
    $$VaccineDosesTableFilterComposer,
    $$VaccineDosesTableOrderingComposer,
    $$VaccineDosesTableAnnotationComposer,
    $$VaccineDosesTableCreateCompanionBuilder,
    $$VaccineDosesTableUpdateCompanionBuilder,
    (VaccineDose, $$VaccineDosesTableReferences),
    VaccineDose,
    PrefetchHooks Function({bool childId})>;
typedef $$TeethTableCreateCompanionBuilder = TeethCompanion Function({
  required String id,
  required String childId,
  required String toothCode,
  required DateTime eruptedAt,
  Value<int> rowid,
});
typedef $$TeethTableUpdateCompanionBuilder = TeethCompanion Function({
  Value<String> id,
  Value<String> childId,
  Value<String> toothCode,
  Value<DateTime> eruptedAt,
  Value<int> rowid,
});

final class $$TeethTableReferences
    extends BaseReferences<_$AppDatabase, $TeethTable, TeethData> {
  $$TeethTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ChildrenTable _childIdTable(_$AppDatabase db) => db.children
      .createAlias($_aliasNameGenerator(db.teeth.childId, db.children.id));

  $$ChildrenTableProcessedTableManager get childId {
    final $_column = $_itemColumn<String>('child_id')!;

    final manager = $$ChildrenTableTableManager($_db, $_db.children)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_childIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$TeethTableFilterComposer extends Composer<_$AppDatabase, $TeethTable> {
  $$TeethTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get toothCode => $composableBuilder(
      column: $table.toothCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get eruptedAt => $composableBuilder(
      column: $table.eruptedAt, builder: (column) => ColumnFilters(column));

  $$ChildrenTableFilterComposer get childId {
    final $$ChildrenTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.childId,
        referencedTable: $db.children,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ChildrenTableFilterComposer(
              $db: $db,
              $table: $db.children,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TeethTableOrderingComposer
    extends Composer<_$AppDatabase, $TeethTable> {
  $$TeethTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get toothCode => $composableBuilder(
      column: $table.toothCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get eruptedAt => $composableBuilder(
      column: $table.eruptedAt, builder: (column) => ColumnOrderings(column));

  $$ChildrenTableOrderingComposer get childId {
    final $$ChildrenTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.childId,
        referencedTable: $db.children,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ChildrenTableOrderingComposer(
              $db: $db,
              $table: $db.children,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TeethTableAnnotationComposer
    extends Composer<_$AppDatabase, $TeethTable> {
  $$TeethTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get toothCode =>
      $composableBuilder(column: $table.toothCode, builder: (column) => column);

  GeneratedColumn<DateTime> get eruptedAt =>
      $composableBuilder(column: $table.eruptedAt, builder: (column) => column);

  $$ChildrenTableAnnotationComposer get childId {
    final $$ChildrenTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.childId,
        referencedTable: $db.children,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ChildrenTableAnnotationComposer(
              $db: $db,
              $table: $db.children,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TeethTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TeethTable,
    TeethData,
    $$TeethTableFilterComposer,
    $$TeethTableOrderingComposer,
    $$TeethTableAnnotationComposer,
    $$TeethTableCreateCompanionBuilder,
    $$TeethTableUpdateCompanionBuilder,
    (TeethData, $$TeethTableReferences),
    TeethData,
    PrefetchHooks Function({bool childId})> {
  $$TeethTableTableManager(_$AppDatabase db, $TeethTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TeethTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TeethTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TeethTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> childId = const Value.absent(),
            Value<String> toothCode = const Value.absent(),
            Value<DateTime> eruptedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TeethCompanion(
            id: id,
            childId: childId,
            toothCode: toothCode,
            eruptedAt: eruptedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String childId,
            required String toothCode,
            required DateTime eruptedAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              TeethCompanion.insert(
            id: id,
            childId: childId,
            toothCode: toothCode,
            eruptedAt: eruptedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$TeethTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({childId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (childId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.childId,
                    referencedTable: $$TeethTableReferences._childIdTable(db),
                    referencedColumn:
                        $$TeethTableReferences._childIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$TeethTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $TeethTable,
    TeethData,
    $$TeethTableFilterComposer,
    $$TeethTableOrderingComposer,
    $$TeethTableAnnotationComposer,
    $$TeethTableCreateCompanionBuilder,
    $$TeethTableUpdateCompanionBuilder,
    (TeethData, $$TeethTableReferences),
    TeethData,
    PrefetchHooks Function({bool childId})>;
typedef $$MilestonesTableCreateCompanionBuilder = MilestonesCompanion Function({
  required String id,
  required String childId,
  required String milestoneCode,
  Value<DateTime?> achievedAt,
  required int expectedAgeMonthsMin,
  required int expectedAgeMonthsMax,
  Value<int> rowid,
});
typedef $$MilestonesTableUpdateCompanionBuilder = MilestonesCompanion Function({
  Value<String> id,
  Value<String> childId,
  Value<String> milestoneCode,
  Value<DateTime?> achievedAt,
  Value<int> expectedAgeMonthsMin,
  Value<int> expectedAgeMonthsMax,
  Value<int> rowid,
});

final class $$MilestonesTableReferences
    extends BaseReferences<_$AppDatabase, $MilestonesTable, Milestone> {
  $$MilestonesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ChildrenTable _childIdTable(_$AppDatabase db) => db.children
      .createAlias($_aliasNameGenerator(db.milestones.childId, db.children.id));

  $$ChildrenTableProcessedTableManager get childId {
    final $_column = $_itemColumn<String>('child_id')!;

    final manager = $$ChildrenTableTableManager($_db, $_db.children)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_childIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$MilestonesTableFilterComposer
    extends Composer<_$AppDatabase, $MilestonesTable> {
  $$MilestonesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get milestoneCode => $composableBuilder(
      column: $table.milestoneCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get achievedAt => $composableBuilder(
      column: $table.achievedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get expectedAgeMonthsMin => $composableBuilder(
      column: $table.expectedAgeMonthsMin,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get expectedAgeMonthsMax => $composableBuilder(
      column: $table.expectedAgeMonthsMax,
      builder: (column) => ColumnFilters(column));

  $$ChildrenTableFilterComposer get childId {
    final $$ChildrenTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.childId,
        referencedTable: $db.children,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ChildrenTableFilterComposer(
              $db: $db,
              $table: $db.children,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$MilestonesTableOrderingComposer
    extends Composer<_$AppDatabase, $MilestonesTable> {
  $$MilestonesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get milestoneCode => $composableBuilder(
      column: $table.milestoneCode,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get achievedAt => $composableBuilder(
      column: $table.achievedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get expectedAgeMonthsMin => $composableBuilder(
      column: $table.expectedAgeMonthsMin,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get expectedAgeMonthsMax => $composableBuilder(
      column: $table.expectedAgeMonthsMax,
      builder: (column) => ColumnOrderings(column));

  $$ChildrenTableOrderingComposer get childId {
    final $$ChildrenTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.childId,
        referencedTable: $db.children,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ChildrenTableOrderingComposer(
              $db: $db,
              $table: $db.children,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$MilestonesTableAnnotationComposer
    extends Composer<_$AppDatabase, $MilestonesTable> {
  $$MilestonesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get milestoneCode => $composableBuilder(
      column: $table.milestoneCode, builder: (column) => column);

  GeneratedColumn<DateTime> get achievedAt => $composableBuilder(
      column: $table.achievedAt, builder: (column) => column);

  GeneratedColumn<int> get expectedAgeMonthsMin => $composableBuilder(
      column: $table.expectedAgeMonthsMin, builder: (column) => column);

  GeneratedColumn<int> get expectedAgeMonthsMax => $composableBuilder(
      column: $table.expectedAgeMonthsMax, builder: (column) => column);

  $$ChildrenTableAnnotationComposer get childId {
    final $$ChildrenTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.childId,
        referencedTable: $db.children,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ChildrenTableAnnotationComposer(
              $db: $db,
              $table: $db.children,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$MilestonesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MilestonesTable,
    Milestone,
    $$MilestonesTableFilterComposer,
    $$MilestonesTableOrderingComposer,
    $$MilestonesTableAnnotationComposer,
    $$MilestonesTableCreateCompanionBuilder,
    $$MilestonesTableUpdateCompanionBuilder,
    (Milestone, $$MilestonesTableReferences),
    Milestone,
    PrefetchHooks Function({bool childId})> {
  $$MilestonesTableTableManager(_$AppDatabase db, $MilestonesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MilestonesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MilestonesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MilestonesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> childId = const Value.absent(),
            Value<String> milestoneCode = const Value.absent(),
            Value<DateTime?> achievedAt = const Value.absent(),
            Value<int> expectedAgeMonthsMin = const Value.absent(),
            Value<int> expectedAgeMonthsMax = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MilestonesCompanion(
            id: id,
            childId: childId,
            milestoneCode: milestoneCode,
            achievedAt: achievedAt,
            expectedAgeMonthsMin: expectedAgeMonthsMin,
            expectedAgeMonthsMax: expectedAgeMonthsMax,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String childId,
            required String milestoneCode,
            Value<DateTime?> achievedAt = const Value.absent(),
            required int expectedAgeMonthsMin,
            required int expectedAgeMonthsMax,
            Value<int> rowid = const Value.absent(),
          }) =>
              MilestonesCompanion.insert(
            id: id,
            childId: childId,
            milestoneCode: milestoneCode,
            achievedAt: achievedAt,
            expectedAgeMonthsMin: expectedAgeMonthsMin,
            expectedAgeMonthsMax: expectedAgeMonthsMax,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$MilestonesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({childId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (childId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.childId,
                    referencedTable:
                        $$MilestonesTableReferences._childIdTable(db),
                    referencedColumn:
                        $$MilestonesTableReferences._childIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$MilestonesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $MilestonesTable,
    Milestone,
    $$MilestonesTableFilterComposer,
    $$MilestonesTableOrderingComposer,
    $$MilestonesTableAnnotationComposer,
    $$MilestonesTableCreateCompanionBuilder,
    $$MilestonesTableUpdateCompanionBuilder,
    (Milestone, $$MilestonesTableReferences),
    Milestone,
    PrefetchHooks Function({bool childId})>;
typedef $$FoodIntroductionsTableCreateCompanionBuilder
    = FoodIntroductionsCompanion Function({
  required String id,
  required String childId,
  required String foodCode,
  required DateTime firstTriedAt,
  Value<FoodReaction?> reaction,
  Value<String?> note,
  Value<int> rowid,
});
typedef $$FoodIntroductionsTableUpdateCompanionBuilder
    = FoodIntroductionsCompanion Function({
  Value<String> id,
  Value<String> childId,
  Value<String> foodCode,
  Value<DateTime> firstTriedAt,
  Value<FoodReaction?> reaction,
  Value<String?> note,
  Value<int> rowid,
});

final class $$FoodIntroductionsTableReferences extends BaseReferences<
    _$AppDatabase, $FoodIntroductionsTable, FoodIntroduction> {
  $$FoodIntroductionsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $ChildrenTable _childIdTable(_$AppDatabase db) =>
      db.children.createAlias(
          $_aliasNameGenerator(db.foodIntroductions.childId, db.children.id));

  $$ChildrenTableProcessedTableManager get childId {
    final $_column = $_itemColumn<String>('child_id')!;

    final manager = $$ChildrenTableTableManager($_db, $_db.children)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_childIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$FoodIntroductionsTableFilterComposer
    extends Composer<_$AppDatabase, $FoodIntroductionsTable> {
  $$FoodIntroductionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get foodCode => $composableBuilder(
      column: $table.foodCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get firstTriedAt => $composableBuilder(
      column: $table.firstTriedAt, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<FoodReaction?, FoodReaction, String>
      get reaction => $composableBuilder(
          column: $table.reaction,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnFilters(column));

  $$ChildrenTableFilterComposer get childId {
    final $$ChildrenTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.childId,
        referencedTable: $db.children,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ChildrenTableFilterComposer(
              $db: $db,
              $table: $db.children,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$FoodIntroductionsTableOrderingComposer
    extends Composer<_$AppDatabase, $FoodIntroductionsTable> {
  $$FoodIntroductionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get foodCode => $composableBuilder(
      column: $table.foodCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get firstTriedAt => $composableBuilder(
      column: $table.firstTriedAt,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get reaction => $composableBuilder(
      column: $table.reaction, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnOrderings(column));

  $$ChildrenTableOrderingComposer get childId {
    final $$ChildrenTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.childId,
        referencedTable: $db.children,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ChildrenTableOrderingComposer(
              $db: $db,
              $table: $db.children,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$FoodIntroductionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $FoodIntroductionsTable> {
  $$FoodIntroductionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get foodCode =>
      $composableBuilder(column: $table.foodCode, builder: (column) => column);

  GeneratedColumn<DateTime> get firstTriedAt => $composableBuilder(
      column: $table.firstTriedAt, builder: (column) => column);

  GeneratedColumnWithTypeConverter<FoodReaction?, String> get reaction =>
      $composableBuilder(column: $table.reaction, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  $$ChildrenTableAnnotationComposer get childId {
    final $$ChildrenTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.childId,
        referencedTable: $db.children,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ChildrenTableAnnotationComposer(
              $db: $db,
              $table: $db.children,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$FoodIntroductionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $FoodIntroductionsTable,
    FoodIntroduction,
    $$FoodIntroductionsTableFilterComposer,
    $$FoodIntroductionsTableOrderingComposer,
    $$FoodIntroductionsTableAnnotationComposer,
    $$FoodIntroductionsTableCreateCompanionBuilder,
    $$FoodIntroductionsTableUpdateCompanionBuilder,
    (FoodIntroduction, $$FoodIntroductionsTableReferences),
    FoodIntroduction,
    PrefetchHooks Function({bool childId})> {
  $$FoodIntroductionsTableTableManager(
      _$AppDatabase db, $FoodIntroductionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FoodIntroductionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FoodIntroductionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FoodIntroductionsTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> childId = const Value.absent(),
            Value<String> foodCode = const Value.absent(),
            Value<DateTime> firstTriedAt = const Value.absent(),
            Value<FoodReaction?> reaction = const Value.absent(),
            Value<String?> note = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              FoodIntroductionsCompanion(
            id: id,
            childId: childId,
            foodCode: foodCode,
            firstTriedAt: firstTriedAt,
            reaction: reaction,
            note: note,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String childId,
            required String foodCode,
            required DateTime firstTriedAt,
            Value<FoodReaction?> reaction = const Value.absent(),
            Value<String?> note = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              FoodIntroductionsCompanion.insert(
            id: id,
            childId: childId,
            foodCode: foodCode,
            firstTriedAt: firstTriedAt,
            reaction: reaction,
            note: note,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$FoodIntroductionsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({childId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (childId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.childId,
                    referencedTable:
                        $$FoodIntroductionsTableReferences._childIdTable(db),
                    referencedColumn:
                        $$FoodIntroductionsTableReferences._childIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$FoodIntroductionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $FoodIntroductionsTable,
    FoodIntroduction,
    $$FoodIntroductionsTableFilterComposer,
    $$FoodIntroductionsTableOrderingComposer,
    $$FoodIntroductionsTableAnnotationComposer,
    $$FoodIntroductionsTableCreateCompanionBuilder,
    $$FoodIntroductionsTableUpdateCompanionBuilder,
    (FoodIntroduction, $$FoodIntroductionsTableReferences),
    FoodIntroduction,
    PrefetchHooks Function({bool childId})>;
typedef $$ActivityLogTableCreateCompanionBuilder = ActivityLogCompanion
    Function({
  required String id,
  required String childId,
  required String contentId,
  required ContentType contentType,
  required DateTime completedAt,
  Value<bool> favorited,
  Value<int> rowid,
});
typedef $$ActivityLogTableUpdateCompanionBuilder = ActivityLogCompanion
    Function({
  Value<String> id,
  Value<String> childId,
  Value<String> contentId,
  Value<ContentType> contentType,
  Value<DateTime> completedAt,
  Value<bool> favorited,
  Value<int> rowid,
});

final class $$ActivityLogTableReferences
    extends BaseReferences<_$AppDatabase, $ActivityLogTable, ActivityLogData> {
  $$ActivityLogTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ChildrenTable _childIdTable(_$AppDatabase db) =>
      db.children.createAlias(
          $_aliasNameGenerator(db.activityLog.childId, db.children.id));

  $$ChildrenTableProcessedTableManager get childId {
    final $_column = $_itemColumn<String>('child_id')!;

    final manager = $$ChildrenTableTableManager($_db, $_db.children)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_childIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$ActivityLogTableFilterComposer
    extends Composer<_$AppDatabase, $ActivityLogTable> {
  $$ActivityLogTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contentId => $composableBuilder(
      column: $table.contentId, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<ContentType, ContentType, String>
      get contentType => $composableBuilder(
          column: $table.contentType,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<DateTime> get completedAt => $composableBuilder(
      column: $table.completedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get favorited => $composableBuilder(
      column: $table.favorited, builder: (column) => ColumnFilters(column));

  $$ChildrenTableFilterComposer get childId {
    final $$ChildrenTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.childId,
        referencedTable: $db.children,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ChildrenTableFilterComposer(
              $db: $db,
              $table: $db.children,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ActivityLogTableOrderingComposer
    extends Composer<_$AppDatabase, $ActivityLogTable> {
  $$ActivityLogTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contentId => $composableBuilder(
      column: $table.contentId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contentType => $composableBuilder(
      column: $table.contentType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get completedAt => $composableBuilder(
      column: $table.completedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get favorited => $composableBuilder(
      column: $table.favorited, builder: (column) => ColumnOrderings(column));

  $$ChildrenTableOrderingComposer get childId {
    final $$ChildrenTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.childId,
        referencedTable: $db.children,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ChildrenTableOrderingComposer(
              $db: $db,
              $table: $db.children,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ActivityLogTableAnnotationComposer
    extends Composer<_$AppDatabase, $ActivityLogTable> {
  $$ActivityLogTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get contentId =>
      $composableBuilder(column: $table.contentId, builder: (column) => column);

  GeneratedColumnWithTypeConverter<ContentType, String> get contentType =>
      $composableBuilder(
          column: $table.contentType, builder: (column) => column);

  GeneratedColumn<DateTime> get completedAt => $composableBuilder(
      column: $table.completedAt, builder: (column) => column);

  GeneratedColumn<bool> get favorited =>
      $composableBuilder(column: $table.favorited, builder: (column) => column);

  $$ChildrenTableAnnotationComposer get childId {
    final $$ChildrenTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.childId,
        referencedTable: $db.children,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ChildrenTableAnnotationComposer(
              $db: $db,
              $table: $db.children,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ActivityLogTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ActivityLogTable,
    ActivityLogData,
    $$ActivityLogTableFilterComposer,
    $$ActivityLogTableOrderingComposer,
    $$ActivityLogTableAnnotationComposer,
    $$ActivityLogTableCreateCompanionBuilder,
    $$ActivityLogTableUpdateCompanionBuilder,
    (ActivityLogData, $$ActivityLogTableReferences),
    ActivityLogData,
    PrefetchHooks Function({bool childId})> {
  $$ActivityLogTableTableManager(_$AppDatabase db, $ActivityLogTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ActivityLogTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ActivityLogTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ActivityLogTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> childId = const Value.absent(),
            Value<String> contentId = const Value.absent(),
            Value<ContentType> contentType = const Value.absent(),
            Value<DateTime> completedAt = const Value.absent(),
            Value<bool> favorited = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ActivityLogCompanion(
            id: id,
            childId: childId,
            contentId: contentId,
            contentType: contentType,
            completedAt: completedAt,
            favorited: favorited,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String childId,
            required String contentId,
            required ContentType contentType,
            required DateTime completedAt,
            Value<bool> favorited = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ActivityLogCompanion.insert(
            id: id,
            childId: childId,
            contentId: contentId,
            contentType: contentType,
            completedAt: completedAt,
            favorited: favorited,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ActivityLogTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({childId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (childId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.childId,
                    referencedTable:
                        $$ActivityLogTableReferences._childIdTable(db),
                    referencedColumn:
                        $$ActivityLogTableReferences._childIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$ActivityLogTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ActivityLogTable,
    ActivityLogData,
    $$ActivityLogTableFilterComposer,
    $$ActivityLogTableOrderingComposer,
    $$ActivityLogTableAnnotationComposer,
    $$ActivityLogTableCreateCompanionBuilder,
    $$ActivityLogTableUpdateCompanionBuilder,
    (ActivityLogData, $$ActivityLogTableReferences),
    ActivityLogData,
    PrefetchHooks Function({bool childId})>;
typedef $$SleepFeedLogTableCreateCompanionBuilder = SleepFeedLogCompanion
    Function({
  required String id,
  required String childId,
  required SleepFeedType type,
  required DateTime startedAt,
  Value<DateTime?> endedAt,
  Value<double?> quantity,
  Value<int> rowid,
});
typedef $$SleepFeedLogTableUpdateCompanionBuilder = SleepFeedLogCompanion
    Function({
  Value<String> id,
  Value<String> childId,
  Value<SleepFeedType> type,
  Value<DateTime> startedAt,
  Value<DateTime?> endedAt,
  Value<double?> quantity,
  Value<int> rowid,
});

final class $$SleepFeedLogTableReferences extends BaseReferences<_$AppDatabase,
    $SleepFeedLogTable, SleepFeedLogData> {
  $$SleepFeedLogTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ChildrenTable _childIdTable(_$AppDatabase db) =>
      db.children.createAlias(
          $_aliasNameGenerator(db.sleepFeedLog.childId, db.children.id));

  $$ChildrenTableProcessedTableManager get childId {
    final $_column = $_itemColumn<String>('child_id')!;

    final manager = $$ChildrenTableTableManager($_db, $_db.children)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_childIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$SleepFeedLogTableFilterComposer
    extends Composer<_$AppDatabase, $SleepFeedLogTable> {
  $$SleepFeedLogTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<SleepFeedType, SleepFeedType, String>
      get type => $composableBuilder(
          column: $table.type,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<DateTime> get startedAt => $composableBuilder(
      column: $table.startedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get endedAt => $composableBuilder(
      column: $table.endedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get quantity => $composableBuilder(
      column: $table.quantity, builder: (column) => ColumnFilters(column));

  $$ChildrenTableFilterComposer get childId {
    final $$ChildrenTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.childId,
        referencedTable: $db.children,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ChildrenTableFilterComposer(
              $db: $db,
              $table: $db.children,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$SleepFeedLogTableOrderingComposer
    extends Composer<_$AppDatabase, $SleepFeedLogTable> {
  $$SleepFeedLogTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get startedAt => $composableBuilder(
      column: $table.startedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get endedAt => $composableBuilder(
      column: $table.endedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get quantity => $composableBuilder(
      column: $table.quantity, builder: (column) => ColumnOrderings(column));

  $$ChildrenTableOrderingComposer get childId {
    final $$ChildrenTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.childId,
        referencedTable: $db.children,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ChildrenTableOrderingComposer(
              $db: $db,
              $table: $db.children,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$SleepFeedLogTableAnnotationComposer
    extends Composer<_$AppDatabase, $SleepFeedLogTable> {
  $$SleepFeedLogTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumnWithTypeConverter<SleepFeedType, String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<DateTime> get startedAt =>
      $composableBuilder(column: $table.startedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get endedAt =>
      $composableBuilder(column: $table.endedAt, builder: (column) => column);

  GeneratedColumn<double> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  $$ChildrenTableAnnotationComposer get childId {
    final $$ChildrenTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.childId,
        referencedTable: $db.children,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ChildrenTableAnnotationComposer(
              $db: $db,
              $table: $db.children,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$SleepFeedLogTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SleepFeedLogTable,
    SleepFeedLogData,
    $$SleepFeedLogTableFilterComposer,
    $$SleepFeedLogTableOrderingComposer,
    $$SleepFeedLogTableAnnotationComposer,
    $$SleepFeedLogTableCreateCompanionBuilder,
    $$SleepFeedLogTableUpdateCompanionBuilder,
    (SleepFeedLogData, $$SleepFeedLogTableReferences),
    SleepFeedLogData,
    PrefetchHooks Function({bool childId})> {
  $$SleepFeedLogTableTableManager(_$AppDatabase db, $SleepFeedLogTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SleepFeedLogTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SleepFeedLogTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SleepFeedLogTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> childId = const Value.absent(),
            Value<SleepFeedType> type = const Value.absent(),
            Value<DateTime> startedAt = const Value.absent(),
            Value<DateTime?> endedAt = const Value.absent(),
            Value<double?> quantity = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SleepFeedLogCompanion(
            id: id,
            childId: childId,
            type: type,
            startedAt: startedAt,
            endedAt: endedAt,
            quantity: quantity,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String childId,
            required SleepFeedType type,
            required DateTime startedAt,
            Value<DateTime?> endedAt = const Value.absent(),
            Value<double?> quantity = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SleepFeedLogCompanion.insert(
            id: id,
            childId: childId,
            type: type,
            startedAt: startedAt,
            endedAt: endedAt,
            quantity: quantity,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$SleepFeedLogTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({childId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (childId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.childId,
                    referencedTable:
                        $$SleepFeedLogTableReferences._childIdTable(db),
                    referencedColumn:
                        $$SleepFeedLogTableReferences._childIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$SleepFeedLogTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SleepFeedLogTable,
    SleepFeedLogData,
    $$SleepFeedLogTableFilterComposer,
    $$SleepFeedLogTableOrderingComposer,
    $$SleepFeedLogTableAnnotationComposer,
    $$SleepFeedLogTableCreateCompanionBuilder,
    $$SleepFeedLogTableUpdateCompanionBuilder,
    (SleepFeedLogData, $$SleepFeedLogTableReferences),
    SleepFeedLogData,
    PrefetchHooks Function({bool childId})>;
typedef $$AppSettingsTableCreateCompanionBuilder = AppSettingsCompanion
    Function({
  required String key,
  Value<String?> value,
  Value<int> rowid,
});
typedef $$AppSettingsTableUpdateCompanionBuilder = AppSettingsCompanion
    Function({
  Value<String> key,
  Value<String?> value,
  Value<int> rowid,
});

class $$AppSettingsTableFilterComposer
    extends Composer<_$AppDatabase, $AppSettingsTable> {
  $$AppSettingsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnFilters(column));
}

class $$AppSettingsTableOrderingComposer
    extends Composer<_$AppDatabase, $AppSettingsTable> {
  $$AppSettingsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnOrderings(column));
}

class $$AppSettingsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AppSettingsTable> {
  $$AppSettingsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);
}

class $$AppSettingsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AppSettingsTable,
    AppSetting,
    $$AppSettingsTableFilterComposer,
    $$AppSettingsTableOrderingComposer,
    $$AppSettingsTableAnnotationComposer,
    $$AppSettingsTableCreateCompanionBuilder,
    $$AppSettingsTableUpdateCompanionBuilder,
    (AppSetting, BaseReferences<_$AppDatabase, $AppSettingsTable, AppSetting>),
    AppSetting,
    PrefetchHooks Function()> {
  $$AppSettingsTableTableManager(_$AppDatabase db, $AppSettingsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AppSettingsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AppSettingsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AppSettingsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> key = const Value.absent(),
            Value<String?> value = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AppSettingsCompanion(
            key: key,
            value: value,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String key,
            Value<String?> value = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AppSettingsCompanion.insert(
            key: key,
            value: value,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$AppSettingsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $AppSettingsTable,
    AppSetting,
    $$AppSettingsTableFilterComposer,
    $$AppSettingsTableOrderingComposer,
    $$AppSettingsTableAnnotationComposer,
    $$AppSettingsTableCreateCompanionBuilder,
    $$AppSettingsTableUpdateCompanionBuilder,
    (AppSetting, BaseReferences<_$AppDatabase, $AppSettingsTable, AppSetting>),
    AppSetting,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ChildrenTableTableManager get children =>
      $$ChildrenTableTableManager(_db, _db.children);
  $$GrowthEntriesTableTableManager get growthEntries =>
      $$GrowthEntriesTableTableManager(_db, _db.growthEntries);
  $$VaccineDosesTableTableManager get vaccineDoses =>
      $$VaccineDosesTableTableManager(_db, _db.vaccineDoses);
  $$TeethTableTableManager get teeth =>
      $$TeethTableTableManager(_db, _db.teeth);
  $$MilestonesTableTableManager get milestones =>
      $$MilestonesTableTableManager(_db, _db.milestones);
  $$FoodIntroductionsTableTableManager get foodIntroductions =>
      $$FoodIntroductionsTableTableManager(_db, _db.foodIntroductions);
  $$ActivityLogTableTableManager get activityLog =>
      $$ActivityLogTableTableManager(_db, _db.activityLog);
  $$SleepFeedLogTableTableManager get sleepFeedLog =>
      $$SleepFeedLogTableTableManager(_db, _db.sleepFeedLog);
  $$AppSettingsTableTableManager get appSettings =>
      $$AppSettingsTableTableManager(_db, _db.appSettings);
}

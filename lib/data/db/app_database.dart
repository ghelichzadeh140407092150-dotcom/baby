// data/db/app_database.dart
import 'package:drift/drift.dart';
import 'package:drift/native.dart';

part 'app_database.g.dart';

/// Children table
class Children extends Table {
  TextColumn get id => text()();
  TextColumn get name => text().withLength(min: 1, max: 100)();
  DateTimeColumn get birthDate => dateTime()();
  BoolColumn get isPreBirth => boolean().withDefault(const Constant(false))();
  TextColumn get sex => textEnum<ChildSex>().nullable()();
  IntColumn get gestationalWeeksAtBirth => integer().nullable()();
  IntColumn get avatarSeed => integer()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

/// Growth entries table
class GrowthEntries extends Table {
  TextColumn get id => text()();
  TextColumn get childId => text().references(Children, #id, onDelete: KeyAction.cascade)();
  DateTimeColumn get measuredAt => dateTime()();
  RealColumn get heightCm => real().nullable()();
  RealColumn get weightKg => real().nullable()();
  RealColumn get headCircumferenceCm => real().nullable()();
  TextColumn get note => text().nullable()();
  TextColumn get source => textEnum<MeasurementSource>().withDefault(const Constant(MeasurementSource.manual))();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

/// Vaccine doses table
class VaccineDoses extends Table {
  TextColumn get id => text()();
  TextColumn get childId => text().references(Children, #id, onDelete: KeyAction.cascade)();
  TextColumn get vaccineCode => text()();
  IntColumn get doseNumber => integer()();
  IntColumn get scheduledAgeDays => integer()();
  DateTimeColumn get dueDate => dateTime()();
  DateTimeColumn get administeredAt => dateTime().nullable()();
  BoolColumn get skipped => boolean().withDefault(const Constant(false))();
  TextColumn get note => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

/// Teeth table
class Teeth extends Table {
  TextColumn get id => text()();
  TextColumn get childId => text().references(Children, #id, onDelete: KeyAction.cascade)();
  TextColumn get toothCode => text()(); // FDI notation: 11-18, 21-28, 31-38, 41-48, 51-55, 61-65, 71-75, 81-85
  DateTimeColumn get eruptedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

/// Milestones table
class Milestones extends Table {
  TextColumn get id => text()();
  TextColumn get childId => text().references(Children, #id, onDelete: KeyAction.cascade)();
  TextColumn get milestoneCode => text()();
  DateTimeColumn get achievedAt => dateTime().nullable()();
  IntColumn get expectedAgeMonthsMin => integer()();
  IntColumn get expectedAgeMonthsMax => integer()();

  @override
  Set<Column> get primaryKey => {id};
}

/// Food introductions table
class FoodIntroductions extends Table {
  TextColumn get id => text()();
  TextColumn get childId => text().references(Children, #id, onDelete: KeyAction.cascade)();
  TextColumn get foodCode => text()();
  DateTimeColumn get firstTriedAt => dateTime()();
  TextColumn get reaction => textEnum<FoodReaction>().nullable()();
  TextColumn get note => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

/// Activity log table
class ActivityLog extends Table {
  TextColumn get id => text()();
  TextColumn get childId => text().references(Children, #id, onDelete: KeyAction.cascade)();
  TextColumn get contentId => text()();
  TextColumn get contentType => textEnum<ContentType>()();
  DateTimeColumn get completedAt => dateTime()();
  BoolColumn get favorited => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}

/// Sleep/Feed log table
class SleepFeedLog extends Table {
  TextColumn get id => text()();
  TextColumn get childId => text().references(Children, #id, onDelete: KeyAction.cascade)();
  TextColumn get type => textEnum<SleepFeedType>()();
  DateTimeColumn get startedAt => dateTime()();
  DateTimeColumn get endedAt => dateTime().nullable()();
  RealColumn get quantity => real().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

/// App settings table
class AppSettings extends Table {
  TextColumn get key => text()();
  TextColumn get value => text().nullable()();

  @override
  Set<Column> get primaryKey => {key};
}

/// Enums
enum ChildSex { girl, boy, unspecified }
enum MeasurementSource { manual, clinic }
enum FoodReaction { liked, disliked, refused, suspectedAllergy }
enum ContentType { game, story, craft }
enum SleepFeedType { sleep, feed }

/// Database class
@DriftDatabase(
  tables: [
    Children,
    GrowthEntries,
    VaccineDoses,
    Teeth,
    Milestones,
    FoodIntroductions,
    ActivityLog,
    SleepFeedLog,
    AppSettings,
  ],
  daos: [
    ChildDao,
    GrowthDao,
    VaccineDao,
    TeethDao,
    MilestoneDao,
    FoodDao,
    ActivityDao,
    SleepFeedDao,
    SettingsDao,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase(QueryExecutor executor) : super(executor);

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (Migrator m) async {
      await m.createAll();
    },
    onUpgrade: (Migrator m, int from, int to) async {
      // Future migrations will be handled here
    },
  );
}
// data/dao/settings_dao.dart
import 'package:drift/drift.dart';
import '../db/app_database.dart';

part 'settings_dao.g.dart';

@DriftAccessor(tables: [AppSettings])
class SettingsDao extends DatabaseAccessor<AppDatabase> with _$SettingsDaoMixin {
  SettingsDao(super.db);

  /// Get a setting value
  Future<String?> getSetting(String key) async {
    final row = await (select(appSettings)..where((s) => s.key.equals(key))).getSingleOrNull();
    return row?.value;
  }

  /// Set a setting value
  Future<void> setSetting(String key, String? value) async {
    await into(appSettings).insertOnConflictUpdate(AppSettingsCompanion(
      key: Value(key),
      value: Value(value),
    ));
  }

  /// Get active child ID
  Future<String?> getActiveChildId() => getSetting('activeChildId');

  /// Set active child ID
  Future<void> setActiveChildId(String childId) => setSetting('activeChildId', childId);

  /// Get onboarding completed flag
  Future<bool> getOnboardingCompleted() async {
    final value = await getSetting('onboardingCompleted');
    return value == 'true';
  }

  /// Set onboarding completed
  Future<void> setOnboardingCompleted(bool completed) => 
      setSetting('onboardingCompleted', completed.toString());

  /// Get content bundle version
  Future<int> getContentBundleVersion() async {
    final value = await getSetting('contentBundleVersion');
    return int.tryParse(value ?? '0') ?? 0;
  }

  /// Set content bundle version
  Future<void> setContentBundleVersion(int version) => 
      setSetting('contentBundleVersion', version.toString());

  /// Get subscription state
  Future<String?> getSubscriptionState() => getSetting('subscriptionState');

  /// Set subscription state
  Future<void> setSubscriptionState(String state) => setSetting('subscriptionState', state);

  /// Get reminder preferences
  Future<String?> getReminderPrefs() => getSetting('reminderPrefs');

  /// Set reminder preferences
  Future<void> setReminderPrefs(String prefs) => setSetting('reminderPrefs', prefs);

  /// Watch a setting
  Stream<String?> watchSetting(String key) =>
      (select(appSettings)..where((s) => s.key.equals(key)))
        .watchSingleOrNull()
        .map((row) => row?.value);
}
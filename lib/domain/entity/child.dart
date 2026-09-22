// domain/entity/child.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'child.freezed.dart';
part 'child.g.dart';

@freezed
class Child with _$Child {
  const factory Child({
    required String id,
    required String name,
    required DateTime birthDate,
    required bool isPreBirth,
    String? sex,
    int? gestationalWeeksAtBirth,
    required int avatarSeed,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Child;

  factory Child.fromJson(Map<String, dynamic> json) => _$ChildFromJson(json);
}

/// Extension for child age calculations
extension ChildAge on Child {
  /// Get age in days (negative for pre-birth)
  int get ageInDays {
    final now = DateTime.now();
    if (isPreBirth) {
      return -birthDate.difference(now).inDays;
    }
    return now.difference(birthDate).inDays;
  }

  /// Get age in months
  int get ageInMonths {
    if (isPreBirth) return 0;
    return (ageInDays / 30.4375).floor();
  }

  /// Get corrected age in days for premature babies
  int get correctedAgeInDays {
    if (gestationalWeeksAtBirth == null || gestationalWeeksAtBirth! >= 37) {
      return ageInDays;
    }
    if (ageInDays > 730) return ageInDays; // Stop correction after 24 months
    
    final weeksEarly = 40 - gestationalWeeksAtBirth!;
    return ageInDays - (weeksEarly * 7);
  }

  /// Get corrected age in months
  int get correctedAgeInMonths {
    if (correctedAgeInDays <= 0) return 0;
    return (correctedAgeInDays / 30.4375).floor();
  }
}
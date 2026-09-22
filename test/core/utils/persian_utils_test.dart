// test/core/utils/persian_utils_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:hamrah_madaran/core/utils/persian_utils.dart';

void main() {
  group('toPersianDigits', () {
    test('converts single digits', () {
      expect(toPersianDigits(0), '۰');
      expect(toPersianDigits(5), '۵');
      expect(toPersianDigits(9), '۹');
    });

    test('converts multi-digit numbers', () {
      expect(toPersianDigits(42), '۴۲');
      expect(toPersianDigits(1400), '۱۴۰۰');
      expect(toPersianDigits('123'), '۱۲۳');
    });

    test('handles mixed strings', () {
      expect(toPersianDigits('Age: 25'), 'Age: ۲۵');
      expect(toPersianDigits('1400/01/01'), '۱۴۰۰/۰۱/۰۱');
    });

    test('handles null and empty', () {
      expect(toPersianDigits(null), '');
      expect(toPersianDigits(''), '');
    });
  });

  group('toEnglishDigits', () {
    test('converts Persian digits to English', () {
      expect(toEnglishDigits('۰'), '0');
      expect(toEnglishDigits('۵'), '5');
      expect(toEnglishDigits('۹'), '9');
    });

    test('converts multi-digit Persian numbers', () {
      expect(toEnglishDigits('۴۲'), '42');
      expect(toEnglishDigits('۱۴۰۰'), '1400');
    });

    test('handles mixed strings', () {
      expect(toEnglishDigits('سن: ۲۵'), 'سن: 25');
      expect(toEnglishDigits('۱۴۰۰/۰۱/۰۱'), '1400/01/01');
    });
  });

  group('formatJalaliDate', () {
    test('formats short date correctly', () {
      // 1403/06/15 = 2024/09/05
      final date = DateTime(2024, 9, 5);
      expect(formatJalaliDate(date, format: 'short'), '1403/06/15');
    });

    test('formats long date correctly', () {
      final date = DateTime(2024, 9, 5);
      expect(formatJalaliDate(date, format: 'long'), '۱۵ شهریور ۱۴۰۳');
    });

    test('formats relative dates', () {
      final now = DateTime.now();
      final today = DateTime(now.year, now.month, now.day);
      
      expect(formatJalaliDate(today, format: 'relative'), 'امروز');
      expect(formatJalaliDate(today.add(const Duration(days: 1)), format: 'relative'), 'فردا');
      expect(formatJalaliDate(today.subtract(const Duration(days: 1)), format: 'relative'), 'دیروز');
      expect(formatJalaliDate(today.add(const Duration(days: 3)), format: 'relative'), '۳ روز دیگر');
      expect(formatJalaliDate(today.subtract(const Duration(days: 3)), format: 'relative'), '۳ روز پیش');
    });
  });

  group('ageFromBirthDate', () {
    test('calculates age in days for newborn', () {
      final birthDate = DateTime.now().subtract(const Duration(days: 15));
      final result = ageFromBirthDate(birthDate);
      
      expect(result['ageInDays'], 15);
      expect(result['ageInMonths'], 0);
      expect(result['persian'], '۱۵ روزه');
    });

    test('calculates age in months for infant', () {
      final birthDate = DateTime.now().subtract(const Duration(days: 45));
      final result = ageFromBirthDate(birthDate);
      
      expect(result['ageInMonths'], 1);
      expect(result['persian'], contains('۱ ماه'));
    });

    test('calculates age in years for toddler', () {
      final birthDate = DateTime.now().subtract(const Duration(days: 400));
      final result = ageFromBirthDate(birthDate);
      
      expect(result['ageInMonths'], greaterThan(12));
      expect(result['persian'], contains('سال'));
    });

    test('handles pre-birth', () {
      final dueDate = DateTime.now().add(const Duration(days: 60));
      final result = ageFromBirthDate(dueDate, isPreBirth: true);
      
      expect(result['persian'], 'بارداری');
      expect(result['weeksRemaining'], 9);
    });
  });

  group('correctedAgeFromBirthDate', () {
    test('returns normal age for full-term baby', () {
      final birthDate = DateTime.now().subtract(const Duration(days: 60));
      final result = correctedAgeFromBirthDate(birthDate, gestationalWeeksAtBirth: 40);
      
      expect(result['isCorrected'], isNot(true));
      expect(result['ageInDays'], 60);
    });

    test('applies correction for premature baby', () {
      final birthDate = DateTime.now().subtract(const Duration(days: 120));
      // Born at 32 weeks (8 weeks early)
      final result = correctedAgeFromBirthDate(birthDate, gestationalWeeksAtBirth: 32);
      
      expect(result['isCorrected'], true);
      // 120 days - 56 days (8 weeks) = 64 days corrected
      expect(result['ageInDays'], 64);
    });

    test('stops correction after 24 months', () {
      final birthDate = DateTime.now().subtract(const Duration(days: 800));
      final result = correctedAgeFromBirthDate(birthDate, gestationalWeeksAtBirth: 32);
      
      expect(result['isCorrected'], isNot(true));
      expect(result['ageInDays'], 800);
    });
  });

  group('parseJalaliDate', () {
    test('parses valid Jalali date', () {
      final date = parseJalaliDate('1403/06/15');
      expect(date, isNotNull);
      expect(date!.year, 2024);
      expect(date.month, 9);
      expect(date.day, 5);
    });

    test('parses Persian digits', () {
      final date = parseJalaliDate('۱۴۰۳/۰۶/۱۵');
      expect(date, isNotNull);
      expect(date!.year, 2024);
    });

    test('returns null for invalid input', () {
      expect(parseJalaliDate('invalid'), isNull);
      expect(parseJalaliDate('1403/13/01'), isNull); // invalid month
      expect(parseJalaliDate('1403/06/32'), isNull); // invalid day
    });
  });
}
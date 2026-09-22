// core/utils/persian_utils.dart
import 'package:shamsi_date/shamsi_date.dart';

/// Convert English digits to Persian (Eastern Arabic) digits
String toPersianDigits(dynamic input) {
  if (input == null) return '';
  final str = input.toString();
  const persianDigits = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];
  return str.replaceAllMapped(RegExp(r'[0-9]'), (match) {
    return persianDigits[int.parse(match.group(0)!)];
  });
}

/// Convert Persian digits to English digits
String toEnglishDigits(String input) {
  const persianDigits = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];
  return input.replaceAllMapped(RegExp(r'[۰-۹]'), (match) {
    return persianDigits.indexOf(match.group(0)!).toString();
  });
}

/// Format Jalali date
String formatJalaliDate(DateTime date, {String format = 'short'}) {
  final jalali = Jalali.fromDateTime(date);
  
  switch (format) {
    case 'short':
      return '${toPersianDigits(jalali.year)}/${toPersianDigits(jalali.month.toString().padLeft(2, '0'))}/${toPersianDigits(jalali.day.toString().padLeft(2, '0'))}';
    case 'long':
      const months = [
        'فروردین', 'اردیبهشت', 'خرداد', 'تیر', 'مرداد', 'شهریور',
        'مهر', 'آبان', 'آذر', 'دی', 'بهمن', 'اسفند'
      ];
      return '${toPersianDigits(jalali.day)} ${months[jalali.month - 1]} ${toPersianDigits(jalali.year)}';
    case 'relative':
      return _formatRelativeDate(date);
    default:
      return formatJalaliDate(date, format: 'short');
  }
}

/// Format relative date (e.g., "۳ روز پیش", "فردا")
String _formatRelativeDate(DateTime date) {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final targetDate = DateTime(date.year, date.month, date.day);
  final difference = targetDate.difference(today).inDays;
  
  if (difference == 0) return 'امروز';
  if (difference == 1) return 'فردا';
  if (difference == -1) return 'دیروز';
  if (difference > 1 && difference <= 7) return '${toPersianDigits(difference)} روز دیگر';
  if (difference < -1 && difference >= -7) return '${toPersianDigits(-difference)} روز پیش';
  
  return formatJalaliDate(date, format: 'long');
}

/// Calculate age from birth date
/// Returns a map with ageInDays, ageInMonths, and a Persian string representation
Map<String, dynamic> ageFromBirthDate(DateTime birthDate, {bool isPreBirth = false}) {
  final now = DateTime.now();
  
  if (isPreBirth) {
    final dueDate = birthDate;
    final diff = dueDate.difference(now).inDays;
    if (diff > 0) {
      return {
        'ageInDays': -diff,
        'ageInMonths': 0,
        'persian': 'بارداری',
        'weeksRemaining': (diff / 7).ceil(),
      };
    }
  }
  
  final ageInDays = now.difference(birthDate).inDays;
  final ageInMonths = (ageInDays / 30.4375).floor();
  
  String persian;
  if (ageInDays < 30) {
    persian = '${toPersianDigits(ageInDays)} روزه';
  } else if (ageInMonths < 24) {
    final remainingDays = ageInDays % 30;
    if (remainingDays == 0) {
      persian = '${toPersianDigits(ageInMonths)} ماهه';
    } else {
      persian = '${toPersianDigits(ageInMonths)} ماه و ${toPersianDigits(remainingDays)} روزه';
    }
  } else {
    final years = (ageInMonths / 12).floor();
    final remainingMonths = ageInMonths % 12;
    if (remainingMonths == 0) {
      persian = '${toPersianDigits(years)} ساله';
    } else {
      persian = '${toPersianDigits(years)} سال و ${toPersianDigits(remainingMonths)} ماهه';
    }
  }
  
  return {
    'ageInDays': ageInDays,
    'ageInMonths': ageInMonths,
    'persian': persian,
  };
}

/// Calculate corrected age for premature babies
/// If gestationalWeeksAtBirth < 37, use corrected age until 24 months
Map<String, dynamic> correctedAgeFromBirthDate(
  DateTime birthDate, {
  int? gestationalWeeksAtBirth,
}) {
  final ageInfo = ageFromBirthDate(birthDate);
  final ageInDays = ageInfo['ageInDays'] as int;
  final ageInMonths = ageInfo['ageInMonths'] as int;
  
  if (gestationalWeeksAtBirth == null || gestationalWeeksAtBirth >= 37) {
    return ageInfo;
  }
  
  // Only apply correction until 24 months (730 days)
  if (ageInDays > 730) {
    return ageInfo;
  }
  
  final weeksEarly = 40 - gestationalWeeksAtBirth;
  final correctedDays = ageInDays - (weeksEarly * 7);
  final correctedMonths = (correctedDays / 30.4375).floor();
  
  if (correctedDays <= 0) {
    return {
      'ageInDays': 0,
      'ageInMonths': 0,
      'persian': 'تازه متولد شده',
      'isCorrected': true,
    };
  }
  
  String persian;
  if (correctedDays < 30) {
    persian = '${toPersianDigits(correctedDays)} روزه (اصلاح شده)';
  } else if (correctedMonths < 24) {
    final remainingDays = correctedDays % 30;
    if (remainingDays == 0) {
      persian = '${toPersianDigits(correctedMonths)} ماهه (اصلاح شده)';
    } else {
      persian = '${toPersianDigits(correctedMonths)} ماه و ${toPersianDigits(remainingDays)} روزه (اصلاح شده)';
    }
  } else {
    final years = (correctedMonths / 12).floor();
    final remainingMonths = correctedMonths % 12;
    if (remainingMonths == 0) {
      persian = '${toPersianDigits(years)} ساله (اصلاح شده)';
    } else {
      persian = '${toPersianDigits(years)} سال و ${toPersianDigits(remainingMonths)} ماهه (اصلاح شده)';
    }
  }
  
  return {
    'ageInDays': correctedDays,
    'ageInMonths': correctedMonths,
    'persian': persian,
    'isCorrected': true,
  };
}

/// Get current Jalali date as DateTime
DateTime getCurrentJalaliDate() {
  return Jalali.now().toDateTime();
}

/// Parse Jalali date string (yyyy/MM/dd) to DateTime
DateTime? parseJalaliDate(String input) {
  try {
    final english = toEnglishDigits(input);
    final parts = english.split('/');
    if (parts.length != 3) return null;
    
    final year = int.parse(parts[0]);
    final month = int.parse(parts[1]);
    final day = int.parse(parts[2]);
    
    final jalali = Jalali(year, month, day);
    return jalali.toDateTime();
  } catch (_) {
    return null;
  }
}
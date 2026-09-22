// features/child/domain/growth/growth_calculator.dart
import 'dart:math';
import 'package:hamrah_madaran/core/utils/persian_utils.dart';

/// WHO LMS data point
class LMSDataPoint {
  final int ageMonths;
  final double L;
  final double M;
  final double S;

  LMSDataPoint({
    required this.ageMonths,
    required this.L,
    required this.M,
    required this.S,
  });

  factory LMSDataPoint.fromJson(Map<String, dynamic> json) => LMSDataPoint(
    ageMonths: json['age'] as int,
    L: (json['L'] as num).toDouble(),
    M: (json['M'] as num).toDouble(),
    S: (json['S'] as num).toDouble(),
  );
}

/// Growth metric types
enum GrowthMetric {
  weightForAge('weight_for_age', 'وزن بر اساس سن', 'kg'),
  lengthForAge('length_for_age', 'قد بر اساس سن', 'cm'),
  heightForAge('height_for_age', 'قد بر اساس سن (وقوف)', 'cm'),
  headCircumferenceForAge('head_circumference_for_age', 'دور سر بر اساس سن', 'cm'),
  weightForLength('weight_for_length', 'وزن بر اساس قد', 'kg');

  const GrowthMetric(this.code, this.farsiName, this.unit);
  final String code;
  final String farsiName;
  final String unit;
}

/// Sex for growth charts
enum GrowthSex { boy, girl }

/// Percentile result
class GrowthPercentileResult {
  final double percentile;
  final String status; // normal, check_with_doctor
  final String statusFarsi;
  final double zScore;
  final GrowthMetric metric;
  final int ageMonths;
  final GrowthSex sex;

  GrowthPercentileResult({
    required this.percentile,
    required this.status,
    required this.statusFarsi,
    required this.zScore,
    required this.metric,
    required this.ageMonths,
    required this.sex,
  });

  /// Get color for status
  String get statusColor {
    switch (status) {
      case 'normal':
        return 'green';
      case 'check_with_doctor':
        return 'orange';
      default:
        return 'grey';
    }
  }
}

/// Growth trend point for charting
class GrowthTrendPoint {
  final DateTime date;
  final double value;
  final double? percentile;

  GrowthTrendPoint({
    required this.date,
    required this.value,
    this.percentile,
  });
}

/// LMS-based growth calculator using WHO standards
class GrowthCalculator {
  /// Load LMS tables from JSON asset
  static Map<String, List<LMSDataPoint>> parseLMSData(Map<String, dynamic> json) {
    final result = <String, List<LMSDataPoint>>{};
    
    final measurements = json['measurements'] as Map<String, dynamic>;
    for (final entry in measurements.entries) {
      final metricCode = entry.key;
      final sexes = entry.value as Map<String, dynamic>;
      
      for (final sexEntry in sexes.entries) {
        final sex = sexEntry.key; // 'boys' or 'girls'
        final dataPoints = (sexEntry.value as List)
            .map((e) => LMSDataPoint.fromJson(e as Map<String, dynamic>))
            .toList();
        result['${metricCode}_$sex'] = dataPoints;
      }
    }
    
    return result;
  }

  /// Calculate percentile from measurement using LMS method
  /// z = ((measurement/M)^L - 1) / (L * S)  (for L != 0)
  /// z = ln(measurement/M) / S            (for L == 0)
  static double _calculateZScore(double measurement, double L, double M, double S) {
    if (L == 0) {
      return log(measurement / M) / S;
    } else {
      return (pow(measurement / M, L) - 1) / (L * S);
    }
  }

  /// Convert z-score to percentile (0-100)
  static double _zScoreToPercentile(double z) {
    // Using standard normal CDF approximation
    // Abramowitz and Stegun approximation
    double cdf(double x) {
      if (x < -8) return 0.0;
      if (x > 8) return 1.0;
      
      double t = 1.0 / (1.0 + 0.2316419 * x.abs());
      double d = 0.3989423 * exp(-x * x / 2.0);
      double prob = d * t * (0.3193815 + t * (-0.3565638 + t * (1.781478 + t * (-1.821256 + t * 1.330274))));
      
      return x > 0 ? 1.0 - prob : prob;
    }
    
    return (cdf(z) * 100).clamp(0.1, 99.9);
  }

  /// Interpolate LMS values for exact age
  static LMSDataPoint _interpolateLMS(List<LMSDataPoint> dataPoints, double ageMonths) {
    if (dataPoints.isEmpty) {
      throw ArgumentError('No LMS data points available');
    }
    
    // Find bracketing points
    LMSDataPoint? lower;
    LMSDataPoint? upper;
    
    for (final point in dataPoints) {
      if (point.ageMonths <= ageMonths) {
        lower = point;
      } else if (upper == null) {
        upper = point;
        break;
      }
    }
    
    // If age is before first point, use first
    if (lower == null) return dataPoints.first;
    // If age is after last point, use last
    if (upper == null) return dataPoints.last;
    // If exact match
    if (lower.ageMonths == upper.ageMonths) return lower;
    
    // Linear interpolation
    final t = (ageMonths - lower.ageMonths) / (upper.ageMonths - lower.ageMonths);
    
    return LMSDataPoint(
      ageMonths: ageMonths.round(),
      L: lower.L + t * (upper.L - lower.L),
      M: lower.M + t * (upper.M - lower.M),
      S: lower.S + t * (upper.S - lower.S),
    );
  }

  /// Calculate growth percentile for a measurement
  static GrowthPercentileResult calculatePercentile({
    required Map<String, List<LMSDataPoint>> lmsData,
    required GrowthMetric metric,
    required GrowthSex sex,
    required int ageMonths,
    required double measurement,
  }) {
    final key = '${metric.code}_${sex == GrowthSex.boy ? 'boys' : 'girls'}';
    final dataPoints = lmsData[key];
    
    if (dataPoints == null || dataPoints.isEmpty) {
      return GrowthPercentileResult(
        percentile: 50,
        status: 'unknown',
        statusFarsi: 'داده در دسترس نیست',
        zScore: 0,
        metric: metric,
        ageMonths: ageMonths,
        sex: sex,
      );
    }
    
    // Interpolate LMS for exact age
    final lms = _interpolateLMS(dataPoints, ageMonths.toDouble());
    
    // Calculate z-score
    final zScore = _calculateZScore(measurement, lms.L, lms.M, lms.S);
    
    // Convert to percentile
    final percentile = _zScoreToPercentile(zScore);
    
    // Determine status
    String status;
    String statusFarsi;
    
    if (percentile >= 3 && percentile <= 97) {
      status = 'normal';
      statusFarsi = 'در محدوده طبیعی';
    } else if (percentile < 3 || percentile > 97) {
      status = 'check_with_doctor';
      if (percentile < 3) {
        statusFarsi = 'کمتر از پرسانتیل ۳ - با پزشک مشورت کنید';
      } else {
        statusFarsi = 'بیش از پرسانتیل ۹۷ - با پزشک مشورت کنید';
      }
    } else {
      status = 'normal';
      statusFarsi = 'در محدوده طبیعی';
    }
    
    return GrowthPercentileResult(
      percentile: percentile,
      status: status,
      statusFarsi: statusFarsi,
      zScore: zScore,
      metric: metric,
      ageMonths: ageMonths,
      sex: sex,
    );
  }

  /// Calculate percentiles for all metrics at once
  static Map<GrowthMetric, GrowthPercentileResult> calculateAllPercentiles({
    required Map<String, List<LMSDataPoint>> lmsData,
    required GrowthSex sex,
    required int ageMonths,
    double? weightKg,
    double? heightCm,
    double? headCircumferenceCm,
  }) {
    final results = <GrowthMetric, GrowthPercentileResult>{};
    
    if (weightKg != null) {
      results[GrowthMetric.weightForAge] = calculatePercentile(
        lmsData: lmsData,
        metric: GrowthMetric.weightForAge,
        sex: sex,
        ageMonths: ageMonths,
        measurement: weightKg,
      );
    }
    
    if (heightCm != null) {
      results[GrowthMetric.lengthForAge] = calculatePercentile(
        lmsData: lmsData,
        metric: GrowthMetric.lengthForAge,
        sex: sex,
        ageMonths: ageMonths,
        measurement: heightCm,
      );
    }
    
    if (headCircumferenceCm != null) {
      results[GrowthMetric.headCircumferenceForAge] = calculatePercentile(
        lmsData: lmsData,
        metric: GrowthMetric.headCircumferenceForAge,
        sex: sex,
        ageMonths: ageMonths,
        measurement: headCircumferenceCm,
      );
    }
    
    return results;
  }
}

/// Corrected age calculator for premature babies
class CorrectedAgeCalculator {
  /// Calculate corrected age in days
  /// If gestationalWeeksAtBirth < 37, subtract weeks early from chronological age
  /// Only apply until 24 months (730 days) chronological age
  static int calculateCorrectedAgeDays({
    required int chronologicalAgeDays,
    int? gestationalWeeksAtBirth,
  }) {
    if (gestationalWeeksAtBirth == null || gestationalWeeksAtBirth >= 37) {
      return chronologicalAgeDays;
    }
    
    // Only correct until 24 months
    if (chronologicalAgeDays > 730) {
      return chronologicalAgeDays;
    }
    
    final weeksEarly = 40 - gestationalWeeksAtBirth;
    final correctedDays = chronologicalAgeDays - (weeksEarly * 7);
    
    return correctedDays > 0 ? correctedDays : 0;
  }

  /// Calculate corrected age in months
  static int calculateCorrectedAgeMonths({
    required int chronologicalAgeDays,
    int? gestationalWeeksAtBirth,
  }) {
    final correctedDays = calculateCorrectedAgeDays(
      chronologicalAgeDays: chronologicalAgeDays,
      gestationalWeeksAtBirth: gestationalWeeksAtBirth,
    );
    
    return (correctedDays / 30.4375).floor();
  }

  /// Check if correction should be applied
  static bool shouldApplyCorrection({
    required int chronologicalAgeDays,
    int? gestationalWeeksAtBirth,
  }) {
    if (gestationalWeeksAtBirth == null || gestationalWeeksAtBirth >= 37) {
      return false;
    }
    return chronologicalAgeDays <= 730;
  }
}

/// Growth trend calculator
class GrowthTrendCalculator {
  /// Calculate growth velocity (per month)
  static double? calculateVelocity(List<GrowthTrendPoint> points) {
    if (points.length < 2) return null;
    
    // Sort by date
    points.sort((a, b) => a.date.compareTo(b.date));
    
    final first = points.first;
    final last = points.last;
    
    final monthsDiff = (last.date.difference(first.date).inDays / 30.4375);
    if (monthsDiff <= 0) return null;
    
    return (last.value - first.value) / monthsDiff;
  }

  /// Calculate trend direction
  static String getTrendDirection(double? velocity) {
    if (velocity == null) return 'insufficient_data';
    if (velocity > 0.1) return 'increasing';
    if (velocity < -0.1) return 'decreasing';
    return 'stable';
  }
}
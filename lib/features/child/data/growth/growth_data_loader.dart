// features/child/data/growth/growth_data_loader.dart
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:hamrah_madaran/core/error/result.dart';
import 'package:hamrah_madaran/features/child/domain/growth/growth_calculator.dart';

/// Loader for WHO growth standards LMS tables
class GrowthDataLoader {
  static const String _assetPath = 'assets/data/growth/who_lms_tables.json';
  static Map<String, List<LMSDataPoint>>? _cachedData;

  /// Load LMS data from asset
  static Future<Result<Map<String, List<LMSDataPoint>>>> loadLMSData() async {
    if (_cachedData != null) {
      return Success(_cachedData!);
    }

    try {
      final jsonString = await rootBundle.loadString(_assetPath);
      final jsonData = jsonDecode(jsonString) as Map<String, dynamic>;
      
      final lmsData = GrowthCalculator.parseLMSData(jsonData);
      _cachedData = lmsData;
      
      return Success(lmsData);
    } catch (e) {
      return Failure(Exception('Failed to load WHO growth data: $e'));
    }
  }

  /// Load LMS data synchronously (for tests)
  static Result<Map<String, List<LMSDataPoint>>> loadLMSDataSync() {
    if (_cachedData != null) {
      return Success(_cachedData!);
    }

    // This is a fallback for testing - in real app would use async version
    return Failure(Exception('Use loadLMSData() async version'));
  }

  /// Clear cache (for testing)
  static void clearCache() {
    _cachedData = null;
  }

  /// Check if data is loaded
  static bool get isLoaded => _cachedData != null;

  /// Get available metrics
  static List<String> getAvailableMetrics() {
    if (_cachedData == null) return [];
    return _cachedData!.keys.toList();
  }
}
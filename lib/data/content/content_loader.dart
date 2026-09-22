// data/content/content_loader.dart
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:dio/dio.dart';
import 'package:hamrah_madaran/core/error/result.dart';

class ContentLoader {
  final Dio _dio;
  
  ContentLoader(this._dio);

  /// Load seeded content bundle from assets
  Future<Result<Map<String, dynamic>>> loadSeededBundle() async {
    try {
      final jsonString = await rootBundle.loadString('assets/content/bundle_v1.json');
      final data = jsonDecode(jsonString) as Map<String, dynamic>;
      return Success(data);
    } catch (e) {
      return Failure(Exception('Failed to load seeded content bundle: $e'));
    }
  }

  /// Fetch remote manifest
  Future<Result<Map<String, dynamic>>> fetchManifest(String baseUrl) async {
    try {
      final response = await _dio.get('$baseUrl/manifest.json');
      if (response.statusCode == 200) {
        return Success(response.data as Map<String, dynamic>);
      }
      return Failure(Exception('Manifest fetch failed: ${response.statusCode}'));
    } catch (e) {
      return Failure(e);
    }
  }

  /// Download content item
  Future<Result<String>> downloadContent(String url) async {
    try {
      final response = await _dio.get<String>(url);
      if (response.statusCode == 200) {
        return Success(response.data!);
      }
      return Failure(Exception('Content download failed: ${response.statusCode}'));
    } catch (e) {
      return Failure(e);
    }
  }

  /// Validate content structure
  Result<void> validateContent(Map<String, dynamic> content) {
    // Basic validation - in production, use JSON schema validation
    if (!content.containsKey('items')) {
      return Failure(Exception('Content missing items array'));
    }
    
    final items = content['items'] as List?;
    if (items == null) {
      return Failure(Exception('Items is not a list'));
    }
    
    for (final item in items) {
      if (item is! Map<String, dynamic>) {
        return Failure(Exception('Item is not a map'));
      }
      
      // Check required fields
      if (!item.containsKey('id') || !item.containsKey('type') || !item.containsKey('title')) {
        return Failure(Exception('Item missing required fields'));
      }
    }
    
    return const Success(null);
  }
}
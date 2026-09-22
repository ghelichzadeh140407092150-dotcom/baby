// data/remote/api_client.dart
import 'package:dio/dio.dart';
import 'package:hamrah_madaran/core/error/result.dart';

class ApiClient {
  final Dio _dio;

  ApiClient(this._dio);

  /// Generic GET request
  Future<Result<T>> get<T>(String path, {Map<String, dynamic>? queryParams}) async {
    try {
      final response = await _dio.get(path, queryParameters: queryParams);
      if (response.statusCode == 200) {
        return Success(response.data as T);
      }
      return Failure(Exception('Request failed: ${response.statusCode}'));
    } catch (e) {
      return Failure(e);
    }
  }

  /// Generic POST request
  Future<Result<T>> post<T>(String path, {dynamic data}) async {
    try {
      final response = await _dio.post(path, data: data);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Success(response.data as T);
      }
      return Failure(Exception('Request failed: ${response.statusCode}'));
    } catch (e) {
      return Failure(e);
    }
  }
}
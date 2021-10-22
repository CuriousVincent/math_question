import 'package:dio/dio.dart';

class ApiClient {
  static final ApiClient _apiClient = ApiClient._internal();

  factory ApiClient() {
    return _apiClient;
  }
  late Dio _dio;

  ApiClient._internal() {
    _dio = Dio();
  }

  void setBaseUrl(String baseUrl) => _dio.options.baseUrl = baseUrl;

  Future<Response> request(String endpoint) async {
    return await _dio.get(endpoint);
  }
}

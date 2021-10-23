import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:math_question/api/api_client.dart';

@lazySingleton
class QuestionService {
  final ApiClient apiClient;

  QuestionService({required this.apiClient});

  Future<Response> getQuestions() async {
    final response = await apiClient.request("/getQuestions");
    return response;
  }

  Future<Response> summitQuestions() async {
    final response = await apiClient.request("/summitQuestions");
    return response;
  }
}
